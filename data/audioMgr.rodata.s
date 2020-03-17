.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80144C80
    .asciz "オーディオマネージャが OS_SC_PRE_NMI_MSG を受け取りました\n"
    # EUC-JP: オーディオマネージャが OS_SC_PRE_NMI_MSG を受け取りました | Audio manager received OS_SC_PRE_NMI_MSG
    .balign 4

glabel D_80144CBC
    .asciz "オーディオマネージャスレッド実行開始\n"
    # EUC-JP: オーディオマネージャスレッド実行開始 | Start running audio manager thread
    .balign 4
