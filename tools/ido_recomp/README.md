# Static recomp of IRIX programs

Example for compiling `as1`:

```
1. g++ recomp.cpp -o recomp -g -lcapstone
2. ./recomp ~/ido7.1_compiler/usr/lib/as1 > as1_c.c
3. gcc libc_impl.c as1_c.c -o as1 -g -fno-strict-aliasing -lm -no-pie -DIDO71
```

Use the same approach for `cc`, `cfe`, `uopt`, `ugen`, `as1` (and `copt` if you need that).

Use `-DIDO53` instead of `-DIDO71` if the program you are trying to recompile was compiled with IDO 5.3 rather than IDO 7.1.

You can add `-O2` to step 3. To compile ugen for IDO 5.3, add `-Dugen53` to step 1, which makes it more conservative due to ugen53 reads uninitialized stack memory and the result depends on that.
