# Decompiling retail versions

The next decompilation target for OOT is the PAL GameCube Master Quest ROM
(`gc-eu-mq`), because it is the retail version that is most similar to the Debug
ROM. Unfortunately there are still a lot of differences, many of which are
register or stack allocation differences because retail ROMs were built with
different compiler flags. However, once this version is done, future
retail versions should be much easier, as the changes between retail versions are
small in comparison.

Instead of `cp`ing a matching build into `expected/`, the target ROM is disassembled as `.s` files then
reassembled as `.o` files directly into `expected/build/gc-eu-mq` for diff tools.
This allows us to make progress matching code in parallel with solving other
problems (such as the build system, ROM organization, and BSS ordering). The
files in `tools/disasm/gc-eu-mq` say how to split the source files and where the
functions and variables are in the target ROM, and these may need to be updated
if there are mistakes or if function names change due to documentation work.

Unfortunately, the disassembly is not perfect, so a "correct" decompilation might
still show diffs with data symbols. We might improve this later, but these data
diffs are fine to ignore for now.

For register and stack allocation differences, often the code can be tweaked so
that it matches both the retail ROM while continuing to match the Debug ROM (for
example, by reordering assignments or moving a local variable declaration inside
an `if` block). Since retail MM versions use the same compiler flags as retail
OOT, checking MM decomp for similar code can help.

We can disable code that was removed in retail builds by adding
`#if OOT_DEBUG ... #endif` or `if (OOT_DEBUG) { ... }` around these parts of the
code. In order to keep the code readable, we should try to minimize the amount of
`#if` noise whenever possible.

## Setup

1.  Copy your target PAL GameCube Master Quest ROM (non-debug) to
    `baseroms/gc-eu-mq/baserom.z64`

1.  Extract assets and ROM files **from the Debug ROM** by running

    ```sh
    make setup -jN
    ```

    if necessary, where `N` is the number of cores on your machine.

1.  Build the non-matching test ROM by running

    ```sh
    make setup -jN VERSION=gc-eu-mq
    make -jN VERSION=gc-eu-mq
    ```

    where `N` is the number of cores on your machine. This will build into
    `build/gc-eu-mq` and produce `build/gc-eu-mq/oot-gc-eu-mq.z64`.

    If you later want to delete all output files, run

    ```sh
    make clean VERSION=gc-eu-mq
    ```

1.  Disassemble the target ROM by running

    ```sh
    make disasm -jN VERSION=gc-eu-mq
    ```

    where `N` is the number of cores on your machine. The outputs will be written to
    `expected/build/gc-eu-mq`.

    Note that if you need to copy a matching build for the Debug ROM, you can use

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
in a file still need to match for `gc-eu-mq`. To get an overview of diffs for
all files, run `./retail_progress.py` with no arguments.

### asm-differ / diff.py

To diff assembly for a single function in `gc-eu-mq`, run e.g.

```sh
./diff.py -mwo3 -v gc-eu-mq Math3D_CylTriVsIntersect
```

The `-v` flag tells `diff.py` to compare between `build/gc-eu-mq` and
`expected/build/gc-eu-mq`, and to use `make VERSION=gc-eu-mq` when rebuilding.

You may also want to diff the Debug ROM in another terminal with

```sh
./diff.py -mwo3 Math3D_CylTriVsIntersect
```

to ensure any changes still match there.

### Permuter and decomp.me

Disassembly for individual functions is written to
`expected/build/gc-eu-mq/functions`, so to get a [decomp.me](https://decomp.me/) scratch you can run
e.g.

```sh
decomp-permuter/import.py \
  src/code/sys_math3d.c \
  expected/build/gc-eu-mq/functions/src/code/sys_math3d/Math3D_CylTriVsIntersect.s \
  VERSION=gc-eu-mq --decompme
```
