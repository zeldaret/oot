.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800FCD40
/* B73EE0 800FCD40 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B73EE4 800FCD44 AFBF001C */  sw    $ra, 0x1c($sp)
/* B73EE8 800FCD48 AFB00018 */  sw    $s0, 0x18($sp)
/* B73EEC 800FCD4C AFA40020 */  sw    $a0, 0x20($sp)
/* B73EF0 800FCD50 240E00FF */  li    $t6, 255
/* B73EF4 800FCD54 A0AE0000 */  sb    $t6, ($a1)
/* B73EF8 800FCD58 00C08025 */  move  $s0, $a2
/* B73EFC 800FCD5C AFA50024 */  sw    $a1, 0x24($sp)
/* B73F00 800FCD60 0C040304 */  jal   osContInit
/* B73F04 800FCD64 8FA40020 */   lw    $a0, 0x20($sp)
/* B73F08 800FCD68 10400003 */  beqz  $v0, .L800FCD78
/* B73F0C 800FCD6C 8FA70024 */   lw    $a3, 0x24($sp)
/* B73F10 800FCD70 1000003E */  b     .L800FCE6C
/* B73F14 800FCD74 8FBF001C */   lw    $ra, 0x1c($sp)
.L800FCD78:
/* B73F18 800FCD78 90EF0000 */  lbu   $t7, ($a3)
/* B73F1C 800FCD7C 240100FF */  li    $at, 255
/* B73F20 800FCD80 8FA40020 */  lw    $a0, 0x20($sp)
/* B73F24 800FCD84 55E10038 */  bnel  $t7, $at, .L800FCE68
/* B73F28 800FCD88 00001025 */   move  $v0, $zero
/* B73F2C 800FCD8C 0C040C84 */  jal   func_80103210
/* B73F30 800FCD90 AFA70024 */   sw    $a3, 0x24($sp)
/* B73F34 800FCD94 10400003 */  beqz  $v0, .L800FCDA4
/* B73F38 800FCD98 8FA70024 */   lw    $a3, 0x24($sp)
/* B73F3C 800FCD9C 10000032 */  b     .L800FCE68
/* B73F40 800FCDA0 24020001 */   li    $v0, 1
.L800FCDA4:
/* B73F44 800FCDA4 8FA40020 */  lw    $a0, 0x20($sp)
/* B73F48 800FCDA8 00002825 */  move  $a1, $zero
/* B73F4C 800FCDAC 24060001 */  li    $a2, 1
/* B73F50 800FCDB0 0C000CA0 */  jal   osRecvMesg
/* B73F54 800FCDB4 AFA70024 */   sw    $a3, 0x24($sp)
/* B73F58 800FCDB8 0C040CA3 */  jal   func_8010328C
/* B73F5C 800FCDBC 02002025 */   move  $a0, $s0
/* B73F60 800FCDC0 8FA70024 */  lw    $a3, 0x24($sp)
/* B73F64 800FCDC4 02001025 */  move  $v0, $s0
/* B73F68 800FCDC8 24030005 */  li    $v1, 5
/* B73F6C 800FCDCC A0E00000 */  sb    $zero, ($a3)
/* B73F70 800FCDD0 92180003 */  lbu   $t8, 3($s0)
/* B73F74 800FCDD4 17000008 */  bnez  $t8, .L800FCDF8
/* B73F78 800FCDD8 00000000 */   nop   
/* B73F7C 800FCDDC 96190000 */  lhu   $t9, ($s0)
/* B73F80 800FCDE0 24030005 */  li    $v1, 5
/* B73F84 800FCDE4 34090001 */  ori   $t1, $zero, 1
/* B73F88 800FCDE8 54790004 */  bnel  $v1, $t9, .L800FCDFC
/* B73F8C 800FCDEC 904A0007 */   lbu   $t2, 7($v0)
/* B73F90 800FCDF0 10000001 */  b     .L800FCDF8
/* B73F94 800FCDF4 A0E90000 */   sb    $t1, ($a3)
.L800FCDF8:
/* B73F98 800FCDF8 904A0007 */  lbu   $t2, 7($v0)
.L800FCDFC:
/* B73F9C 800FCDFC 55400008 */  bnezl $t2, .L800FCE20
/* B73FA0 800FCE00 904E000B */   lbu   $t6, 0xb($v0)
/* B73FA4 800FCE04 944B0004 */  lhu   $t3, 4($v0)
/* B73FA8 800FCE08 546B0005 */  bnel  $v1, $t3, .L800FCE20
/* B73FAC 800FCE0C 904E000B */   lbu   $t6, 0xb($v0)
/* B73FB0 800FCE10 90EC0000 */  lbu   $t4, ($a3)
/* B73FB4 800FCE14 358D0002 */  ori   $t5, $t4, 2
/* B73FB8 800FCE18 A0ED0000 */  sb    $t5, ($a3)
/* B73FBC 800FCE1C 904E000B */  lbu   $t6, 0xb($v0)
.L800FCE20:
/* B73FC0 800FCE20 55C00008 */  bnezl $t6, .L800FCE44
/* B73FC4 800FCE24 9048000F */   lbu   $t0, 0xf($v0)
/* B73FC8 800FCE28 944F0008 */  lhu   $t7, 8($v0)
/* B73FCC 800FCE2C 546F0005 */  bnel  $v1, $t7, .L800FCE44
/* B73FD0 800FCE30 9048000F */   lbu   $t0, 0xf($v0)
/* B73FD4 800FCE34 90F80000 */  lbu   $t8, ($a3)
/* B73FD8 800FCE38 37190004 */  ori   $t9, $t8, 4
/* B73FDC 800FCE3C A0F90000 */  sb    $t9, ($a3)
/* B73FE0 800FCE40 9048000F */  lbu   $t0, 0xf($v0)
.L800FCE44:
/* B73FE4 800FCE44 55000008 */  bnezl $t0, .L800FCE68
/* B73FE8 800FCE48 00001025 */   move  $v0, $zero
/* B73FEC 800FCE4C 9449000C */  lhu   $t1, 0xc($v0)
/* B73FF0 800FCE50 54690005 */  bnel  $v1, $t1, .L800FCE68
/* B73FF4 800FCE54 00001025 */   move  $v0, $zero
/* B73FF8 800FCE58 90EA0000 */  lbu   $t2, ($a3)
/* B73FFC 800FCE5C 354B0008 */  ori   $t3, $t2, 8
/* B74000 800FCE60 A0EB0000 */  sb    $t3, ($a3)
/* B74004 800FCE64 00001025 */  move  $v0, $zero
.L800FCE68:
/* B74008 800FCE68 8FBF001C */  lw    $ra, 0x1c($sp)
.L800FCE6C:
/* B7400C 800FCE6C 8FB00018 */  lw    $s0, 0x18($sp)
/* B74010 800FCE70 27BD0020 */  addiu $sp, $sp, 0x20
/* B74014 800FCE74 03E00008 */  jr    $ra
/* B74018 800FCE78 00000000 */   nop   
