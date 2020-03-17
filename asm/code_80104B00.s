.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80104B00
/* B7BCA0 80104B00 908E0016 */  lbu   $t6, 0x16($a0)
/* B7BCA4 80104B04 24010002 */  li    $at, 2
/* B7BCA8 80104B08 24020200 */  li    $v0, 512
/* B7BCAC 80104B0C 15C10003 */  bne   $t6, $at, .L80104B1C
/* B7BCB0 80104B10 24180006 */   li    $t8, 6
/* B7BCB4 80104B14 10000001 */  b     .L80104B1C
/* B7BCB8 80104B18 24020100 */   li    $v0, 256
.L80104B1C:
/* B7BCBC 80104B1C 908F0017 */  lbu   $t7, 0x17($a0)
/* B7BCC0 80104B20 94880014 */  lhu   $t0, 0x14($a0)
/* B7BCC4 80104B24 24010033 */  li    $at, 51
/* B7BCC8 80104B28 030F1823 */  subu  $v1, $t8, $t7
/* B7BCCC 80104B2C 3079FFFF */  andi  $t9, $v1, 0xffff
/* B7BCD0 80104B30 1501002D */  bne   $t0, $at, .L80104BE8
/* B7BCD4 80104B34 03201825 */   move  $v1, $t9
/* B7BCD8 80104B38 94890002 */  lhu   $t1, 2($a0)
/* B7BCDC 80104B3C 00695007 */  srav  $t2, $t1, $v1
/* B7BCE0 80104B40 3145FFFF */  andi  $a1, $t2, 0xffff
/* B7BCE4 80104B44 0045001A */  div   $zero, $v0, $a1
/* B7BCE8 80104B48 00005812 */  mflo  $t3
/* B7BCEC 80104B4C 000B6080 */  sll   $t4, $t3, 2
/* B7BCF0 80104B50 00056840 */  sll   $t5, $a1, 1
/* B7BCF4 80104B54 31B8FFFF */  andi  $t8, $t5, 0xffff
/* B7BCF8 80104B58 318EFFFF */  andi  $t6, $t4, 0xffff
/* B7BCFC 80104B5C 01D80019 */  multu $t6, $t8
/* B7BD00 80104B60 A48A001C */  sh    $t2, 0x1c($a0)
/* B7BD04 80104B64 240A07FF */  li    $t2, 2047
/* B7BD08 80104B68 14A00002 */  bnez  $a1, .L80104B74
/* B7BD0C 80104B6C 00000000 */   nop   
/* B7BD10 80104B70 0007000D */  break 7
.L80104B74:
/* B7BD14 80104B74 2401FFFF */  li    $at, -1
/* B7BD18 80104B78 14A10004 */  bne   $a1, $at, .L80104B8C
/* B7BD1C 80104B7C 3C018000 */   lui   $at, 0x8000
/* B7BD20 80104B80 14410002 */  bne   $v0, $at, .L80104B8C
/* B7BD24 80104B84 00000000 */   nop   
/* B7BD28 80104B88 0006000D */  break 6
.L80104B8C:
/* B7BD2C 80104B8C 00007812 */  mflo  $t7
/* B7BD30 80104B90 31F9FFFF */  andi  $t9, $t7, 0xffff
/* B7BD34 80104B94 A48C001E */  sh    $t4, 0x1e($a0)
/* B7BD38 80104B98 0145001A */  div   $zero, $t2, $a1
/* B7BD3C 80104B9C 00194043 */  sra   $t0, $t9, 1
/* B7BD40 80104BA0 00005812 */  mflo  $t3
/* B7BD44 80104BA4 2509FFFF */  addiu $t1, $t0, -1
/* B7BD48 80104BA8 256C0001 */  addiu $t4, $t3, 1
/* B7BD4C 80104BAC A48D0024 */  sh    $t5, 0x24($a0)
/* B7BD50 80104BB0 A48F0026 */  sh    $t7, 0x26($a0)
/* B7BD54 80104BB4 A4890020 */  sh    $t1, 0x20($a0)
/* B7BD58 80104BB8 14A00002 */  bnez  $a1, .L80104BC4
/* B7BD5C 80104BBC 00000000 */   nop   
/* B7BD60 80104BC0 0007000D */  break 7
.L80104BC4:
/* B7BD64 80104BC4 2401FFFF */  li    $at, -1
/* B7BD68 80104BC8 14A10004 */  bne   $a1, $at, .L80104BDC
/* B7BD6C 80104BCC 3C018000 */   lui   $at, 0x8000
/* B7BD70 80104BD0 15410002 */  bne   $t2, $at, .L80104BDC
/* B7BD74 80104BD4 00000000 */   nop   
/* B7BD78 80104BD8 0006000D */  break 6
.L80104BDC:
/* B7BD7C 80104BDC A48C0022 */  sh    $t4, 0x22($a0)
/* B7BD80 80104BE0 03E00008 */  jr    $ra
/* B7BD84 80104BE4 00000000 */   nop   

