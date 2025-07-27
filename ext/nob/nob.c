#define NOB_IMPLEMENTATION
#define NOB_STRIP_PREFIX
#include <stdbool.h>
#include "nob.h"
#include "dirs.h"

/* WIP Build program for the Sonic Advance games, using nob.h */

#if defined(_WIN32) || defined(_MSC_VER)
#define EXE ".exe"
#else
#define EXE ""
#endif

#if defined(_WIN32) || defined(_MSC_VER)
#define LIB_FILENAME(_name) #_name".lib"
#define OBJ_FILENAME(_name) #_name".obj"
#define LINK_LIBRARY(cmd, _name, _path, ...) nob_cmd_append(cmd, "lib.exe", __VA_ARGS__, "/OUT:"_path LIB_FILENAME(_name))
#else
#define LIB_FILENAME(_name) "lib"#_name".a"
#define OBJ_FILENAME(_name) #_name".o"
#define LINK_LIBRARY(cmd, _name, _path, ...) nob_cmd_append(cmd,  "ar", "-rcs", _path LIB_FILENAME(_name), __VA_ARGS__)
#endif

#define BUILD_C_TOOL(_name, ...)                                    \
    {                                                               \
        const char *toolExePath = TOOLS_DIR #_name"/"#_name EXE;    \
                                                                    \
        if (tool_rebuild_needed(toolExePath, __VA_ARGS__, NULL)) {  \
            nob_cc(&cmd);                                           \
            nob_cc_tools_flags_c(&cmd, _name);                      \
            nob_cc_inputs(&cmd,                                     \
                __VA_ARGS__                                         \
            );                                                      \
            nob_cc_output(&cmd, toolExePath);                       \
            da_append(&procs, cmd_run_async_and_reset(&cmd));       \
        }                                                           \
    }

#define BUILD_CPP_TOOL(_name, ...)                                  \
    {                                                               \
        const char *toolExePath = TOOLS_DIR #_name"/"#_name EXE;    \
                                                                    \
        if (tool_rebuild_needed(toolExePath, __VA_ARGS__, NULL)) {  \
            nob_cxx(&cmd);                                          \
            nob_cc_tools_flags_cplusplus(&cmd, _name);              \
            nob_cc_inputs(&cmd,                                     \
                __VA_ARGS__                                         \
            );                                                      \
            nob_cc_output(&cmd, toolExePath);                       \
            da_append(&procs, cmd_run_async_and_reset(&cmd));       \
        }                                                           \
    }

/* Our nob.c implementation using the nob.h library 

   This aims to build the entire project without external build languages.

   Order should be:

   1) Build tools  (if outdated)
   2) Build assets (if outdated)
   3) Build game for the desired target.

*/

void build_tools_if_outdated(void);
void link_shared_libs(void);
void build_shared_libs(void);
bool tool_rebuild_needed(const char *toolExePath, ...);
void set_obj_dir(Cmd *cmd, char *path);
void log_nob_temp_size(void);

int main(int argc, char **argv)
{
    NOB_GO_REBUILD_URSELF(argc, argv);
    
    if (!mkdir_if_not_exists(BUILD_DIR)) return -1;

    // if (platform == gba) acquire_and_install_agbcc();

    build_shared_libs();
    build_tools_if_outdated();

    log_nob_temp_size();
}

void link_shared_libs(void)
{
    Cmd cmd = {0};
    Procs procs = {0};

    {
        #undef  LOCAL_LIB_DIR
        #define LOCAL_LIB_DIR TOOLS_DIR"_shared/arena_alloc/"
        LINK_LIBRARY(&cmd, arena_alloc, LOCAL_LIB_DIR,
            LOCAL_LIB_DIR OBJ_FILENAME(ArenaAlloc));
        da_append(&procs, cmd_run_async_and_reset(&cmd));
    }
    

    {
        #undef  LOCAL_LIB_DIR
        #define LOCAL_LIB_DIR TOOLS_DIR"_shared/c_header_parser/"
        LINK_LIBRARY(&cmd, c_header_parser, LOCAL_LIB_DIR,
            LOCAL_LIB_DIR OBJ_FILENAME(parser));
        da_append(&procs, cmd_run_async_and_reset(&cmd));
    }
    

    {
        #undef  LOCAL_LIB_DIR
        #define LOCAL_LIB_DIR TOOLS_DIR"_shared/csv_conv/"
        LINK_LIBRARY(&cmd, csv_conv, LOCAL_LIB_DIR, LOCAL_LIB_DIR OBJ_FILENAME(csv_conv));
        da_append(&procs, cmd_run_async_and_reset(&cmd));
    }
    
    // Wait on all the async processes to finish
    nob_log(INFO, "Waiting on all shared libs to be linked...\n");
    if (!procs_wait_and_reset(&procs)) {
        nob_log(ERROR, "Error linking shared libs");
        return;
    }
}

