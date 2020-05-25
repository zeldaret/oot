.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

/* B7D670 801064D0 00000000 */  nop   
/* B7D674 801064D4 00000000 */  nop   
/* B7D678 801064D8 00000000 */  nop   
/* B7D67C 801064DC 00000000 */  nop   
glabel guMtxF2L
/* B7D680 801064E0 3C014780 */  li    $at, 0x47800000 # 0.000000
/* B7D684 801064E4 44810000 */  mtc1  $at, $f0
/* B7D688 801064E8 3C19FFFF */  lui   $t9, 0xffff
/* B7D68C 801064EC 24B80020 */  addiu $t8, $a1, 0x20
.L801064F0:
/* B7D690 801064F0 C4840000 */  lwc1  $f4, ($a0)
/* B7D694 801064F4 C48A0004 */  lwc1  $f10, 4($a0)
/* B7D698 801064F8 24A50004 */  addiu $a1, $a1, 4
/* B7D69C 801064FC 46002182 */  mul.s $f6, $f4, $f0
/* B7D6A0 80106500 24840008 */  addiu $a0, $a0, 8
/* B7D6A4 80106504 46005402 */  mul.s $f16, $f10, $f0
/* B7D6A8 80106508 4600320D */  trunc.w.s $f8, $f6
/* B7D6AC 8010650C 4600848D */  trunc.w.s $f18, $f16
/* B7D6B0 80106510 44084000 */  mfc1  $t0, $f8
/* B7D6B4 80106514 44099000 */  mfc1  $t1, $f18
/* B7D6B8 80106518 01195024 */  and   $t2, $t0, $t9
/* B7D6BC 8010651C 00086C00 */  sll   $t5, $t0, 0x10
/* B7D6C0 80106520 00095C02 */  srl   $t3, $t1, 0x10
/* B7D6C4 80106524 312EFFFF */  andi  $t6, $t1, 0xffff
/* B7D6C8 80106528 014B6025 */  or    $t4, $t2, $t3
/* B7D6CC 8010652C 01AE7825 */  or    $t7, $t5, $t6
/* B7D6D0 80106530 ACACFFFC */  sw    $t4, -4($a1)
/* B7D6D4 80106534 14B8FFEE */  bne   $a1, $t8, .L801064F0
/* B7D6D8 80106538 ACAF001C */   sw    $t7, 0x1c($a1)
/* B7D6DC 8010653C 03E00008 */  jr    $ra
/* B7D6E0 80106540 00000000 */   nop   
