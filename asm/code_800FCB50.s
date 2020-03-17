.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800FCB50
/* B73CF0 800FCB50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B73CF4 800FCB54 AFBF0014 */  sw    $ra, 0x14($sp)
/* B73CF8 800FCB58 0C001114 */  jal   bzero
/* B73CFC 800FCB5C 24050018 */   li    $a1, 24
/* B73D00 800FCB60 8FBF0014 */  lw    $ra, 0x14($sp)
/* B73D04 800FCB64 27BD0018 */  addiu $sp, $sp, 0x18
/* B73D08 800FCB68 03E00008 */  jr    $ra
/* B73D0C 800FCB6C 00000000 */   nop   

glabel func_800FCB70
/* B73D10 800FCB70 03E00008 */  jr    $ra
/* B73D14 800FCB74 00000000 */   nop   

glabel func_800FCB78
/* B73D18 800FCB78 A480000C */  sh    $zero, 0xc($a0)
/* B73D1C 800FCB7C 03E00008 */  jr    $ra
/* B73D20 800FCB80 A4800012 */   sh    $zero, 0x12($a0)

glabel func_800FCB84
/* B73D24 800FCB84 AFA50004 */  sw    $a1, 4($sp)
/* B73D28 800FCB88 948E0000 */  lhu   $t6, ($a0)
/* B73D2C 800FCB8C 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B73D30 800FCB90 01C51026 */  xor   $v0, $t6, $a1
/* B73D34 800FCB94 03E00008 */  jr    $ra
/* B73D38 800FCB98 2C420001 */   sltiu $v0, $v0, 1

glabel func_800FCB9C
/* B73D3C 800FCB9C AFA50004 */  sw    $a1, 4($sp)
/* B73D40 800FCBA0 948E0000 */  lhu   $t6, ($a0)
/* B73D44 800FCBA4 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B73D48 800FCBA8 01C57824 */  and   $t7, $t6, $a1
/* B73D4C 800FCBAC 01E51026 */  xor   $v0, $t7, $a1
/* B73D50 800FCBB0 03E00008 */  jr    $ra
/* B73D54 800FCBB4 2C420001 */   sltiu $v0, $v0, 1

glabel func_800FCBB8
/* B73D58 800FCBB8 AFA50004 */  sw    $a1, 4($sp)
/* B73D5C 800FCBBC 948E000C */  lhu   $t6, 0xc($a0)
/* B73D60 800FCBC0 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B73D64 800FCBC4 01C57824 */  and   $t7, $t6, $a1
/* B73D68 800FCBC8 01E51026 */  xor   $v0, $t7, $a1
/* B73D6C 800FCBCC 03E00008 */  jr    $ra
/* B73D70 800FCBD0 2C420001 */   sltiu $v0, $v0, 1

glabel func_800FCBD4
/* B73D74 800FCBD4 AFA50004 */  sw    $a1, 4($sp)
/* B73D78 800FCBD8 948E0012 */  lhu   $t6, 0x12($a0)
/* B73D7C 800FCBDC 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B73D80 800FCBE0 01C57824 */  and   $t7, $t6, $a1
/* B73D84 800FCBE4 01E51026 */  xor   $v0, $t7, $a1
/* B73D88 800FCBE8 03E00008 */  jr    $ra
/* B73D8C 800FCBEC 2C420001 */   sltiu $v0, $v0, 1

glabel func_800FCBF0
/* B73D90 800FCBF0 03E00008 */  jr    $ra
/* B73D94 800FCBF4 94820000 */   lhu   $v0, ($a0)

glabel func_800FCBF8
/* B73D98 800FCBF8 03E00008 */  jr    $ra
/* B73D9C 800FCBFC 9482000C */   lhu   $v0, 0xc($a0)

glabel func_800FCC00
/* B73DA0 800FCC00 03E00008 */  jr    $ra
/* B73DA4 800FCC04 80820002 */   lb    $v0, 2($a0)

glabel func_800FCC08
/* B73DA8 800FCC08 03E00008 */  jr    $ra
/* B73DAC 800FCC0C 80820003 */   lb    $v0, 3($a0)

glabel func_800FCC10
/* B73DB0 800FCC10 A0850014 */  sb    $a1, 0x14($a0)
/* B73DB4 800FCC14 03E00008 */  jr    $ra
/* B73DB8 800FCC18 A0860015 */   sb    $a2, 0x15($a0)

glabel func_800FCC1C
/* B73DBC 800FCC1C 03E00008 */  jr    $ra
/* B73DC0 800FCC20 80820014 */   lb    $v0, 0x14($a0)

glabel func_800FCC24
/* B73DC4 800FCC24 03E00008 */  jr    $ra
/* B73DC8 800FCC28 80820015 */   lb    $v0, 0x15($a0)

glabel func_800FCC2C
/* B73DCC 800FCC2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B73DD0 800FCC30 AFBF0014 */  sw    $ra, 0x14($sp)
/* B73DD4 800FCC34 0C03F307 */  jal   func_800FCC1C
/* B73DD8 800FCC38 00000000 */   nop   
/* B73DDC 800FCC3C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B73DE0 800FCC40 27BD0018 */  addiu $sp, $sp, 0x18
/* B73DE4 800FCC44 03E00008 */  jr    $ra
/* B73DE8 800FCC48 00000000 */   nop   

