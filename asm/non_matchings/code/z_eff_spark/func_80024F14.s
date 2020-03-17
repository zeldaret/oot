.rdata
glabel D_80135518
    .asciz "EffectSparkInfo_proc():Spark Pointer is NULL\n"
    .balign 4

.text
glabel func_80024F14
/* A9C0B4 80024F14 27BDFFE8 */  addiu $sp, $sp, -0x18
/* A9C0B8 80024F18 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9C0BC 80024F1C 14800006 */  bnez  $a0, .L80024F38
/* A9C0C0 80024F20 00802825 */   move  $a1, $a0
/* A9C0C4 80024F24 3C048013 */  lui   $a0, %hi(D_80135518) # $a0, 0x8013
/* A9C0C8 80024F28 24845518 */  addiu $a0, %lo(D_80135518) # addiu $a0, $a0, 0x5518
/* A9C0CC 80024F2C 0C00084C */  jal   osSyncPrintf
/* A9C0D0 80024F30 AFA50018 */   sw    $a1, 0x18($sp)
/* A9C0D4 80024F34 8FA50018 */  lw    $a1, 0x18($sp)
.L80024F38:
/* A9C0D8 80024F38 8CAE0008 */  lw    $t6, 8($a1)
/* A9C0DC 80024F3C 00001825 */  move  $v1, $zero
/* A9C0E0 80024F40 00A01025 */  move  $v0, $a1
/* A9C0E4 80024F44 59C00023 */  blezl $t6, .L80024FD4
/* A9C0E8 80024F48 8CAF04BC */   lw    $t7, 0x4bc($a1)
/* A9C0EC 80024F4C C4440018 */  lwc1  $f4, 0x18($v0)
.L80024F50:
/* A9C0F0 80024F50 C446000C */  lwc1  $f6, 0xc($v0)
/* A9C0F4 80024F54 C4400010 */  lwc1  $f0, 0x10($v0)
/* A9C0F8 80024F58 C44A001C */  lwc1  $f10, 0x1c($v0)
/* A9C0FC 80024F5C 46062200 */  add.s $f8, $f4, $f6
/* A9C100 80024F60 C4440014 */  lwc1  $f4, 0x14($v0)
/* A9C104 80024F64 C4520020 */  lwc1  $f18, 0x20($v0)
/* A9C108 80024F68 46005400 */  add.s $f16, $f10, $f0
/* A9C10C 80024F6C E4480018 */  swc1  $f8, 0x18($v0)
/* A9C110 80024F70 844F002A */  lh    $t7, 0x2a($v0)
/* A9C114 80024F74 46049180 */  add.s $f6, $f18, $f4
/* A9C118 80024F78 E450001C */  swc1  $f16, 0x1c($v0)
/* A9C11C 80024F7C 84580024 */  lh    $t8, 0x24($v0)
/* A9C120 80024F80 8448002C */  lh    $t0, 0x2c($v0)
/* A9C124 80024F84 E4460020 */  swc1  $f6, 0x20($v0)
/* A9C128 80024F88 C4A80490 */  lwc1  $f8, 0x490($a1)
/* A9C12C 80024F8C 84490026 */  lh    $t1, 0x26($v0)
/* A9C130 80024F90 844B002E */  lh    $t3, 0x2e($v0)
/* A9C134 80024F94 46080280 */  add.s $f10, $f0, $f8
/* A9C138 80024F98 844C0028 */  lh    $t4, 0x28($v0)
/* A9C13C 80024F9C 01F8C821 */  addu  $t9, $t7, $t8
/* A9C140 80024FA0 01095021 */  addu  $t2, $t0, $t1
/* A9C144 80024FA4 016C6821 */  addu  $t5, $t3, $t4
/* A9C148 80024FA8 E44A0010 */  swc1  $f10, 0x10($v0)
/* A9C14C 80024FAC A459002A */  sh    $t9, 0x2a($v0)
/* A9C150 80024FB0 A44A002C */  sh    $t2, 0x2c($v0)
/* A9C154 80024FB4 A44D002E */  sh    $t5, 0x2e($v0)
/* A9C158 80024FB8 8CAE0008 */  lw    $t6, 8($a1)
/* A9C15C 80024FBC 24630001 */  addiu $v1, $v1, 1
/* A9C160 80024FC0 24420024 */  addiu $v0, $v0, 0x24
/* A9C164 80024FC4 006E082A */  slt   $at, $v1, $t6
/* A9C168 80024FC8 5420FFE1 */  bnezl $at, .L80024F50
/* A9C16C 80024FCC C4440018 */   lwc1  $f4, 0x18($v0)
/* A9C170 80024FD0 8CAF04BC */  lw    $t7, 0x4bc($a1)
.L80024FD4:
/* A9C174 80024FD4 8CB904C0 */  lw    $t9, 0x4c0($a1)
/* A9C178 80024FD8 00001025 */  move  $v0, $zero
/* A9C17C 80024FDC 25F80001 */  addiu $t8, $t7, 1
/* A9C180 80024FE0 ACB804BC */  sw    $t8, 0x4bc($a1)
/* A9C184 80024FE4 0338082A */  slt   $at, $t9, $t8
/* A9C188 80024FE8 10200003 */  beqz  $at, .L80024FF8
/* A9C18C 80024FEC 8FBF0014 */   lw    $ra, 0x14($sp)
/* A9C190 80024FF0 10000001 */  b     .L80024FF8
/* A9C194 80024FF4 24020001 */   li    $v0, 1
.L80024FF8:
/* A9C198 80024FF8 03E00008 */  jr    $ra
/* A9C19C 80024FFC 27BD0018 */   addiu $sp, $sp, 0x18

