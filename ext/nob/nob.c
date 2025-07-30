#define NOB_IMPLEMENTATION
#define NOB_STRIP_PREFIX
#include <stdbool.h>
#include "nob.h"
#include "dirs.h"

/* WIP Build program for the Sonic Advance games, using nob.h by Tsoding, with some modifications. */

#if defined(_MSC_VER)
#if defined(__x86_64__) || defined(__i386) || defined(_M_IX86) || defined(_M_X64)
#include <intrin.h>
#define GET_HIGH_RES_TIMER() __rdtsc()
#else
#define GET_HIGH_RES_TIMER() 0
#endif
#else // Not Windows
#if defined(__x86_64__) || defined(__i386)
#include <x86intrin.h>
#define GET_HIGH_RES_TIMER() __rdtsc()
#else
#warning "WARNING: This CPU-arch needs to have an equivalent to __rdtsc() implemented to measure time correctly."
#define GET_HIGH_RES_TIMER() 0
#endif
#endif

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

typedef enum {
    PLATFORM_NONE         = 0,
    PLATFORM_GBA          = 1,
    PLATFORM_SDL          = 2,
    PLATFORM_SDL_WIN32    = 3, // might be redundant?
    PLATFORM_WIN32        = 4,
    PLATFORM_LINUX        = 5,
    PLATFORM_MAC_OS       = 6,

    PLATFORM_COUNT
} EPlatform;

typedef enum {
    ARCH_NONE = 0,
    ARCH_ARM  = 1,
    ARCH_X86  = 2,

    ARCH_COUNT
} EArchitecture;

typedef enum {
    GAME_NONE  = 0,
    GAME_SA1   = 1,
    GAME_SA2   = 2,
    GAME_SA3   = 3,
    GAME_KATAM = 4,

    GAME_COUNT
} EGame;

// NOTE: Not recommended to add entries to this enum.
//       It's mainly used so that arrays using VERSION_COUNT don't get a magic num.
//       If you do change it, make sure those arrays don't use build_params.debug_target as array index!
typedef enum {
    VERSION_RELEASE = 0,
    VERSION_DEBUG   = 1,

    VERSION_COUNT
} EVersion;

const char *platform_idents[PLATFORM_COUNT] = {
    [PLATFORM_NONE]      = "none",
    [PLATFORM_GBA]       = "gba",
    [PLATFORM_SDL]       = "sdl",
    [PLATFORM_SDL_WIN32] = "sdl_win32",
    [PLATFORM_WIN32]     = "win32",
    [PLATFORM_LINUX]     = "linux",
    [PLATFORM_MAC_OS]    = "mac_os",
};

const char *arch_idents[ARCH_COUNT] = {
    [ARCH_NONE] = "none",
    [ARCH_ARM]  = "arm",
    [ARCH_X86]  = "x86",
};

// "BUILD_NAME" in Makefile
const char *game_idents[GAME_COUNT][VERSION_COUNT] = {
    [GAME_NONE]  = {"none", "none"},
    [GAME_SA1]   = {"sa1",  "sa1_debug"},
    [GAME_SA2]   = {"sa2",  "sa2_debug"},
    [GAME_SA3]   = {"sa3",  "sa3_debug"},

    // NOTE(Jace): Not used at all, just taken from config.h, which was itself from my animation extraction tool.
    [GAME_KATAM] = {"katam", "katam_debug"}, 
};

#define TOOL_MID2AGB "tools/mid2agb/mid2agb"EXE

typedef struct Parameters {
    unsigned int target_platform  : 4;
    unsigned int target_cpu_arch  : 4;
    unsigned int target_game      : 3;
    unsigned int target_is_64bit  : 1;
    unsigned int match_target     : 1; // GBA-only
    unsigned int debug_target     : 1;
    unsigned int debug_tools      : 1;
    unsigned int only_build_tools : 1;
    const char *build_dir;
} Parameters;