glabel func_800FCC4C
/* B73DEC 800FCC4C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B73DF0 800FCC50 AFBF0014 */  sw    $ra, 0x14($sp)
/* B73DF4 800FCC54 0C03F309 */  jal   func_800FCC24
/* B73DF8 800FCC58 00000000 */   nop   
/* B73DFC 800FCC5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B73E00 800FCC60 27BD0018 */  addiu $sp, $sp, 0x18
/* B73E04 800FCC64 03E00008 */  jr    $ra
/* B73E08 800FCC68 00000000 */   nop   

glabel func_800FCC6C
/* B73E0C 800FCC6C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B73E10 800FCC70 AFBF0014 */  sw    $ra, 0x14($sp)
/* B73E14 800FCC74 0C03F300 */  jal   func_800FCC00
/* B73E18 800FCC78 AFA40020 */   sw    $a0, 0x20($sp)
/* B73E1C 800FCC7C 8FA40020 */  lw    $a0, 0x20($sp)
/* B73E20 800FCC80 0C03F302 */  jal   func_800FCC08
/* B73E24 800FCC84 AFA2001C */   sw    $v0, 0x1c($sp)
/* B73E28 800FCC88 8FA3001C */  lw    $v1, 0x1c($sp)
/* B73E2C 800FCC8C 28610008 */  slti  $at, $v1, 8
/* B73E30 800FCC90 14200007 */  bnez  $at, .L800FCCB0
/* B73E34 800FCC94 28610043 */   slti  $at, $v1, 0x43
/* B73E38 800FCC98 10200003 */  beqz  $at, .L800FCCA8
/* B73E3C 800FCC9C 00000000 */   nop   
/* B73E40 800FCCA0 1000000D */  b     .L800FCCD8
/* B73E44 800FCCA4 2465FFF9 */   addiu $a1, $v1, -7
.L800FCCA8:
/* B73E48 800FCCA8 1000000B */  b     .L800FCCD8
/* B73E4C 800FCCAC 2405003C */   li    $a1, 60
.L800FCCB0:
/* B73E50 800FCCB0 2861FFF9 */  slti  $at, $v1, -7
/* B73E54 800FCCB4 10200008 */  beqz  $at, .L800FCCD8
/* B73E58 800FCCB8 00002825 */   move  $a1, $zero
/* B73E5C 800FCCBC 2861FFBE */  slti  $at, $v1, -0x42
/* B73E60 800FCCC0 14200003 */  bnez  $at, .L800FCCD0
/* B73E64 800FCCC4 00000000 */   nop   
/* B73E68 800FCCC8 10000003 */  b     .L800FCCD8
/* B73E6C 800FCCCC 24650007 */   addiu $a1, $v1, 7
.L800FCCD0:
/* B73E70 800FCCD0 10000001 */  b     .L800FCCD8
/* B73E74 800FCCD4 2405FFC4 */   li    $a1, -60
.L800FCCD8:
/* B73E78 800FCCD8 28410008 */  slti  $at, $v0, 8
/* B73E7C 800FCCDC 14200007 */  bnez  $at, .L800FCCFC
/* B73E80 800FCCE0 28410043 */   slti  $at, $v0, 0x43
/* B73E84 800FCCE4 10200003 */  beqz  $at, .L800FCCF4
/* B73E88 800FCCE8 00000000 */   nop   
/* B73E8C 800FCCEC 1000000D */  b     .L800FCD24
/* B73E90 800FCCF0 2446FFF9 */   addiu $a2, $v0, -7
.L800FCCF4:
/* B73E94 800FCCF4 1000000B */  b     .L800FCD24
/* B73E98 800FCCF8 2406003C */   li    $a2, 60
.L800FCCFC:
/* B73E9C 800FCCFC 2841FFF9 */  slti  $at, $v0, -7
/* B73EA0 800FCD00 10200008 */  beqz  $at, .L800FCD24
/* B73EA4 800FCD04 00003025 */   move  $a2, $zero
/* B73EA8 800FCD08 2841FFBE */  slti  $at, $v0, -0x42
/* B73EAC 800FCD0C 14200003 */  bnez  $at, .L800FCD1C
/* B73EB0 800FCD10 00000000 */   nop   
/* B73EB4 800FCD14 10000003 */  b     .L800FCD24
/* B73EB8 800FCD18 24460007 */   addiu $a2, $v0, 7
.L800FCD1C:
/* B73EBC 800FCD1C 10000001 */  b     .L800FCD24
/* B73EC0 800FCD20 2406FFC4 */   li    $a2, -60
.L800FCD24:
/* B73EC4 800FCD24 0C03F304 */  jal   func_800FCC10
/* B73EC8 800FCD28 8FA40020 */   lw    $a0, 0x20($sp)
/* B73ECC 800FCD2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B73ED0 800FCD30 27BD0020 */  addiu $sp, $sp, 0x20
/* B73ED4 800FCD34 03E00008 */  jr    $ra
/* B73ED8 800FCD38 00000000 */   nop   
