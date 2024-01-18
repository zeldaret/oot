# z64compress

`z64compress` is a program for compressing Zelda 64 roms: be they retail, hacked traditionally, or custom-built from the [`Ocarina of Time`](https://github.com/zeldaret/oot) or [`Majora's Mask`](https://github.com/zeldaret/mm) reverse engineering projects. It is written in highly efficient C and leverages the power of multithreading to make compression as fast as possible. To reduce overhead on subsequent compressions, an optional cache directory can be specified.

In addition to the default `yaz`, it supports some faster and more compact algorithms such as `lzo`, `ucl`, and `aplib`. In order to use these, grab patches or code from my [`z64enc` repository](https://github.com/z64me/z64enc).

If you add an algorithm, please make sure `valgrind` reports no memory leaks or other errors before making a pull request. Thank you!

(By the way, `valgrind` works better without the `-march=native -mtune=native` optimizations, so turn those off when testing `valgrind`.)

## Usage
This is a command line application. Learn from these common examples and adapt the arguments to your needs:
```
  compressing oot debug
    --in           "path/to/in.z64"
    --out          "path/to/out.z64"
    --mb           32
    --codec        yaz
    --cache        "path/to/cache"
    --dma          "0x12F70,1548"
    --compress     "9-14,28-END"
    --threads      4

  compressing oot ntsc 1.0
    --in           "path/to/in.z64"
    --out          "path/to/out.z64"
    --mb           32
    --codec        yaz
    --cache        "path/to/cache"
    --dma          "0x7430,1526"
    --compress     "10-14,27-END"
    --threads      4

  compressing mm usa
    --in           "path/to/in.z64"
    --out          "path/to/out.z64"
    --mb           32
    --codec        yaz
    --cache        "path/to/cache"
    --dma          "0x1A500,1568"
    --compress     "10-14,23,24,31-END"
    --skip         "1127"
    --repack       "15-20,22"
    --threads      4
```

## Arguments
```
    --in           uncompressed input rom

    --out          compressed output rom

    --matching     attempt matching compression at the cost of
                   some optimizations and reduced performance

    --mb           how many mb the compressed rom should be

    --codec        currently supported codecs
                      yaz
                      ucl
                      lzo
                      aplib
                 * to use non-yaz codecs, find patches
                   and code on my z64enc repo

    --cache        is optional and won't be created if
                   no path is specified (having a cache
                   makes subsequent compressions faster)
                 * pro-tip: linux users who don't want a
                   cache to persist across power cycles
                   can use the path "/tmp/z64compress"

    --dma          specify dmadata address and count

    --compress     enable compression on specified files

    --skip         disable compression on specified files

    --repack       handles Majora's Mask archives

    --threads      optional multithreading;
                   exclude this argument to disable it

    --only-stdout  reserve stderr for errors and print
                   everything else to stdout

  arguments are executed as they
  are parsed, so order matters!
```

## Building
I have included shell scripts for building Linux and Windows binaries. Windows binaries are built using a cross compiler ([I recommend `MXE`](https://mxe.cc/)).

Alternatively, a Makefile-based build system is provided. Choose the target platform with `make TARGET=linux64|linux32|win32`, default is linux64. If building for windows with a cross compiler, specify the compiler executable with `make TARGET=win32 CC=/path/to/executable`.