.L80104BE8:
/* B7BD88 80104BE8 948D0006 */  lhu   $t5, 6($a0)
/* B7BD8C 80104BEC 94890002 */  lhu   $t1, 2($a0)
/* B7BD90 80104BF0 00602825 */  move  $a1, $v1
/* B7BD94 80104BF4 006D7007 */  srav  $t6, $t5, $v1
/* B7BD98 80104BF8 25D80003 */  addiu $t8, $t6, 3
/* B7BD9C 80104BFC 330FFFFF */  andi  $t7, $t8, 0xffff
/* B7BDA0 80104C00 004F001A */  div   $zero, $v0, $t7
/* B7BDA4 80104C04 0000C812 */  mflo  $t9
/* B7BDA8 80104C08 00A95007 */  srav  $t2, $t1, $a1
/* B7BDAC 80104C0C 00194080 */  sll   $t0, $t9, 2
/* B7BDB0 80104C10 000A5840 */  sll   $t3, $t2, 1
/* B7BDB4 80104C14 316CFFFF */  andi  $t4, $t3, 0xffff
/* B7BDB8 80104C18 3106FFFF */  andi  $a2, $t0, 0xffff
/* B7BDBC 80104C1C 00CC0019 */  multu $a2, $t4
/* B7BDC0 80104C20 A498001C */  sh    $t8, 0x1c($a0)
/* B7BDC4 80104C24 24D8FFFF */  addiu $t8, $a2, -1
/* B7BDC8 80104C28 15E00002 */  bnez  $t7, .L80104C34
/* B7BDCC 80104C2C 00000000 */   nop   
/* B7BDD0 80104C30 0007000D */  break 7
.L80104C34:
/* B7BDD4 80104C34 2401FFFF */  li    $at, -1
/* B7BDD8 80104C38 15E10004 */  bne   $t7, $at, .L80104C4C
/* B7BDDC 80104C3C 3C018000 */   lui   $at, 0x8000
/* B7BDE0 80104C40 14410002 */  bne   $v0, $at, .L80104C4C
/* B7BDE4 80104C44 00000000 */   nop   
/* B7BDE8 80104C48 0006000D */  break 6
.L80104C4C:
/* B7BDEC 80104C4C 00003812 */  mflo  $a3
/* B7BDF0 80104C50 00076C02 */  srl   $t5, $a3, 0x10
/* B7BDF4 80104C54 30EEFFFF */  andi  $t6, $a3, 0xffff
/* B7BDF8 80104C58 A488001E */  sh    $t0, 0x1e($a0)
/* B7BDFC 80104C5C A48B0024 */  sh    $t3, 0x24($a0)
/* B7BE00 80104C60 A48D0026 */  sh    $t5, 0x26($a0)
/* B7BE04 80104C64 A48E0020 */  sh    $t6, 0x20($a0)
/* B7BE08 80104C68 A4980022 */  sh    $t8, 0x22($a0)
/* B7BE0C 80104C6C 03E00008 */  jr    $ra
/* B7BE10 80104C70 00000000 */   nop   
