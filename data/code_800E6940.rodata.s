.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801495C0
    .float 0.707

glabel D_801495C4
    .float 4095.999

glabel D_801495C8
    .float 1.99998

glabel D_801495CC
    .float 3.99996

glabel D_801495D0
    .float 1.99998

glabel D_801495D4
    .float 0.99999

glabel D_801495D8
    .float 1.0465

glabel D_801495DC
    .float 1.99999

glabel D_801495E0
    .float 0.52325

glabel D_801495E4
    .float 3.99999

glabel D_801495E8
    .float 0.26263

glabel D_801495EC
    .float 0.13081
