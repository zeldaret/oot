.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800AD920
/* B24AC0 800AD920 240200FF */  li    $v0, 255
/* B24AC4 800AD924 AC800000 */  sw    $zero, ($a0)
/* B24AC8 800AD928 AC800004 */  sw    $zero, 4($a0)
/* B24ACC 800AD92C A0820008 */  sb    $v0, 8($a0)
/* B24AD0 800AD930 A0820009 */  sb    $v0, 9($a0)
/* B24AD4 800AD934 A082000A */  sb    $v0, 0xa($a0)
/* B24AD8 800AD938 A082000B */  sb    $v0, 0xb($a0)
/* B24ADC 800AD93C A082000F */  sb    $v0, 0xf($a0)
/* B24AE0 800AD940 A080000C */  sb    $zero, 0xc($a0)
/* B24AE4 800AD944 A080000D */  sb    $zero, 0xd($a0)
/* B24AE8 800AD948 03E00008 */  jr    $ra
/* B24AEC 800AD94C A080000E */   sb    $zero, 0xe($a0)

glabel func_800AD950
/* B24AF0 800AD950 03E00008 */  jr    $ra
/* B24AF4 800AD954 AFA40000 */   sw    $a0, ($sp)

glabel func_800AD958
/* B24AF8 800AD958 27BDFFF8 */  addiu $sp, $sp, -8
/* B24AFC 800AD95C AFB00004 */  sw    $s0, 4($sp)
/* B24B00 800AD960 AFA5000C */  sw    $a1, 0xc($sp)
/* B24B04 800AD964 8C8F0000 */  lw    $t7, ($a0)
/* B24B08 800AD968 3C060E00 */  lui   $a2, 0xe00
/* B24B0C 800AD96C 8CA20000 */  lw    $v0, ($a1)
/* B24B10 800AD970 15E00003 */  bnez  $t7, .L800AD980
/* B24B14 800AD974 24C60000 */   addiu $a2, $a2, 0
/* B24B18 800AD978 10000002 */  b     .L800AD984
/* B24B1C 800AD97C 24030003 */   li    $v1, 3
.L800AD980:
/* B24B20 800AD980 00001825 */  move  $v1, $zero
.L800AD984:
/* B24B24 800AD984 00402825 */  move  $a1, $v0
/* B24B28 800AD988 3C18E700 */  lui   $t8, 0xe700
/* B24B2C 800AD98C ACB80000 */  sw    $t8, ($a1)
/* B24B30 800AD990 ACA00004 */  sw    $zero, 4($a1)
/* B24B34 800AD994 8C990004 */  lw    $t9, 4($a0)
/* B24B38 800AD998 24010001 */  li    $at, 1
/* B24B3C 800AD99C 24420008 */  addiu $v0, $v0, 8
/* B24B40 800AD9A0 17210008 */  bne   $t9, $at, .L800AD9C4
/* B24B44 800AD9A4 3C18EF00 */   lui   $t8, (0xEF000C30 >> 16) # lui $t8, 0xef00
/* B24B48 800AD9A8 00402825 */  move  $a1, $v0
/* B24B4C 800AD9AC 3C0F0050 */  lui   $t7, (0x005003C0 >> 16) # lui $t7, 0x50
/* B24B50 800AD9B0 35EF03C0 */  ori   $t7, (0x005003C0 & 0xFFFF) # ori $t7, $t7, 0x3c0
/* B24B54 800AD9B4 3C0EED00 */  lui   $t6, 0xed00
/* B24B58 800AD9B8 ACAE0000 */  sw    $t6, ($a1)
/* B24B5C 800AD9BC ACAF0004 */  sw    $t7, 4($a1)
/* B24B60 800AD9C0 24420008 */  addiu $v0, $v0, 8
.L800AD9C4:
/* B24B64 800AD9C4 00402825 */  move  $a1, $v0
/* B24B68 800AD9C8 3C190F0A */  lui   $t9, (0x0F0A4004 >> 16) # lui $t9, 0xf0a
/* B24B6C 800AD9CC 37394004 */  ori   $t9, (0x0F0A4004 & 0xFFFF) # ori $t9, $t9, 0x4004
/* B24B70 800AD9D0 37180C30 */  ori   $t8, (0xEF000C30 & 0xFFFF) # ori $t8, $t8, 0xc30
/* B24B74 800AD9D4 ACB80000 */  sw    $t8, ($a1)
/* B24B78 800AD9D8 ACB90004 */  sw    $t9, 4($a1)
/* B24B7C 800AD9DC 24420008 */  addiu $v0, $v0, 8
/* B24B80 800AD9E0 00402825 */  move  $a1, $v0
/* B24B84 800AD9E4 3C0EFC30 */  lui   $t6, (0xFC30B261 >> 16) # lui $t6, 0xfc30
/* B24B88 800AD9E8 3C0F5566 */  lui   $t7, (0x5566DB6D >> 16) # lui $t7, 0x5566
/* B24B8C 800AD9EC 35EFDB6D */  ori   $t7, (0x5566DB6D & 0xFFFF) # ori $t7, $t7, 0xdb6d
/* B24B90 800AD9F0 35CEB261 */  ori   $t6, (0xFC30B261 & 0xFFFF) # ori $t6, $t6, 0xb261
/* B24B94 800AD9F4 ACAE0000 */  sw    $t6, ($a1)
/* B24B98 800AD9F8 ACAF0004 */  sw    $t7, 4($a1)
/* B24B9C 800AD9FC 24420008 */  addiu $v0, $v0, 8
/* B24BA0 800ADA00 00402825 */  move  $a1, $v0
/* B24BA4 800ADA04 3C18FA00 */  lui   $t8, 0xfa00
/* B24BA8 800ADA08 ACB80000 */  sw    $t8, ($a1)
/* B24BAC 800ADA0C 8C990008 */  lw    $t9, 8($a0)
/* B24BB0 800ADA10 24420008 */  addiu $v0, $v0, 8
/* B24BB4 800ADA14 3C0EFB00 */  lui   $t6, 0xfb00
/* B24BB8 800ADA18 ACB90004 */  sw    $t9, 4($a1)
/* B24BBC 800ADA1C 00402825 */  move  $a1, $v0
/* B24BC0 800ADA20 30690007 */  andi  $t1, $v1, 7
/* B24BC4 800ADA24 ACAE0000 */  sw    $t6, ($a1)
/* B24BC8 800ADA28 00094D40 */  sll   $t1, $t1, 0x15
/* B24BCC 800ADA2C 3C01FD00 */  lui   $at, 0xfd00
/* B24BD0 800ADA30 8C8F000C */  lw    $t7, 0xc($a0)
/* B24BD4 800ADA34 01213825 */  or    $a3, $t1, $at
/* B24BD8 800ADA38 3C010010 */  lui   $at, 0x10
/* B24BDC 800ADA3C 00E13825 */  or    $a3, $a3, $at
/* B24BE0 800ADA40 3C01F500 */  lui   $at, 0xf500
/* B24BE4 800ADA44 ACAF0004 */  sw    $t7, 4($a1)
/* B24BE8 800ADA48 01212825 */  or    $a1, $t1, $at
/* B24BEC 800ADA4C 3C010010 */  lui   $at, 0x10
/* B24BF0 800ADA50 00A12825 */  or    $a1, $a1, $at
/* B24BF4 800ADA54 3C090708 */  lui   $t1, (0x07080200 >> 16) # lui $t1, 0x708
/* B24BF8 800ADA58 3C0D0008 */  lui   $t5, (0x00080200 >> 16) # lui $t5, 8
/* B24BFC 800ADA5C 24420008 */  addiu $v0, $v0, 8
/* B24C00 800ADA60 35AD0200 */  ori   $t5, (0x00080200 & 0xFFFF) # ori $t5, $t5, 0x200
/* B24C04 800ADA64 35290200 */  ori   $t1, (0x07080200 & 0xFFFF) # ori $t1, $t1, 0x200
/* B24C08 800ADA68 34A8A000 */  ori   $t0, $a1, 0xa000
/* B24C0C 800ADA6C 00002025 */  move  $a0, $zero
/* B24C10 800ADA70 3C0C0700 */  lui   $t4, 0x700
/* B24C14 800ADA74 3C0BF300 */  lui   $t3, 0xf300
/* B24C18 800ADA78 3C0AE600 */  lui   $t2, 0xe600
.L800ADA7C:
/* B24C1C 800ADA7C 00401825 */  move  $v1, $v0
/* B24C20 800ADA80 AC670000 */  sw    $a3, ($v1)
/* B24C24 800ADA84 AC660004 */  sw    $a2, 4($v1)
/* B24C28 800ADA88 24420008 */  addiu $v0, $v0, 8
/* B24C2C 800ADA8C 00401825 */  move  $v1, $v0
/* B24C30 800ADA90 AC650000 */  sw    $a1, ($v1)
/* B24C34 800ADA94 AC690004 */  sw    $t1, 4($v1)
/* B24C38 800ADA98 24420008 */  addiu $v0, $v0, 8
/* B24C3C 800ADA9C 00401825 */  move  $v1, $v0
/* B24C40 800ADAA0 2410077F */  li    $s0, 1919
/* B24C44 800ADAA4 32180FFF */  andi  $t8, $s0, 0xfff
/* B24C48 800ADAA8 AC6A0000 */  sw    $t2, ($v1)
/* B24C4C 800ADAAC AC600004 */  sw    $zero, 4($v1)
/* B24C50 800ADAB0 24420008 */  addiu $v0, $v0, 8
/* B24C54 800ADAB4 00401825 */  move  $v1, $v0
/* B24C58 800ADAB8 0018CB00 */  sll   $t9, $t8, 0xc
/* B24C5C 800ADABC 032C7025 */  or    $t6, $t9, $t4
/* B24C60 800ADAC0 35CF001A */  ori   $t7, $t6, 0x1a
/* B24C64 800ADAC4 AC6F0004 */  sw    $t7, 4($v1)
/* B24C68 800ADAC8 AC6B0000 */  sw    $t3, ($v1)
/* B24C6C 800ADACC 24420008 */  addiu $v0, $v0, 8
/* B24C70 800ADAD0 00401825 */  move  $v1, $v0
/* B24C74 800ADAD4 3C18E700 */  lui   $t8, 0xe700
/* B24C78 800ADAD8 AC780000 */  sw    $t8, ($v1)
/* B24C7C 800ADADC AC600004 */  sw    $zero, 4($v1)
/* B24C80 800ADAE0 24420008 */  addiu $v0, $v0, 8
/* B24C84 800ADAE4 00401825 */  move  $v1, $v0
/* B24C88 800ADAE8 AC680000 */  sw    $t0, ($v1)
/* B24C8C 800ADAEC AC6D0004 */  sw    $t5, 4($v1)
/* B24C90 800ADAF0 24420008 */  addiu $v0, $v0, 8
/* B24C94 800ADAF4 00401825 */  move  $v1, $v0
/* B24C98 800ADAF8 3C0E004F */  lui   $t6, (0x004FC014 >> 16) # lui $t6, 0x4f
/* B24C9C 800ADAFC 35CEC014 */  ori   $t6, (0x004FC014 & 0xFFFF) # ori $t6, $t6, 0xc014
/* B24CA0 800ADB00 3C19F200 */  lui   $t9, 0xf200
/* B24CA4 800ADB04 AC790000 */  sw    $t9, ($v1)
/* B24CA8 800ADB08 AC6E0004 */  sw    $t6, 4($v1)
/* B24CAC 800ADB0C 24830006 */  addiu $v1, $a0, 6
/* B24CB0 800ADB10 24420008 */  addiu $v0, $v0, 8
/* B24CB4 800ADB14 00037880 */  sll   $t7, $v1, 2
/* B24CB8 800ADB18 31F80FFF */  andi  $t8, $t7, 0xfff
/* B24CBC 800ADB1C 00408025 */  move  $s0, $v0
/* B24CC0 800ADB20 00047080 */  sll   $t6, $a0, 2
/* B24CC4 800ADB24 24420008 */  addiu $v0, $v0, 8
/* B24CC8 800ADB28 3C01E450 */  lui   $at, 0xe450
/* B24CCC 800ADB2C 0301C825 */  or    $t9, $t8, $at
/* B24CD0 800ADB30 00402025 */  move  $a0, $v0
/* B24CD4 800ADB34 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B24CD8 800ADB38 AE0F0004 */  sw    $t7, 4($s0)
/* B24CDC 800ADB3C AE190000 */  sw    $t9, ($s0)
/* B24CE0 800ADB40 3C18E100 */  lui   $t8, 0xe100
/* B24CE4 800ADB44 AC980000 */  sw    $t8, ($a0)
/* B24CE8 800ADB48 AC800004 */  sw    $zero, 4($a0)
/* B24CEC 800ADB4C 24420008 */  addiu $v0, $v0, 8
/* B24CF0 800ADB50 00402025 */  move  $a0, $v0
/* B24CF4 800ADB54 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* B24CF8 800ADB58 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* B24CFC 800ADB5C 3C19F100 */  lui   $t9, 0xf100
/* B24D00 800ADB60 286100EB */  slti  $at, $v1, 0xeb
/* B24D04 800ADB64 AC990000 */  sw    $t9, ($a0)
/* B24D08 800ADB68 AC8E0004 */  sw    $t6, 4($a0)
/* B24D0C 800ADB6C 00602025 */  move  $a0, $v1
/* B24D10 800ADB70 24420008 */  addiu $v0, $v0, 8
/* B24D14 800ADB74 1420FFC1 */  bnez  $at, .L800ADA7C
/* B24D18 800ADB78 24C60F00 */   addiu $a2, $a2, 0xf00
/* B24D1C 800ADB7C 00401825 */  move  $v1, $v0
/* B24D20 800ADB80 3C0FE700 */  lui   $t7, 0xe700
/* B24D24 800ADB84 AC6F0000 */  sw    $t7, ($v1)
/* B24D28 800ADB88 AC600004 */  sw    $zero, 4($v1)
/* B24D2C 800ADB8C 8FB8000C */  lw    $t8, 0xc($sp)
/* B24D30 800ADB90 24420008 */  addiu $v0, $v0, 8
/* B24D34 800ADB94 AF020000 */  sw    $v0, ($t8)
/* B24D38 800ADB98 8FB00004 */  lw    $s0, 4($sp)
/* B24D3C 800ADB9C 03E00008 */  jr    $ra
/* B24D40 800ADBA0 27BD0008 */   addiu $sp, $sp, 8