void build_shared_libs(void)
{
    Cmd cmd = {0};
    Procs procs = {0};
    
    bool rebuild_was_needed = false;

    {
        #undef  LOCAL_LIB_DIR
        #define LOCAL_LIB_DIR TOOLS_DIR"_shared/arena_alloc/"
        const char *libPath = LOCAL_LIB_DIR LIB_FILENAME(arena_alloc);

        if (tool_rebuild_needed(libPath,
            LOCAL_LIB_DIR"ArenaAlloc.c", 
            LOCAL_LIB_DIR"ArenaAlloc.h", 
            NULL))
        {          
            nob_cc(&cmd);                                               
            nob_cc_inputs(&cmd,
                LOCAL_LIB_DIR"ArenaAlloc.c"
            );
#if defined(_WIN32) || defined(_MSC_VER)
            nob_cmd_append(&cmd, "/O2", "/c", "/EHsc");
            nob_cmd_append(&cmd, "/Fo" LOCAL_LIB_DIR);
#else
            nob_cmd_append(&cmd, "-O2", "-static", "-c");
            nob_cmd_append(&cmd, "-o", LOCAL_LIB_DIR OBJ_FILENAME(ArenaAlloc));
#endif
            da_append(&procs, cmd_run_async_and_reset(&cmd));

            rebuild_was_needed = true;
        }
    }
    
    {
        #undef  LOCAL_LIB_DIR
        #define LOCAL_LIB_DIR TOOLS_DIR"_shared/c_header_parser/"
        const char *libPath = LOCAL_LIB_DIR LIB_FILENAME(c_header_parser);

        if (tool_rebuild_needed(libPath,
            LOCAL_LIB_DIR "parser.c",
            LOCAL_LIB_DIR "parser.h",
            NULL))
        {          
            nob_cc(&cmd);                                               
            nob_cc_inputs(&cmd,
                LOCAL_LIB_DIR "parser.c"
            );
            
            /* c_header_parser depends on: */
            // arena_alloc
            nob_cmd_append(&cmd, "-I", TOOLS_DIR"_shared/arena_alloc");

#if defined(_WIN32) || defined(_MSC_VER)
            nob_cmd_append(&cmd, "/O2", "/c", "/EHsc");
            nob_cmd_append(&cmd, "/Fo" LOCAL_LIB_DIR);
#else
            nob_cmd_append(&cmd, "-O2", "-static", "-c", "-std=gnu11");            
            nob_cmd_append(&cmd, "-o", LOCAL_LIB_DIR OBJ_FILENAME(parser));
#endif
            da_append(&procs, cmd_run_async_and_reset(&cmd));
            
            rebuild_was_needed = true;
        }
    }

    {
        #undef  LOCAL_LIB_DIR
        #define LOCAL_LIB_DIR TOOLS_DIR"_shared/csv_conv/"
        const char *libPath = LOCAL_LIB_DIR LIB_FILENAME(csv_conv);

        if (tool_rebuild_needed(libPath,
            LOCAL_LIB_DIR "csv_conv.c",
            LOCAL_LIB_DIR "csv_conv.h",
            NULL))
        {          
            nob_cc(&cmd);                                               
            nob_cc_inputs(&cmd,
                LOCAL_LIB_DIR "csv_conv.c"
            );
#if defined(_WIN32) || defined(_MSC_VER)
            nob_cmd_append(&cmd, "/O2", "/c", "/EHsc");
            nob_cmd_append(&cmd, "/Fo" LOCAL_LIB_DIR);
#else
            nob_cmd_append(&cmd, "-O2", "-static", "-c", "-std=gnu11");
            nob_cmd_append(&cmd, "-Wall", "-Wextra", "-Werror");
            nob_cmd_append(&cmd, "-Wno-unused-parameter", "-Wno-unused-variable");
            nob_cmd_append(&cmd, "-o", LOCAL_LIB_DIR OBJ_FILENAME(csv_conv));
#endif
            da_append(&procs, cmd_run_async_and_reset(&cmd));
            
            rebuild_was_needed = true;
        }
    }
    
    if(rebuild_was_needed) {
        // Wait on all the async processes to finish
        nob_log(INFO, "Waiting on all shared libs to be built...\n");
        if (!procs_wait_and_reset(&procs)) {
            nob_log(ERROR, "Error building shared libs");
            return;
        }
    
        link_shared_libs();
    } else {
        nob_log(INFO, "Shared tool libraries are up-to-date.\n");
    }
}

