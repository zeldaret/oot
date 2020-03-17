.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_8006BA00
/* AE2BA0 8006BA00 24831DB4 */  addiu $v1, $a0, 0x1db4
/* AE2BA4 8006BA04 24040010 */  li    $a0, 16
/* AE2BA8 8006BA08 00001025 */  move  $v0, $zero
.L8006BA0C:
/* AE2BAC 8006BA0C 24420004 */  addiu $v0, $v0, 4
/* AE2BB0 8006BA10 A4600000 */  sh    $zero, ($v1)
/* AE2BB4 8006BA14 A460001C */  sh    $zero, 0x1c($v1)
/* AE2BB8 8006BA18 A4600038 */  sh    $zero, 0x38($v1)
/* AE2BBC 8006BA1C A4600054 */  sh    $zero, 0x54($v1)
/* AE2BC0 8006BA20 1444FFFA */  bne   $v0, $a0, .L8006BA0C
/* AE2BC4 8006BA24 24630070 */   addiu $v1, $v1, 0x70
/* AE2BC8 8006BA28 03E00008 */  jr    $ra
/* AE2BCC 8006BA2C 00000000 */   nop   

glabel func_8006BA30
/* AE2BD0 8006BA30 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AE2BD4 8006BA34 AFB40028 */  sw    $s4, 0x28($sp)
/* AE2BD8 8006BA38 AFB30024 */  sw    $s3, 0x24($sp)
/* AE2BDC 8006BA3C AFB20020 */  sw    $s2, 0x20($sp)
/* AE2BE0 8006BA40 AFB1001C */  sw    $s1, 0x1c($sp)
/* AE2BE4 8006BA44 AFB00018 */  sw    $s0, 0x18($sp)
/* AE2BE8 8006BA48 3C140001 */  lui   $s4, (0x00011D60 >> 16) # lui $s4, 1
/* AE2BEC 8006BA4C 00809025 */  move  $s2, $a0
/* AE2BF0 8006BA50 AFBF002C */  sw    $ra, 0x2c($sp)
/* AE2BF4 8006BA54 24901DB4 */  addiu $s0, $a0, 0x1db4
/* AE2BF8 8006BA58 36941D60 */  ori   $s4, (0x00011D60 & 0xFFFF) # ori $s4, $s4, 0x1d60
/* AE2BFC 8006BA5C 00008825 */  move  $s1, $zero
/* AE2C00 8006BA60 24130010 */  li    $s3, 16
.L8006BA64:
/* AE2C04 8006BA64 96020000 */  lhu   $v0, ($s0)
/* AE2C08 8006BA68 50400011 */  beql  $v0, $zero, .L8006BAB0
/* AE2C0C 8006BA6C 26310001 */   addiu $s1, $s1, 1
/* AE2C10 8006BA70 14400003 */  bnez  $v0, .L8006BA80
/* AE2C14 8006BA74 244EFFFF */   addiu $t6, $v0, -1
/* AE2C18 8006BA78 10000003 */  b     .L8006BA88
/* AE2C1C 8006BA7C 00001825 */   move  $v1, $zero
.L8006BA80:
/* AE2C20 8006BA80 A60E0000 */  sh    $t6, ($s0)
/* AE2C24 8006BA84 31C3FFFF */  andi  $v1, $t6, 0xffff
.L8006BA88:
/* AE2C28 8006BA88 14600005 */  bnez  $v1, .L8006BAA0
/* AE2C2C 8006BA8C 02542021 */   addu  $a0, $s2, $s4
/* AE2C30 8006BA90 0C03E27A */  jal   func_800F89E8
/* AE2C34 8006BA94 26040010 */   addiu $a0, $s0, 0x10
/* AE2C38 8006BA98 10000005 */  b     .L8006BAB0
/* AE2C3C 8006BA9C 26310001 */   addiu $s1, $s1, 1
.L8006BAA0:
/* AE2C40 8006BAA0 26050004 */  addiu $a1, $s0, 4
/* AE2C44 8006BAA4 0C029BBD */  jal   func_800A6EF4
/* AE2C48 8006BAA8 26060010 */   addiu $a2, $s0, 0x10
/* AE2C4C 8006BAAC 26310001 */  addiu $s1, $s1, 1
.L8006BAB0:
/* AE2C50 8006BAB0 1633FFEC */  bne   $s1, $s3, .L8006BA64
/* AE2C54 8006BAB4 2610001C */   addiu $s0, $s0, 0x1c
/* AE2C58 8006BAB8 8FBF002C */  lw    $ra, 0x2c($sp)
/* AE2C5C 8006BABC 8FB00018 */  lw    $s0, 0x18($sp)
/* AE2C60 8006BAC0 8FB1001C */  lw    $s1, 0x1c($sp)
/* AE2C64 8006BAC4 8FB20020 */  lw    $s2, 0x20($sp)
/* AE2C68 8006BAC8 8FB30024 */  lw    $s3, 0x24($sp)
/* AE2C6C 8006BACC 8FB40028 */  lw    $s4, 0x28($sp)
/* AE2C70 8006BAD0 03E00008 */  jr    $ra
/* AE2C74 8006BAD4 27BD0030 */   addiu $sp, $sp, 0x30

