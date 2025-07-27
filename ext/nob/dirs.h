#ifndef GUARD_NOB_DIRS_H
#define GUARD_NOB_DIRS_H

#define BUILD_DIR "build/"
#define TOOLS_DIR "tools/"
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