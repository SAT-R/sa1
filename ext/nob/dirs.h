#ifndef GUARD_NOB_DIRS_H
#define GUARD_NOB_DIRS_H

#define BUILD_DIR "build/"
#define TOOLS_DIR "tools/"
#define SONGS_SUB_DIR "sound/songs/"
#define MIDIS_SUB_DIR "sound/songs/midi/"

#define TOOL_MID2AGB "./tools/mid2agb/mid2agb"EXE
#define TOOL_PREPROC "./tools/preproc/preproc"EXE

#if defined(_WIN32) || defined(_MSC_VER)
#define EXT_LIBS_DIR "C:\\Code\\Libraries\\"
#define LIBPNG_INC_DIR   EXT_LIBS_DIR "libpng\\include\\"
#define LIBPNG_LIB_DIR   EXT_LIBS_DIR "libpng\\lib\\"
#define ZLIB_INC_DIR     EXT_LIBS_DIR "zlib\\include\\"
#define ZLIB_LIB_DIR     EXT_LIBS_DIR "zlib\\lib\\"
#else
// TODO: Find a way to get the result of pkg-config
#endif

#endif // GUARD_NOB_DIRS_H