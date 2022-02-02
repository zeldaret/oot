#include "ultra64/asm.h"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.macro IPL_SYMBOL name, address, size
    .global \name
    .set \name, \address
    .type \name, @object
    .size \name, \size
.endm

IPL_SYMBOL osTvType,        0x80000300, 4
IPL_SYMBOL osRomType,       0x80000304, 4
IPL_SYMBOL osRomBase,       0x80000308, 4
IPL_SYMBOL osResetType,     0x8000030C, 4
IPL_SYMBOL osCicId,         0x80000310, 4
IPL_SYMBOL osVersion,       0x80000314, 4
IPL_SYMBOL osMemSize,       0x80000318, 4
IPL_SYMBOL osAppNMIBuffer,  0x8000031C, 0x40

.incbin "baserom.z64", 0x40, 0xFC0
