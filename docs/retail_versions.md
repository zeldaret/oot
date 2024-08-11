# Decompiling retail versions

The next decompilation target for OOT is NTSC version 1.2
(`ntsc-1.2`), because it is the N64 version that is most similar to the GC
versions. Unfortunately there are still a lot of differences,
but once this version is done, future
N64 versions should be much easier, as the changes between N64 versions are
small in comparison.

Instead of `cp`ing a matching build into `expected/`, the target ROM is disassembled as `.s` files then
reassembled as `.o` files directly into `expected/build/ntsc-1.2` for diff tools.
This allows us to make progress matching code in parallel with solving other
problems (such as the build system, ROM organization, and BSS ordering). The
files in `tools/disasm/ntsc-1.2` say how to split the source files and where the
functions and variables are in the target ROM, and these may need to be updated
if there are mistakes or if function names change due to documentation work.

Unfortunately, the disassembly is not perfect, so a "correct" decompilation might
still show diffs with data symbols. We might improve this later, but these data
diffs are fine to ignore for now.

For register and stack allocation differences, often the code can be tweaked so
that it matches both the retail ROM while continuing to match GC versions and the Debug ROM (for
example, by reordering assignments or moving a local variable declaration inside
an `if` block). Since retail MM versions currently target N64, checking MM decomp for similar code can help.

We can handle code that is different between versions by adding
`#if PLATFORM_N64 ... #endif` or `#if PLATFORM_GC ... #endif` around these parts of the
code. In order to keep the code readable, we should try to minimize the amount of
`#if` noise whenever possible.

## Setup

1.  Copy your target JP NTSC 1.2 ROM to `baseroms/ntsc-1.2/baserom.z64`

1.  Build the non-matching test ROM by running

    ```sh
    make setup -jN VERSION=ntsc-1.2
    make -jN VERSION=ntsc-1.2
    ```

    where `N` is the number of cores on your machine. This will build into
    `build/ntsc-1.2` and produce `build/ntsc-1.2/oot-ntsc-1.2.z64`.

    If you later want to delete all output files, run

    ```sh
    make clean VERSION=ntsc-1.2
    ```

1.  Disassemble the target ROM by running

    ```sh
    make disasm VERSION=ntsc-1.2
    ```

    The outputs will be written to `expected/build/ntsc-1.2`.

    Note that if you need to copy a matching build for another version, you can use e.g.

    ```sh
    mkdir -p expected/build
    cp -r build/gc-eu-mq-dbg expected/build
    ```

    to avoid clobbering the disassembly.

## Diff Tools

Note that many tools will require activating the Python virtual environment
in your terminal session. To do this, run:

```sh
source .venv/bin/activate
```

### retail_progress.py

Running `./retail_progress.py path/to/file.c` will attempt to figure out which functions
in a file still need to match for `ntsc-1.2`. To get an overview of diffs for
all files, run `./retail_progress.py` with no arguments.

### asm-differ / diff.py

To diff assembly for a single function in `ntsc-1.2`, run e.g.

```sh
./diff.py -mwo3 -v ntsc-1.2 Math3D_CylTriVsIntersect
```

The `-v` flag tells `diff.py` to compare between `build/ntsc-1.2` and
`expected/build/ntsc-1.2`, and to use `make VERSION=ntsc-1.2` when rebuilding.

You may also want to diff versions `gc-eu-mq` and/or `gc-eu-mq-dbg` in another terminal
to ensure any changes still match there.

### Permuter and decomp.me

Disassembly for individual functions is written to
`expected/build/ntsc-1.2/functions`, so to get a [decomp.me](https://decomp.me/) scratch you can run
e.g.

```sh
decomp-permuter/import.py \
  src/code/sys_math3d.c \
  expected/build/ntsc-1.2/functions/src/code/sys_math3d/Math3D_CylTriVsIntersect.s \
  VERSION=ntsc-1.2 --decompme
```