glabel Audio_PlaySoundAtPosition
/* AE2C78 8006BAD8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AE2C7C 8006BADC AFA40038 */  sw    $a0, 0x38($sp)
/* AE2C80 8006BAE0 AFA5003C */  sw    $a1, 0x3c($sp)
/* AE2C84 8006BAE4 24881DB4 */  addiu $t0, $a0, 0x1db4
/* AE2C88 8006BAE8 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE2C8C 8006BAEC AFA60040 */  sw    $a2, 0x40($sp)
/* AE2C90 8006BAF0 AFA70044 */  sw    $a3, 0x44($sp)
/* AE2C94 8006BAF4 340AFFFF */  li    $t2, 65535
/* AE2C98 8006BAF8 24040010 */  li    $a0, 16
/* AE2C9C 8006BAFC 8FA50028 */  lw    $a1, 0x28($sp)
/* AE2CA0 8006BB00 00004825 */  move  $t1, $zero
.L8006BB04:
/* AE2CA4 8006BB04 95020000 */  lhu   $v0, ($t0)
/* AE2CA8 8006BB08 10400007 */  beqz  $v0, .L8006BB28
/* AE2CAC 8006BB0C 004A082A */   slt   $at, $v0, $t2
/* AE2CB0 8006BB10 10200003 */  beqz  $at, .L8006BB20
/* AE2CB4 8006BB14 25290001 */   addiu $t1, $t1, 1
/* AE2CB8 8006BB18 00405025 */  move  $t2, $v0
/* AE2CBC 8006BB1C 01002825 */  move  $a1, $t0
.L8006BB20:
/* AE2CC0 8006BB20 1524FFF8 */  bne   $t1, $a0, .L8006BB04
/* AE2CC4 8006BB24 2508001C */   addiu $t0, $t0, 0x1c
.L8006BB28:
/* AE2CC8 8006BB28 29210010 */  slti  $at, $t1, 0x10
/* AE2CCC 8006BB2C 14200004 */  bnez  $at, .L8006BB40
/* AE2CD0 8006BB30 24A40010 */   addiu $a0, $a1, 0x10
/* AE2CD4 8006BB34 0C03E27A */  jal   func_800F89E8
/* AE2CD8 8006BB38 AFA50030 */   sw    $a1, 0x30($sp)
/* AE2CDC 8006BB3C 8FA80030 */  lw    $t0, 0x30($sp)
.L8006BB40:
/* AE2CE0 8006BB40 8FAE003C */  lw    $t6, 0x3c($sp)
/* AE2CE4 8006BB44 25050004 */  addiu $a1, $t0, 4
/* AE2CE8 8006BB48 3C010001 */  lui   $at, (0x00011D60 >> 16) # lui $at, 1
/* AE2CEC 8006BB4C 8DD80000 */  lw    $t8, ($t6)
/* AE2CF0 8006BB50 34211D60 */  ori   $at, (0x00011D60 & 0xFFFF) # ori $at, $at, 0x1d60
/* AE2CF4 8006BB54 25060010 */  addiu $a2, $t0, 0x10
/* AE2CF8 8006BB58 ACB80000 */  sw    $t8, ($a1)
/* AE2CFC 8006BB5C 8DCF0004 */  lw    $t7, 4($t6)
/* AE2D00 8006BB60 ACAF0004 */  sw    $t7, 4($a1)
/* AE2D04 8006BB64 8DD80008 */  lw    $t8, 8($t6)
/* AE2D08 8006BB68 ACB80008 */  sw    $t8, 8($a1)
/* AE2D0C 8006BB6C 8FB90040 */  lw    $t9, 0x40($sp)
/* AE2D10 8006BB70 A5190000 */  sh    $t9, ($t0)
/* AE2D14 8006BB74 8FA40038 */  lw    $a0, 0x38($sp)
/* AE2D18 8006BB78 AFA60020 */  sw    $a2, 0x20($sp)
/* AE2D1C 8006BB7C 0C029BBD */  jal   func_800A6EF4
/* AE2D20 8006BB80 00812021 */   addu  $a0, $a0, $at
/* AE2D24 8006BB84 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AE2D28 8006BB88 3C0B8013 */  lui   $t3, %hi(D_801333E8) # $t3, 0x8013
/* AE2D2C 8006BB8C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AE2D30 8006BB90 256B33E8 */  addiu $t3, %lo(D_801333E8) # addiu $t3, $t3, 0x33e8
/* AE2D34 8006BB94 AFAB0014 */  sw    $t3, 0x14($sp)
/* AE2D38 8006BB98 AFA70010 */  sw    $a3, 0x10($sp)
/* AE2D3C 8006BB9C 97A40046 */  lhu   $a0, 0x46($sp)
/* AE2D40 8006BBA0 8FA50020 */  lw    $a1, 0x20($sp)
/* AE2D44 8006BBA4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* AE2D48 8006BBA8 24060004 */   li    $a2, 4
/* AE2D4C 8006BBAC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE2D50 8006BBB0 27BD0038 */  addiu $sp, $sp, 0x38
/* AE2D54 8006BBB4 03E00008 */  jr    $ra
/* AE2D58 8006BBB8 00000000 */   nop   
