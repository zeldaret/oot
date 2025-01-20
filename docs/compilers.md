# Compilers

Ocarina of Time was written mostly in C, compiled to MIPS machine code. For the
N64 and GameCube versions, all code was compiled with the IDO compiler. For the
iQue Player versions, some of the code (namely libultra, and some game files
such as those related to Chinese text) was compiled with the EGCS compiler instead.

## IDO

Ocarina of Time was originally developed on
[Silicon Graphics "Indy"](https://en.wikipedia.org/wiki/SGI_Indy) workstations,
and IDO (IRIS Development Option) was the C compiler toolchain that shipped with
these. Two different versions of IDO were used for Ocarina of Time: IDO 5.3 was
used for some libraries (namely libultra, libleo, and the JPEG library) while
IDO 7.1 was used for the other libraries and all of the "main" game code.

These Silicon Graphics workstations ran the MIPS-based IRIX operating system, so
the original compiler binaries can't run on modern systems. Originally this
project used [qemu-irix](https://github.com/n64decomp/qemu-irix) (now
unmaintained) to run emulate IRIX on modern systems, but nowadays we use the
more lightweight
[ido-static-recomp](https://github.com/decompals/ido-static-recomp) instead.

## EGCS

[EGCS (Experimental/Enhanced GNU Compiler System)](https://en.wikipedia.org/wiki/GNU_Compiler_Collection#EGCS_fork)
was a fork of the GCC compiler. The Linux-based iQue SDK included a patched
version of EGCS release 1.1.2. The original compiler can still run on modern Linux
systems, but we use a
[modified version](https://github.com/decompals/mips-gcc-egcs-2.91.66)
that includes Mac support and a few other minor improvements (such as anonymous
struct/union support).

This version of the EGCS compiler has a bug where code that indexes into an array member can
fail to compile if the array member is at a large (>= 0x8000) offset in a struct. For
example, when run on the source code

```c
struct Foo {
    char a[0x8000];
    int b[1];
};

int test(struct Foo* foo, int i) {
    return foo->b[i];
}
```

the compiler errors with

```
Compiler error: src.c: In function `test':
src.c:8: internal error--unrecognizable insn:
(insn 20 18 22 (set (reg:SI 85)
        (plus:SI (reg:SI 81)
            (const_int 32768))) -1 (nil)
    (nil))
../../gcc/toplev.c:1367: Internal compiler error in function fatal_insn
```

In some recompiled files, the game developers had to modify the code to work
around this bug, for example by storing a pointer to the array in a temporary
variable before indexing into it.