void build_tools(const Parameters build_params);
void link_shared_libs(const Parameters build_params);
void build_shared_libs(const Parameters build_params);
void build_bribasa(Cmd *cmd, Procs *procs);
void build_epos_tool(Cmd *cmd, Procs *procs);
void build_gbagfx(Cmd *cmd, Procs *procs, const Parameters build_params);
void build_c_tool(Cmd *cmd, Procs *procs, const char *tool_name);
void build_cpp_tool(Cmd *cmd, Procs *procs, const char *tool_name);
void build_game_assets(const Parameters build_params);
void build_sound_data(const Parameters build_params);
void build_songs(const Parameters build_params);
void build_game_code(const Parameters build_params);
bool tool_rebuild_needed(const char *toolExePath, ...);
bool tool_rebuild_needed_2(const char *toolExePath, Nob_File_Paths *source_paths, Nob_File_Paths *header_paths);
void set_obj_dir(Cmd *cmd, char *path);
void log_nob_temp_size(void);
char *replace_extension_temp(const char *file_path, const char *ext);

Parameters parse_program_parameters(int *argc, char ***argv);

int main(int argc, char **argv)
{
    long long ts_build_start,       ts_build_end;
    long long ts_param_parse_start, ts_param_parse_end;
    long long ts_shared_libs_start, ts_shared_libs_end;
    long long ts_tools_start,       ts_tools_end;
    long long ts_game_assets_start, ts_game_assets_end;
    long long ts_game_code_start,   ts_game_code_end;

    NOB_GO_REBUILD_URSELF(argc, argv);
    
    const char *binary_path = nob_shift(argv, argc);

    if (!mkdir_if_not_exists(BUILD_DIR)) return -1;


    ts_build_start = ts_param_parse_start = GET_HIGH_RES_TIMER();
    const Parameters build_params = parse_program_parameters(&argc, &argv); 
    ts_param_parse_end = GET_HIGH_RES_TIMER();
    
    if(!build_params.only_build_tools && build_params.target_platform == PLATFORM_NONE) {
        nob_log(ERROR,  "No target platform was set.\n"
                        "        Please set it by calling 'nob"EXE" -target <arg>'\n"
                        "        and replacing '<arg>' (without <>) with one of the following:");

        for(int platform_id = PLATFORM_NONE+1; platform_id < PLATFORM_COUNT; platform_id++)
        {
            printf("        - %s \n", platform_idents[platform_id]);
        }

        return -1;
    }
    
    ts_shared_libs_start = GET_HIGH_RES_TIMER();
    build_shared_libs(build_params);
    ts_tools_start = ts_shared_libs_end = GET_HIGH_RES_TIMER();
    build_tools(build_params);
    ts_tools_end = GET_HIGH_RES_TIMER();

    if(!build_params.only_build_tools)
    {
        ts_game_assets_start = GET_HIGH_RES_TIMER();
        build_game_assets(build_params);
        ts_game_code_start = ts_game_assets_end = GET_HIGH_RES_TIMER();
        build_game_code(build_params);
        ts_game_code_end = GET_HIGH_RES_TIMER();
    } else {
        ts_game_assets_start = ts_game_assets_end = 0;
        ts_game_code_start   = ts_game_code_end   = 0;
    }

    // NOTE: Technically slightly inaccurate, but avoids early-assignment bugs.
    ts_build_end = GET_HIGH_RES_TIMER();
    printf(
        "TIME:\n"
        "- Arg parsing: %14lld ticks\n"
        "- Shared Libs: %14lld ticks\n"
        "- Tools:       %14lld ticks\n"
        "- Game Assets: %14lld ticks\n"
        "- Game Code:   %14lld ticks\n"
        "\n"
        "___________________________________\n"
        "- TOTAL:       %14lld ticks\n",
        (ts_param_parse_end - ts_param_parse_start),
        (ts_shared_libs_end - ts_shared_libs_start),
        (ts_tools_end - ts_tools_start),
        (ts_game_assets_end - ts_game_assets_start),
        (ts_game_code_end - ts_game_code_start),
        (ts_build_end - ts_build_start)
    );

    log_nob_temp_size();
}