void build_tools_if_outdated(void)
{
    Cmd cmd = {0};
    Procs procs = {0};
    
    Nob_File_Paths toolDirs = {0};

    /* aif2pcm */
    BUILD_C_TOOL(aif2pcm, 
        TOOLS_DIR "aif2pcm/main.c",
        TOOLS_DIR "aif2pcm/extended.c");

    /* bin2c */
    BUILD_C_TOOL(bin2c, 
        TOOLS_DIR "bin2c/bin2c.c");

    /* BriBaSA_ex */
    if(tool_rebuild_needed(TOOLS_DIR "BriBaSA_ex/BriBaSA_ex" EXE,
        TOOLS_DIR "BriBaSA_ex/src/main.c",
        TOOLS_DIR "BriBaSA_ex/src/drawing.c",
        TOOLS_DIR "BriBaSA_ex/src/file_paths.c",
        TOOLS_DIR "BriBaSA_ex/src/parsing.c",
        TOOLS_DIR "BriBaSA_ex/src/save.c",
        TOOLS_DIR "BriBaSA_ex/src/texture.c",
        TOOLS_DIR "BriBaSA_ex/src/ui.c",
        NULL))
    {
        const char *baseDir = get_current_dir_temp();
        if(nob_set_current_dir("./tools/BriBaSA_ex"))
        {
#ifdef _MSC_VER
            nob_cmd_append(&cmd, "build.bat");
#else
            nob_cmd_append(&cmd, "make");
#endif
        }
        da_append(&procs, cmd_run_async_and_reset(&cmd));
        nob_set_current_dir(baseDir);
    }
    
#if 01
    // TODO
    { /* Entitiy positions */
        nob_log(WARNING, "TODO: build entity_positions");


    }
#endif
    
    /* gbafix */
    BUILD_C_TOOL(gbafix, 
        TOOLS_DIR "gbafix/gbafix.c");
    
    { /* gbagfx */
        bool buildDebugVer = !true;

        const char *toolExePath = (buildDebugVer)
            ? TOOLS_DIR "gbagfx/gbagfx-debug"EXE  
            : TOOLS_DIR "gbagfx/gbagfx"EXE;  
                                            
        if (tool_rebuild_needed(toolExePath, 
                TOOLS_DIR "gbagfx/main.c",
                TOOLS_DIR "gbagfx/convert_png.c",
                TOOLS_DIR "gbagfx/font.c",
                TOOLS_DIR "gbagfx/gfx.c",
                TOOLS_DIR "gbagfx/huff.c",
                TOOLS_DIR "gbagfx/jasc_pal.c",
                TOOLS_DIR "gbagfx/lz.c",
                TOOLS_DIR "gbagfx/rl.c",
                TOOLS_DIR "gbagfx/util.c",
                TOOLS_DIR "gbagfx/global.h",
                TOOLS_DIR "gbagfx/convert_png.h",
                TOOLS_DIR "gbagfx/font.h",
                TOOLS_DIR "gbagfx/gfx.h",
                TOOLS_DIR "gbagfx/huff.h",
                TOOLS_DIR "gbagfx/jasc_pal.h",
                TOOLS_DIR "gbagfx/lz.h",
                TOOLS_DIR "gbagfx/rl.h",
                TOOLS_DIR "gbagfx/util.h",
                NULL))
        {
            nob_cc(&cmd);
#if !defined(_WIN32) && !defined(_MSC_VER)
            nob_cmd_append(&cmd, "-Wextra");
            nob_cmd_append(&cmd, "-Wno-sign-compare");
#endif
            nob_cmd_append(&cmd, "-DPNG_SKIP_SETJMP_CHECK");
            
            nob_cc_tools_flags_c(&cmd, gbagfx);
            
            if(buildDebugVer) {
                nob_cmd_append(&cmd, "-DDEBUG");
            }

            nob_cc_inputs(&cmd,
                TOOLS_DIR "gbagfx/main.c",
                TOOLS_DIR "gbagfx/convert_png.c",
                TOOLS_DIR "gbagfx/font.c",
                TOOLS_DIR "gbagfx/gfx.c",
                TOOLS_DIR "gbagfx/huff.c",
                TOOLS_DIR "gbagfx/jasc_pal.c",
                TOOLS_DIR "gbagfx/lz.c",
                TOOLS_DIR "gbagfx/rl.c",
                TOOLS_DIR "gbagfx/util.c"
            );
            
            nob_cc_output(&cmd, toolExePath);

#if defined(_WIN32) || defined(_MSC_VER)
            nob_cmd_append(&cmd, "/I", "C:\\Code\\Libraries\\libpng\\include");
            nob_cmd_append(&cmd, "/I", "C:\\Code\\Libraries\\zlib\\include");
            
            nob_cmd_append(&cmd, "/link");

            // Temporary(?) MSVC linker fix, because of zlib conflicts.
            // Not a fix:   nob_cmd_append(&cmd, "/NODEFAULTLIB:libucrt.lib");
            nob_cmd_append(&cmd, "/ignore:4098,4217");


            nob_cmd_append(&cmd, "-LIBPATH", LIBPNG_LIB_DIR "libpng16.lib");
            nob_cmd_append(&cmd, "-LIBPATH", ZLIB_LIB_DIR   "zlibstatic.lib");
#else
            // TODO: Find a way to get the result of pkg-config
            nob_cmd_append(&cmd, "-I/usr/include/libpng16");
            nob_cmd_append(&cmd, "-lpng", "-lz");
#endif

            da_append(&procs, cmd_run_async_and_reset(&cmd));     
        }    
    }
    
    /* mid2agb */
    BUILD_CPP_TOOL(mid2agb, 
        TOOLS_DIR "mid2agb/main.cpp",
        TOOLS_DIR "mid2agb/agb.cpp",
        TOOLS_DIR "mid2agb/midi.cpp",
        TOOLS_DIR "mid2agb/tables.cpp",
        TOOLS_DIR "mid2agb/error.cpp");

    /* preproc */
    BUILD_CPP_TOOL(preproc,
        TOOLS_DIR "preproc/asm_file.cpp",
        TOOLS_DIR "preproc/c_file.cpp",
        TOOLS_DIR "preproc/charmap.cpp",
        TOOLS_DIR "preproc/preproc.cpp",
        TOOLS_DIR "preproc/string_parser.cpp",
        TOOLS_DIR "preproc/utf8.cpp");    
    
    /* scaninc */
    BUILD_CPP_TOOL(scaninc,
        TOOLS_DIR "scaninc/asm_file.cpp",
        TOOLS_DIR "scaninc/c_file.cpp",
        TOOLS_DIR "scaninc/scaninc.cpp",
        TOOLS_DIR "scaninc/source_file.cpp");
    
    // Wait on all the async processes to finish
    nob_log(INFO, "Waiting on all tools to be built...");
    if (!procs_wait_and_reset(&procs)) {
        nob_log(ERROR, "Error building tools");
        return;
    }
}

bool tool_rebuild_needed(const char *toolExePath, ...)
{
    Nob_File_Paths source_paths = {0};
    va_list args;
    va_start(args, toolExePath);
    for (;;) {
        const char *path = va_arg(args, const char*);
        if (path == NULL) break;
        nob_da_append(&source_paths, path);
    }
    va_end(args);

    int rebuild_is_needed = nob_needs_rebuild(toolExePath, source_paths.items, source_paths.count);
    if (rebuild_is_needed < 0) exit(-3); // error
    if (!rebuild_is_needed) {           // no rebuild is needed
        NOB_FREE(source_paths.items);
        return false;
    }

    return true;
}

void log_nob_temp_size(void)
{
    nob_log(INFO, "nob_temp_size: 0x%X/0x%X (~%.2f%%)\n",
        (int)nob_temp_size, NOB_TEMP_CAPACITY, ((float)nob_temp_size / (float)NOB_TEMP_CAPACITY));

}