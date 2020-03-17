.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809ADD40
    .asciz "../z_elf_msg2.c"
    .balign 4

glabel D_809ADD50
    .asciz "\"共倒れ\" = %s\n"
    .balign 4

glabel D_809ADD60
 .word 0xB6A6C5DD, 0xA4EC0000
glabel D_809ADD68
    .asciz "../z_elf_msg2.c"
    .balign 4

glabel D_809ADD78
    .asciz "\"共倒れ２\" = %s\n"
    .balign 4

.balign 4

glabel D_809ADD8C
 .word 0xB6A6C5DD, 0xA4ECA3B2, 0x00000000
glabel D_809ADD98
    .asciz "../z_elf_msg2.c"
    .balign 4

glabel D_809ADDA8
    .asciz "\"共倒れ\" = %s\n"
    .balign 4

glabel D_809ADDB8
 .word 0xB6A6C5DD, 0xA4EC0000
glabel D_809ADDC0
    .asciz "[36m Elf_Msg2_Actor_ct %04x\n\n[m"
    .balign 4

glabel D_809ADDE4
    .asciz "../z_elf_msg2.c"
    .balign 4

glabel D_809ADDF4
    .asciz "../z_elf_msg2.c"
    .balign 4

glabel D_809ADE04
 .word 0x2E2E2F7A, 0x5F656C66, 0x5F6D7367, 0x322E6300, 0x00000000, 0x00000000, 0x00000000


