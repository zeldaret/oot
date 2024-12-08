# libu64

This document explains the reasoning behind organizing the libu64 files.

libu64 is known about from the Animal Crossing (GameCube) map files.

Here is the relevant excerpt from the Doubutsu no Mori+ 1.0 map file (for .text):

```
  00057f00 00043c 8005d4c0  1 .text 	libu64.a debug.c
  UNUSED   000070 ........ f_debug_range_f libu64.a debug.c
  UNUSED   00007c ........ _dbg_range libu64.a debug.c
  UNUSED   000158 ........ _dbg_dump libu64.a debug.c
  UNUSED   000048 ........ _dbg_array_error libu64.a debug.c
  UNUSED   000054 ........ _dbg_bound libu64.a debug.c
  UNUSED   000044 ........ _dbg_null libu64.a debug.c
  UNUSED   000060 ........ _dbg_ptr libu64.a debug.c
  UNUSED   000058 ........ _dbg_here libu64.a debug.c
  00057f00 00005c 8005d4c0  4 _dbg_hungup 	libu64.a debug.c
  UNUSED   000004 ........ Reset libu64.a debug.c
  00057f5c 000b70 8005d51c  1 .text 	libu64.a gfxprint.c
  00057f5c 0002e8 8005d51c  4 gfxprint_setup 	libu64.a gfxprint.c
  00058244 00004c 8005d804  4 gfxprint_color 	libu64.a gfxprint.c
  UNUSED   000024 ........ gfxprint_locate libu64.a gfxprint.c
  00058290 000024 8005d850  4 gfxprint_locate8x8 	libu64.a gfxprint.c
  UNUSED   000014 ........ gfxprint_setoffset libu64.a gfxprint.c
  000582b4 000378 8005d874  4 gfxprint_putc1 	libu64.a gfxprint.c
  0005862c 000198 8005dbec  4 gfxprint_putc 	libu64.a gfxprint.c
  UNUSED   000060 ........ gfxprint_write libu64.a gfxprint.c
  UNUSED   000054 ........ gfxprint_puts libu64.a gfxprint.c
  000587c4 000064 8005dd84  4 gfxprint_prout 	libu64.a gfxprint.c
  00058828 000090 8005dde8  4 gfxprint_init 	libu64.a gfxprint.c
  000588b8 000004 8005de78  4 gfxprint_cleanup 	libu64.a gfxprint.c
  000588bc 00004c 8005de7c  4 gfxprint_open 	libu64.a gfxprint.c
  00058908 000038 8005dec8  4 gfxprint_close 	libu64.a gfxprint.c
  UNUSED   000020 ........ gfxprint_vprintf libu64.a gfxprint.c
  00058940 000080 8005df00  4 gfxprint_printf 	libu64.a gfxprint.c
  000589c0 000000 8005df80  1 .text 	libu64.a gfxprint_data.c
  000589c0 000164 8005df80  1 .text 	libu64.a pad.c
  UNUSED   000024 ........ pad_init libu64.a pad.c
  UNUSED   000004 ........ pad_cleanup libu64.a pad.c
  UNUSED   000010 ........ pad_flush libu64.a pad.c
  UNUSED   000018 ........ pad_push_only libu64.a pad.c
  UNUSED   00001c ........ pad_push_also libu64.a pad.c
  UNUSED   00001c ........ pad_on_trigger libu64.a pad.c
  UNUSED   00001c ........ pad_off_trigger libu64.a pad.c
  UNUSED   000008 ........ pad_button libu64.a pad.c
  UNUSED   000008 ........ pad_trigger libu64.a pad.c
  UNUSED   00000c ........ pad_physical_stick_x libu64.a pad.c
  UNUSED   00000c ........ pad_physical_stick_y libu64.a pad.c
  UNUSED   000014 ........ pad_set_logical_stick libu64.a pad.c
  UNUSED   00000c ........ pad_logical_stick_x libu64.a pad.c
  UNUSED   00000c ........ pad_logical_stick_y libu64.a pad.c
  UNUSED   00000c ........ pad_stick_x libu64.a pad.c
  UNUSED   00000c ........ pad_stick_y libu64.a pad.c
  000589c0 000054 8005df80  4 pad_correct_stick 	libu64.a pad.c
```

This repository's `debug.c` (formerly `logutils.c`), `gfxprint.c` and `pad.c` (formerly `padutils.c`) line up with the map.

Note `debug.c` has additional debug-only functions in gc-eu-mq-dbg, hinting that there were two versions of libu64, a debug version and a non-debug version.

Additionally `debug.c`, `gfxprint.c` and `pad.c` all require compilation flags `-O2` (instead of `-O2 -g3`) to match, as supplementary evidence these were part of a separately compiled library.

`-O2` is also required for most files between `gfxprint.c` and `pad.c` in the code segment (see spec), hinting that these other files (`loadfragment2_n64.c`, `loadfragment2_gc.c`, `mtxuty-cvt.c`, `relocation_gc.c`, `load_gc.c`, `system_heap.c`) are also part of libu64.

Files `rcp_utils.c` and `logseverity_gc.c` do not strictly require `-O2`, but they do match with `-O2`.

`padsetup.c` also requires `-O2`.

On the other hand, the function `Overlay_Load` (in `loadfragment2_n64.c` or `load_gc.c` depending on game version) calls `DmaMgr_RequestSync`, a function that is not part of libu64.
This could suggest these files are not part of libu64, but the other evidence detailed above seems stronger.
It is also a possibility that libu64 expected users to provide the function, and it would have been an undefined symbol in the library.

All in all this suggests all files in code between the audio code and libc64, are part of libu64.

In the OoT boot segment, `stackcheck.c` is right next to `debug.c` and requires `-O2`: this hints `stackcheck.c` could be part of libu64 too. This is confirmed by looking at Majora's Mask n64-us, where `stackcheck.c` is in the middle of other libu64 files in the boot segment (see MM spec).
