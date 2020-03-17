.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osViSetEvent
/* B7B950 801047B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B7B954 801047B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B7B958 801047B8 AFA40018 */  sw    $a0, 0x18($sp)
/* B7B95C 801047BC AFA5001C */  sw    $a1, 0x1c($sp)
/* B7B960 801047C0 0C001CA0 */  jal   __osDisableInt
/* B7B964 801047C4 AFA60020 */   sw    $a2, 0x20($sp)
/* B7B968 801047C8 3C038001 */  lui   $v1, %hi(__osViNext) # $v1, 0x8001
/* B7B96C 801047CC 2463AF04 */  addiu $v1, %lo(__osViNext) # addiu $v1, $v1, -0x50fc
/* B7B970 801047D0 8C6F0000 */  lw    $t7, ($v1)
/* B7B974 801047D4 8FAE0018 */  lw    $t6, 0x18($sp)
/* B7B978 801047D8 00402025 */  move  $a0, $v0
/* B7B97C 801047DC ADEE0010 */  sw    $t6, 0x10($t7)
/* B7B980 801047E0 8C790000 */  lw    $t9, ($v1)
/* B7B984 801047E4 8FB8001C */  lw    $t8, 0x1c($sp)
/* B7B988 801047E8 AF380014 */  sw    $t8, 0x14($t9)
/* B7B98C 801047EC 8C690000 */  lw    $t1, ($v1)
/* B7B990 801047F0 8FA80020 */  lw    $t0, 0x20($sp)
/* B7B994 801047F4 0C001CBC */  jal   __osRestoreInt
/* B7B998 801047F8 A5280002 */   sh    $t0, 2($t1)
/* B7B99C 801047FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B7B9A0 80104800 27BD0018 */  addiu $sp, $sp, 0x18
/* B7B9A4 80104804 03E00008 */  jr    $ra
/* B7B9A8 80104808 00000000 */   nop   
