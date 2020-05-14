.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_8016A500
    .space 0x4

glabel D_8016A504
    .space 0x4

glabel D_8016A508
    .space 0x4

glabel D_8016A50C
    .space 0x4

glabel D_8016A510
    .space 0x4

glabel D_8016A514
    .space 0x4

glabel D_8016A518
    .space 0x4

glabel D_8016A51C
    .space 0x4

glabel D_8016A520
    .space 0x8

glabel D_8016A528
    .space 0x8

glabel D_8016A530
    .space 0x8

glabel D_8016A538
    .space 0x8

glabel D_8016A540
    .space 0x8

glabel D_8016A548
    .space 0x8

glabel D_8016A550
    .space 0x8

glabel D_8016A558
    .space 0x4

glabel D_8016A55C
    .space 0x4

glabel D_8016A560
    .space 0x4

glabel D_8016A564
    .space 0x4

glabel D_8016A568
    .space 0x4

glabel D_8016A56C
    .space 0x4

glabel D_8016A570
    .space 0x4

glabel D_8016A574
    .space 0xC

glabel D_8016A580
    .space 0x8

glabel gSpeedMeterTimeEntryPtr
    .space 0x8
