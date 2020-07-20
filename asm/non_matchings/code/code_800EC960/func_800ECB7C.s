glabel func_800ECB7C
/* B63D1C 800ECB7C AFA40000 */  sw    $a0, ($sp)
/* B63D20 800ECB80 308400FF */  andi  $a0, $a0, 0xff
/* B63D24 800ECB84 00047080 */  sll   $t6, $a0, 2
/* B63D28 800ECB88 01C47021 */  addu  $t6, $t6, $a0
/* B63D2C 800ECB8C 3C0F8013 */  lui   $t7, %hi(D_80130F80) # $t7, 0x8013
/* B63D30 800ECB90 25EF0F80 */  addiu $t7, %lo(D_80130F80) # addiu $t7, $t7, 0xf80
/* B63D34 800ECB94 000E7140 */  sll   $t6, $t6, 5
/* B63D38 800ECB98 3C088013 */  lui   $t0, %hi(D_80131BF0) # $t0, 0x8013
/* B63D3C 800ECB9C 3C078013 */  lui   $a3, %hi(D_80131C00) # $a3, 0x8013
/* B63D40 800ECBA0 00001025 */  move  $v0, $zero
/* B63D44 800ECBA4 00001825 */  move  $v1, $zero
/* B63D48 800ECBA8 24E71C00 */  addiu $a3, %lo(D_80131C00) # addiu $a3, $a3, 0x1c00
/* B63D4C 800ECBAC 25081BF0 */  addiu $t0, %lo(D_80131BF0) # addiu $t0, $t0, 0x1bf0
/* B63D50 800ECBB0 01CF2821 */  addu  $a1, $t6, $t7
/* B63D54 800ECBB4 240600FF */  li    $a2, 255
/* B63D58 800ECBB8 0003C0C0 */  sll   $t8, $v1, 3
.L800ECBBC:
/* B63D5C 800ECBBC 00B8C821 */  addu  $t9, $a1, $t8
/* B63D60 800ECBC0 93240000 */  lbu   $a0, ($t9)
/* B63D64 800ECBC4 24630001 */  addiu $v1, $v1, 1
/* B63D68 800ECBC8 306300FF */  andi  $v1, $v1, 0xff
/* B63D6C 800ECBCC 10C40006 */  beq   $a2, $a0, .L800ECBE8
/* B63D70 800ECBD0 01044821 */   addu  $t1, $t0, $a0
/* B63D74 800ECBD4 912A0000 */  lbu   $t2, ($t1)
/* B63D78 800ECBD8 00E25821 */  addu  $t3, $a3, $v0
/* B63D7C 800ECBDC 24420001 */  addiu $v0, $v0, 1
/* B63D80 800ECBE0 304200FF */  andi  $v0, $v0, 0xff
/* B63D84 800ECBE4 A16A006D */  sb    $t2, 0x6d($t3)
.L800ECBE8:
/* B63D88 800ECBE8 28410008 */  slti  $at, $v0, 8
/* B63D8C 800ECBEC 10200003 */  beqz  $at, .L800ECBFC
/* B63D90 800ECBF0 28610010 */   slti  $at, $v1, 0x10
/* B63D94 800ECBF4 5420FFF1 */  bnezl $at, .L800ECBBC
/* B63D98 800ECBF8 0003C0C0 */   sll   $t8, $v1, 3
.L800ECBFC:
/* B63D9C 800ECBFC 03E00008 */  jr    $ra
/* B63DA0 800ECC00 00000000 */   nop   

