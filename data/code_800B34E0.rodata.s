.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801430C0
    .asciz "\x1b[41;37m０除算! ZCommonGet fade_speed に０がはいってる\x1B[m"
    # EUC-JP: ０除算! ZCommonGet fade_speed に０がはいってる | Divide by zero! Zero is entered in ZCommonGetfade_speed
    .balign 4
