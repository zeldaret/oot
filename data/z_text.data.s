.include "macro.inc"
#include "versions.h"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .data

.balign 16

/* temporary file name, rename to something more appropriate when decompiled */

#if DEBUG_ASSETS
glabel gMojiFontTLUTs
    .incbin "incbin/gMojiFontTLUTs"

glabel gMojiFontTex
    .incbin "incbin/gMojiFontTex"
#endif