char *strlower(char *str)
{
    char *cursor = str;

    if(cursor) {
        while(*cursor) {
            *cursor = tolower(*cursor);
            cursor++;
        }
    }

    return str;
}

// Turn parameters given to nob.exe into a 'Parameters' data structure.
// 
// Parameters without a dash have no arguments:
// * nob release / nob debug   # turns debug compilation off / on
// 
// Parameters with a dash do have arguments:
// * nob -target gba           # Builds the original target
// * nob -target gba debug     # Builds a debug version of the original target
//
// If the same parameter is given multiple times, the last one in the list counts.
Parameters parse_program_parameters(int *argc, char ***argv)
{
    Parameters build_params = {0};

    build_params.target_game = GAME_SA1;

    while(*argc > 0)
    {
        const char *arg = strlower(nob_shift(*argv, *argc));

        if(arg == NULL) break;

        if(!strcmp(arg, "release")) {
            build_params.debug_target = false;
        } else if(!strcmp(arg, "debug")) {
            build_params.debug_target = true;
        } else if(!strcmp(arg, "debug_tools")) {
            build_params.debug_tools = true;
        } else if(!strcmp(arg, "only_build_tools")) {
            build_params.only_build_tools = true;
        } else if(!strcmp(arg, "match_target")) {
            if(build_params.target_platform == PLATFORM_GBA
            || build_params.target_platform == PLATFORM_NONE) {
                build_params.match_target = true;
            } else if(build_params.target_platform != PLATFORM_NONE) {
                nob_log(WARNING, "Target platform is '%s'. Option '%s' ignored.", platform_idents[build_params.target_platform], arg);
            }
        } else if(!strcmp(arg, "-game")) {
            if(*argc > 0) {
                const char *arg_param = strlower(nob_shift(*argv, *argc));
                if(arg_param == NULL) break;

                EGame game_id;
                for(game_id = GAME_NONE+1; game_id < GAME_COUNT; game_id++)
                {
                    if(!strcmp(arg_param, game_idents[game_id][VERSION_RELEASE]))
                    {
                        build_params.target_game = game_id;
                        nob_log(INFO, "Game:   %s", arg_param);

                        break;
                    }
                }
                
                if(game_id >= GAME_KATAM) {
                    nob_log(WARNING, "'%s' is not a supported game!", arg_param);
                    exit(-5);
                }
            } else {
                nob_log(ERROR, "No argument given for param '%s'", arg);
                exit(-6);
            }
        } else if(!strcmp(arg, "-target")) {
            if(*argc > 0) {
                const char *arg_param = strlower(nob_shift(*argv, *argc));
                if(arg_param == NULL) break;

                EPlatform platform_id;
                for(platform_id = PLATFORM_NONE; platform_id < PLATFORM_COUNT; platform_id++)
                {
                    if(!strcmp(arg_param, platform_idents[platform_id]))
                    {
                        build_params.target_platform = platform_id;
                        nob_log(INFO, "Target: %s", arg_param);
                        break;
                    }
                }

                if(platform_id == PLATFORM_COUNT) {
                    nob_log(ERROR, "Unknown build target: '%s'", arg_param);
                    exit(-5);
                }

                switch(platform_id)
                {
                case PLATFORM_GBA: {
                    build_params.target_cpu_arch = ARCH_ARM;
                    build_params.target_is_64bit = false;
                } break;

                case PLATFORM_WIN32: {
                    // TODO: Add Windows ARM build support?
                    build_params.target_cpu_arch = ARCH_X86;
                    build_params.target_is_64bit = true;

                    // Don't enable matching by default, but disable it when !PLATFORM_GBA
                    build_params.match_target = false;
                } break;

                default: {
                    build_params.target_is_64bit = true;

                    // Don't enable matching by default, but disable it when !PLATFORM_GBA
                    build_params.match_target = false;
                } break;
                }

                nob_log(INFO, "Arch:   %s", arch_idents[build_params.target_cpu_arch]);
            } else {
                nob_log(ERROR, "No argument given for param '%s'", arg);
                exit(-6);
            }
        } else {
            nob_log(ERROR, "Unknown program argument: '%s'", arg);
            exit(-7);
        }
    }
    
    const char *platform_ident = platform_idents[build_params.target_platform];
    const char *game_ident     = game_idents[build_params.target_game][build_params.debug_target];
    const char *build_dir  = nob_temp_sprintf(BUILD_DIR"%s/%s/", platform_ident, game_ident);
    build_params.build_dir = build_dir;

    return build_params;
}

