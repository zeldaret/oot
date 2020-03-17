.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A11840
    .asciz "yari hikari ct 1\n"
    .balign 4

glabel D_80A11854
    .asciz "yari hikari ct 2\n"
    .balign 4

glabel D_80A11868
    .asciz "FF MOVE 1\n"
    .balign 4

glabel D_80A11874
    .asciz "FF MOVE 2\n"
    .balign 4

glabel D_80A11880
    .asciz "yari hikari 1\n"
    .balign 4

glabel D_80A11890
    .asciz "yari hikari 2\n"
    .balign 4

glabel D_80A118A0
 .word 0x464C4153, 0x48202121, 0x0A000000
glabel D_80A118AC
    .asciz "F_FIRE_MODE %d\n"
    .balign 4

glabel D_80A118BC
    .asciz "fly_mode    %d\n"
    .balign 4

glabel D_80A118CC
    .asciz "BEFORE setAC   %d\n"
    .balign 4

glabel D_80A118E0
    .asciz "AFTER  setAC\n"
    .balign 4

glabel D_80A118F0
    .asciz "なぜだああああああああ      %d\n"
    .balign 4

glabel D_80A11910
 .word 0x45464320, 0x310A0000
glabel D_80A11918
 .word 0x45464320, 0x320A0000
glabel D_80A11920
    .asciz "../z_en_fhg_fire.c"
    .balign 4

glabel D_80A11934
    .asciz "../z_en_fhg_fire.c"
    .balign 4

glabel D_80A11948
    .asciz "yari hikari draw 1\n"
    .balign 4

glabel D_80A1195C
    .asciz "../z_en_fhg_fire.c"
    .balign 4

glabel D_80A11970
    .asciz "../z_en_fhg_fire.c"
    .balign 4

glabel D_80A11984
    .asciz "FF DRAW 1\n"
    .balign 4

glabel D_80A11990
    .asciz "../z_en_fhg_fire.c"
    .balign 4

glabel D_80A119A4
    .asciz "FF DRAW 2\n"
    .balign 4

glabel D_80A119B0
    .asciz "../z_en_fhg_fire.c"
    .balign 4

glabel D_80A119C4
 .word 0x3E051EB8
glabel D_80A119C8
 .word 0x4622F983
glabel D_80A119CC
 .word 0x4622F983
glabel D_80A119D0
 .word 0xBE4CCCCD
glabel D_80A119D4
 .word 0x469C4000
glabel D_80A119D8
 .word 0xBDA3D70A
glabel D_80A119DC
 .word 0x469C4000
glabel D_80A119E0
 .word 0xBDA3D70A
glabel D_80A119E4
 .word 0x4622F983
glabel D_80A119E8
 .word 0x4622F983
glabel D_80A119EC
 .word 0x4622F983
glabel D_80A119F0
 .word 0x4622F983
glabel D_80A119F4
 .word 0x4622F983
glabel D_80A119F8
 .word 0x4622F983
glabel D_80A119FC
 .word 0x4622F983
glabel D_80A11A00
 .word 0xBDCCCCCD
glabel D_80A11A04
 .word 0x40490FF9, 0x00000000, 0x00000000


