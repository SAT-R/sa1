CC = gcc

CFLAGS = -Wall -Wextra -Werror -std=c11 -O2 -s -DPNG_SKIP_SETJMP_CHECK
CFLAGS += $(shell pkg-config --cflags libpng)

LIBS = -lpng -lz
LDFLAGS += $(shell pkg-config --libs-only-L libpng)

SRCS = main.c convert_png.c util.c font.c

.PHONY: all clean

all: rsfont
	@:

rsfont: $(SRCS) convert_png.h gfx.h global.h util.h font.h
	$(CC) $(CFLAGS) $(SRCS) -o $@ $(LDFLAGS) $(LIBS)

clean:
	$(RM) rsfont rsfont.exe