void log_nob_temp_size(void)
{
    nob_log(INFO, "nob_temp_size: 0x%X/0x%X (~%.4f%%)\n",
        (int)nob_temp_size, NOB_TEMP_CAPACITY, ((float)nob_temp_size / (float)NOB_TEMP_CAPACITY));
}

void build_shared_libs(const Parameters build_params)
{
    Cmd cmd = {0};
    Procs procs = {0};
    
    bool rebuild_was_needed = false;

    {
        #undef  LOCAL_LIB_DIR
        #define LOCAL_LIB_DIR TOOLS_DIR"_shared/arena_alloc/"
        const char *libPath = LOCAL_LIB_DIR LIB_FILENAME(arena_alloc);

        if (tool_rebuild_needed(libPath,
            LOCAL_LIB_DIR"arena_alloc.c", 
            LOCAL_LIB_DIR"arena_alloc.h", 
            NULL))
        {          
            nob_cc(&cmd);                                               
            nob_cc_inputs(&cmd,
                LOCAL_LIB_DIR"arena_alloc.c"
            );
#if defined(_WIN32) || defined(_MSC_VER)
            nob_cmd_append(&cmd, "/O2", "/c", "/EHsc");
            nob_cmd_append(&cmd, "/Fo" LOCAL_LIB_DIR);
#else
            nob_cmd_append(&cmd, "-O2", "-static", "-c");
            nob_cmd_append(&cmd, "-o", LOCAL_LIB_DIR OBJ_FILENAME(arena_alloc));
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
    
        link_shared_libs(build_params);
    } else {
        nob_log(INFO, "Shared tool libraries are up-to-date.\n");
    }
}

void link_shared_libs(const Parameters build_params)
{
    Cmd cmd = {0};
    Procs procs = {0};

    {
        #undef  LOCAL_LIB_DIR
        #define LOCAL_LIB_DIR TOOLS_DIR"_shared/arena_alloc/"
        LINK_LIBRARY(&cmd, arena_alloc, LOCAL_LIB_DIR,
            LOCAL_LIB_DIR OBJ_FILENAME(arena_alloc));
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

void build_tools(const Parameters build_params)
{
    Cmd cmd = {0};
    Procs procs = {0};
    
    // TODO: 
    // if (build_params.target_platform == PLATFORM_GBA) acquire_compile_and_install_agbcc(&cmd, &procs);

    Nob_File_Paths toolDirs = {0};

    build_c_tool(&cmd, &procs, "aif2pcm");
    build_c_tool(&cmd, &procs, "bin2c");

    build_bribasa(&cmd, &procs);

    build_epos_tool(&cmd, &procs);
    
    build_c_tool(&cmd, &procs, "gbafix");
    
    build_gbagfx(&cmd, &procs, build_params);

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

void build_gbagfx(Cmd *cmd, Procs *procs, const Parameters build_params)
{
    bool buildDebugVer = build_params.debug_tools;

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

void build_game_assets(const Parameters build_params)
{
    build_sound_data(build_params);
    
    nob_log(INFO, build_params.build_dir);
}

// OBJ_DIR      = build/gba/sa1[_debug]/
// MID_SUBDIR   = sound/songs/midi
// MID_BUILDDIR = $(OBJ_DIR)/$(MID_SUBDIR)
void build_sound_data(const Parameters build_params)
{
    build_songs(build_params);
}

// OBJ_DIR      = build/gba/sa1[_debug]/
// MID_SUBDIR   = sound/songs/midi
// MID_BUILDDIR = $(OBJ_DIR)/$(MID_SUBDIR)
void build_songs(const Parameters build_params)
{
    Cmd cmd = {0};
    Procs procs = {0};

    const char *songs_sub_dir  = "sound/songs/";
    const char *midis_sub_dir  = "sound/songs/midi/";
    const char *build_dir_asm  = nob_temp_sprintf("%s%s",      build_params.build_dir, songs_sub_dir);
    const char *build_dir_midi = nob_temp_sprintf("%s%smidi/", build_params.build_dir, songs_sub_dir);    
    
    Nob_File_Paths song_asm_files  = {0};
    Nob_File_Paths song_midi_all   = {0};
    Nob_File_Paths song_midi_mid_files = {0};

    const char *base_dir = nob_get_current_dir_temp();
    
    nob_set_current_dir(midis_sub_dir);
    if(nob_read_entire_dir(".", &song_midi_all)) {
        da_foreach(const char *, it, &song_midi_all)
        {
            const char *file_path = *it;
            Nob_String_View svMidi = nob_sv_from_cstr(file_path);

            if(nob_sv_end_with(svMidi, ".mid")) {
                nob_da_append(&song_midi_mid_files, file_path);
            } else if(nob_sv_end_with(svMidi, ".s")) {
                nob_da_append(&song_asm_files, file_path);
            }
        }

        int std_reverb = 0;

        da_foreach(const char *, midi_path, &song_midi_mid_files)
        {
            const char *midi_asm_path = replace_extension_temp(*midi_path, ".s");

            if(nob_needs_rebuild1(midi_asm_path, *midi_path))
            {
                // tools/mid2agb/mid2agb \
                //      sound/songs/midi/se_ring.mid \
                //      sound/songs/midi/se_ring.s   \
                //      -C "x86"
                // -E -R0 -G4 -P20 -V100
                nob_cmd_append(&cmd, TOOL_MID2AGB);
                nob_cmd_append(&cmd, *midi_path);
                nob_cmd_append(&cmd, midi_asm_path);

                // Set the comment-style needed for specific CPU archs
                // 
                // TODO: Might need adjustment in the future!
                if(build_params.target_cpu_arch == ARCH_ARM) {
                    nob_cmd_append(&cmd, "-C", "arm");
                } else {
                    nob_cmd_append(&cmd, "-C", "x86");
                }

                nob_cmd_append(&cmd, "-E"); // "exact gate-time"

                nob_cmd_append(&cmd, temp_sprintf("-R%d", std_reverb)); // Reverb
                nob_cmd_append(&cmd, temp_sprintf("-G%d", 4)); // Voicegroup member
                nob_cmd_append(&cmd, temp_sprintf("-P%d", 20)); // Priority
                nob_cmd_append(&cmd, temp_sprintf("-V%d", 100)); // master Volume
                
                da_append(&procs, cmd_run_async_and_reset(&cmd));
            }
        }

        /* Wait for MIDIs to be converted before assembling .s files */
        
        nob_log(INFO, "Waiting on MIDIs to be built...\n", (int)procs.count);

        if (!procs_wait_and_reset(&procs)) {
            nob_log(ERROR, "Error building tools");
            return;
        }
    }
    nob_set_current_dir(base_dir);

    nob_log(INFO, "as <flags> -I sound -o %s, %s", build_dir_asm, songs_sub_dir);
    nob_log(INFO, build_dir_asm  );
    nob_log(INFO, build_dir_midi );
    
}

// file_path: Any path with an extension like "foo.txt"
// ext: Extension to replace file_path's extension with: ".s" , ".o", ...
//
// Output gets allocated on nob's temporary memory stack
char *replace_extension_temp(const char *file_path, const char *ext)
{
    char *result_path = nob_temp_strdup(file_path);
    char *ext_cursor  = strrchr(result_path, '.');
    strcpy(ext_cursor, ext);

    return result_path;
}

void build_game_code(const Parameters build_params)
{
    Cmd cmd = {0};
    Procs procs = {0};

    
    if(build_params.match_target && build_params.target_platform == PLATFORM_GBA)
    {
        // TODO: Run checksum command.
    }
}