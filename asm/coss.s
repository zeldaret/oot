.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel coss
/* B7B920 80104780 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B7B924 80104784 AFA40018 */  sw    $a0, 0x18($sp)
/* B7B928 80104788 00802825 */  move  $a1, $a0
/* B7B92C 8010478C 24A44000 */  addiu $a0, $a1, 0x4000
/* B7B930 80104790 AFBF0014 */  sw    $ra, 0x14($sp)
/* B7B934 80104794 308EFFFF */  andi  $t6, $a0, 0xffff
/* B7B938 80104798 0C040114 */  jal   sins
/* B7B93C 8010479C 01C02025 */   move  $a0, $t6
/* B7B940 801047A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B7B944 801047A4 27BD0018 */  addiu $sp, $sp, 0x18
/* B7B948 801047A8 03E00008 */  jr    $ra
/* B7B94C 801047AC 00000000 */   nop   
