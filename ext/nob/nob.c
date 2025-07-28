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
void build_bribasa(Cmd *cmd, Procs *procs);
void build_epos_tool(Cmd *cmd, Procs *procs);
void build_gbagfx(Cmd *cmd, Procs *procs);
void build_c_tool(Cmd *cmd, Procs *procs, const char *tool_name);
void build_cpp_tool(Cmd *cmd, Procs *procs, const char *tool_name);
bool tool_rebuild_needed(const char *toolExePath, ...);
bool tool_rebuild_needed_2(const char *toolExePath, Nob_File_Paths *source_paths, Nob_File_Paths *header_paths);
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

void log_nob_temp_size(void)
{
    nob_log(INFO, "nob_temp_size: 0x%X/0x%X (~%.2f%%)\n",
        (int)nob_temp_size, NOB_TEMP_CAPACITY, ((float)nob_temp_size / (float)NOB_TEMP_CAPACITY));
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

void build_tools_if_outdated(void)
{
    Cmd cmd = {0};
    Procs procs = {0};
    
    Nob_File_Paths toolDirs = {0};

    build_c_tool(&cmd, &procs, "aif2pcm");
    build_c_tool(&cmd, &procs, "bin2c");

    build_bribasa(&cmd, &procs);

    build_epos_tool(&cmd, &procs);
    
    build_c_tool(&cmd, &procs, "gbafix");
    
    build_gbagfx(&cmd, &procs);

    build_cpp_tool(&cmd, &procs, "mid2agb");
    build_cpp_tool(&cmd, &procs, "preproc");
    build_cpp_tool(&cmd, &procs, "scaninc");
    
    if(procs.count > 0) {
        // Wait on all the async processes to finish
        nob_log(INFO, "Waiting on %d tools to be built...\n", (int)procs.count);
        if (!procs_wait_and_reset(&procs)) {
            nob_log(ERROR, "Error building tools");
            return;
        }
    } else {
        nob_log(INFO, "Tools are up-to-date.\n");
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

// TODO: replace "tool_rebuild_needed" with this
bool tool_rebuild_needed_2(const char *toolExePath, Nob_File_Paths *source_paths, Nob_File_Paths *header_paths)
{
    Nob_File_Paths dummySources = {0};
    Nob_File_Paths dummyHeaders = {0};

    if(!source_paths) source_paths = &dummySources;
    if(!header_paths) header_paths = &dummyHeaders;

    int rebuild_is_needed = nob_needs_rebuild(toolExePath, source_paths->items, source_paths->count);
    if (rebuild_is_needed < 0) exit(-3); // error

    int rebuild_is_needed_2 = nob_needs_rebuild(toolExePath, header_paths->items, header_paths->count);
    if (rebuild_is_needed_2 < 0) exit(-4); // error

    return (rebuild_is_needed | rebuild_is_needed_2);
}

void build_tool(Cmd *cmd, Procs *procs, const char *tool_name, const char *code_file_ext);
void build_c_tool(Cmd *cmd, Procs *procs, const char *tool_name)
{
    build_tool(cmd, procs, tool_name, ".c");
}

void build_cpp_tool(Cmd *cmd, Procs *procs, const char *tool_name)
{
    build_tool(cmd, procs, tool_name, ".cpp");
}

void build_tool(Cmd *cmd, Procs *procs, const char *tool_name, const char *code_file_ext)
{
    Nob_File_Paths all_files    = {0};
    Nob_File_Paths source_paths = {0};
    Nob_File_Paths header_paths = {0};
    const char *toolDir     = temp_sprintf(TOOLS_DIR"%s/", tool_name);
    const char *toolExePath = temp_sprintf("%s"EXE, tool_name);
    
    const char *prevDir = nob_get_current_dir_temp();
    nob_set_current_dir(toolDir);
    
    if(nob_read_entire_dir(".", &all_files)) {
        for(int i = 0; i < all_files.count; i++)
        {
            const char *currFile = all_files.items[i];
            if(nob_sv_end_with(nob_sv_from_cstr(currFile), code_file_ext)) {
                nob_da_append(&source_paths, currFile);
            } else if(nob_sv_end_with(nob_sv_from_cstr(currFile), ".h")){
                nob_da_append(&header_paths, currFile);
            }
        }

        if(tool_rebuild_needed_2(toolExePath, &source_paths, &header_paths)) {
            if(!strcmp(".cpp", code_file_ext)) {
                nob_cxx(cmd);
                nob_cc_tools_flags_cplusplus_2(cmd, tool_name);
            } else {
                nob_cc(cmd);
                nob_cc_tools_flags_c_2(cmd, tool_name);
            }

            for(int i = 0; i < source_paths.count; i++) {
                nob_cc_inputs(cmd, source_paths.items[i]);
            }

            nob_cc_output(cmd, toolExePath);
            da_append(procs, cmd_run_async_and_reset(cmd));
        }
    } else {
        nob_log(ERROR, "Failed to load '%s'", toolDir);
    }

    nob_set_current_dir(prevDir);
}

// Only builds after success of build_shared_libs()!
void build_epos_tool(Cmd *cmd, Procs *procs)
{
    Nob_File_Paths all_files    = {0};
    Nob_File_Paths source_paths = {0};
    Nob_File_Paths header_paths = {0};

    const char *tool_name              = "entity_positions";
    const char *libdir_arena_alloc     = "../_shared/arena_alloc/";
    const char *libdir_c_header_parser = "../_shared/c_header_parser/";
    const char *libdir_csv_conv        = "../_shared/csv_conv/";
    
    const char *toolDir     = temp_sprintf(TOOLS_DIR"%s/", tool_name);
    const char *toolExePath = temp_sprintf("%s"EXE, tool_name);

    const char *prevDir = nob_get_current_dir_temp();
    nob_set_current_dir(toolDir);
        
    if(nob_read_entire_dir(".", &all_files)) {
        for(int i = 0; i < all_files.count; i++) {
            const char *currFile = all_files.items[i];
            if(nob_sv_end_with(nob_sv_from_cstr(currFile), ".c")) {
                nob_da_append(&source_paths, currFile);
            } else if(nob_sv_end_with(nob_sv_from_cstr(currFile), ".h")){
                nob_da_append(&header_paths, currFile);
            }
        }
        
        if(tool_rebuild_needed_2(toolExePath, &source_paths, &header_paths)) {
            nob_cc(cmd);
            nob_cc_tools_flags_c_2(cmd, entity_positions);
            
            for(int i = 0; i < source_paths.count; i++) {
                nob_cc_inputs(cmd, source_paths.items[i]);
            }

#if defined(_WIN32) || defined(_MSC_VER)
#else
            // Needs to use -std-gnu11 to use MAP_ANONYMOUS in mmap call in arena_alloc
            nob_cmd_append(cmd, 
                "-std=gnu11",
                "-Wno-error=sign-compare",
                "-Wno-error=implicit-function-declaration",
                "-Wno-error=unused-parameter",
                "-Wno-error=unused-variable");
#endif
            nob_cc_output(cmd, toolExePath);
            
            nob_cmd_append(cmd,
                "-I", libdir_arena_alloc,
                "-I", libdir_c_header_parser,
                "-I", libdir_csv_conv,
                );

#if defined(_WIN32) || defined(_MSC_VER)
            nob_cmd_append(cmd,
                "/link",
                "/LIBPATH", nob_temp_sprintf("%s%s", libdir_arena_alloc, LIB_FILENAME(arena_alloc)),
                "/LIBPATH", nob_temp_sprintf("%s%s", libdir_c_header_parser, LIB_FILENAME(c_header_parser)),
                "/LIBPATH", nob_temp_sprintf("%s%s", libdir_csv_conv, LIB_FILENAME(csv_conv)),
            );
#else
            nob_cmd_append(cmd,
                "-L", libdir_arena_alloc,
                "-L", libdir_c_header_parser,
                "-L", libdir_csv_conv,
                "-lcsv_conv",
                "-lc_header_parser",
                "-larena_alloc"
            );
#endif

            da_append(procs, cmd_run_async_and_reset(cmd));
        }
    }

    nob_set_current_dir(prevDir);
}

/*
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
*/

void build_bribasa(Cmd *cmd, Procs *procs)
{
    // TODO: Build using build_c_tool()!
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
            nob_cmd_append(cmd, "build.bat");
#else
            nob_cmd_append(cmd, "make");
#endif
        }
        da_append(procs, cmd_run_async_and_reset(cmd));
        nob_set_current_dir(baseDir);
    }
}

void build_gbagfx(Cmd *cmd, Procs *procs)
{
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
        nob_cc(cmd);
#if !defined(_WIN32) && !defined(_MSC_VER)
        nob_cmd_append(cmd, "-Wextra");
        nob_cmd_append(cmd, "-Wno-sign-compare");
#endif
        nob_cmd_append(cmd, "-DPNG_SKIP_SETJMP_CHECK");
            
        nob_cc_tools_flags_c(cmd, gbagfx);
            
        if(buildDebugVer) {
            nob_cmd_append(cmd, "-DDEBUG");
        }

        nob_cc_inputs(cmd,
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
            
        nob_cc_output(cmd, toolExePath);

#if defined(_WIN32) || defined(_MSC_VER)
        nob_cmd_append(cmd, "/I", "C:\\Code\\Libraries\\libpng\\include");
        nob_cmd_append(cmd, "/I", "C:\\Code\\Libraries\\zlib\\include");
            
        nob_cmd_append(cmd, "/link");

        // Temporary(?) MSVC linker fix, because of zlib conflicts.
        // Not a fix:   nob_cmd_append(cmd, "/NODEFAULTLIB:libucrt.lib");
        nob_cmd_append(cmd, "/ignore:4098,4217");


        nob_cmd_append(cmd, "-LIBPATH", LIBPNG_LIB_DIR "libpng16.lib");
        nob_cmd_append(cmd, "-LIBPATH", ZLIB_LIB_DIR   "zlibstatic.lib");
#else
        // TODO: Find a way to get the result of pkg-config
        nob_cmd_append(cmd, "-I/usr/include/libpng16");
        nob_cmd_append(cmd, "-lpng", "-lz");
#endif

        da_append(procs, cmd_run_async_and_reset(cmd));     
    }    
}
