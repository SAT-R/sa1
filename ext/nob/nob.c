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

#define BUILD_C_TOOL(_name, ...)                                    \
    {                                                               \
        const char *toolExePath = TOOLS_DIR #_name"/"#_name EXE;     \
                                                                    \
        if (tool_rebuild_needed(toolExePath, __VA_ARGS__, NULL)) {          \
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
        if (tool_rebuild_needed(toolExePath, __VA_ARGS__, NULL)) {        \
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
bool tool_rebuild_needed(const char *toolExePath, ...);
void set_obj_dir(Cmd *cmd, char *path);
void log_nob_temp_size(void);

int main(int argc, char **argv)
{
    NOB_GO_REBUILD_URSELF(argc, argv);
    
    if (!mkdir_if_not_exists(BUILD_DIR)) return -1;

    // if (platform == gba) acquire_and_install_agbcc();

    build_tools_if_outdated();

    log_nob_temp_size();
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

    { /* BriBaSA_ex */
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

#if 01
    // TODO
    { /* gbagfx */
        nob_log(WARNING, "TODO: build gbagfx");
    }
#endif
    
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