.rdata
glabel D_801399CC
    .asciz "attention sound URGENCY\n"
    .balign 4
    
glabel D_801399E8
    .asciz "attention sound NORMAL\n"
    .balign 4
    
glabel D_80139A00
    .asciz "camera: force change SET to %s!\n"
    .balign 4
    
.text
glabel func_80058D34
/* ACFED4 80058D34 3C0E8012 */  lui   $t6, %hi(D_8011D394) # $t6, 0x8012
/* ACFED8 80058D38 8DCED394 */  lw    $t6, %lo(D_8011D394)($t6)
/* ACFEDC 80058D3C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* ACFEE0 80058D40 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACFEE4 80058D44 AFA40020 */  sw    $a0, 0x20($sp)
/* ACFEE8 80058D48 15C0004B */  bnez  $t6, .L80058E78
/* ACFEEC 80058D4C 00003025 */   move  $a2, $zero
/* ACFEF0 80058D50 8C98008C */  lw    $t8, 0x8c($a0)
/* ACFEF4 80058D54 3C088016 */  lui   $t0, %hi(D_8015BD7C) # $t0, 0x8016
/* ACFEF8 80058D58 871907A0 */  lh    $t9, 0x7a0($t8)
/* ACFEFC 80058D5C 57200047 */  bnezl $t9, .L80058E7C
/* ACFF00 80058D60 8FBF0014 */   lw    $ra, 0x14($sp)
/* ACFF04 80058D64 8D08BD7C */  lw    $t0, %lo(D_8015BD7C)($t0)
/* ACFF08 80058D68 2401FFF7 */  li    $at, -9
/* ACFF0C 80058D6C 3C048014 */  lui   $a0, %hi(D_801399CC) # $a0, 0x8014
/* ACFF10 80058D70 95020050 */  lhu   $v0, 0x50($t0)
/* ACFF14 80058D74 248499CC */  addiu $a0, %lo(D_801399CC) # addiu $a0, $a0, -0x6634
/* ACFF18 80058D78 00414827 */  nor   $t1, $v0, $at
/* ACFF1C 80058D7C 5520000A */  bnezl $t1, .L80058DA8
/* ACFF20 80058D80 2401FFFB */   li    $at, -5
/* ACFF24 80058D84 0C00084C */  jal   osSyncPrintf
/* ACFF28 80058D88 AFA0001C */   sw    $zero, 0x1c($sp)
/* ACFF2C 80058D8C 0C01E221 */  jal   func_80078884
/* ACFF30 80058D90 24044837 */   li    $a0, 18487
/* ACFF34 80058D94 3C0A8016 */  lui   $t2, %hi(D_8015BD7C) # $t2, 0x8016
/* ACFF38 80058D98 8D4ABD7C */  lw    $t2, %lo(D_8015BD7C)($t2)
/* ACFF3C 80058D9C 8FA6001C */  lw    $a2, 0x1c($sp)
/* ACFF40 80058DA0 95420050 */  lhu   $v0, 0x50($t2)
/* ACFF44 80058DA4 2401FFFB */  li    $at, -5
.L80058DA8:
/* ACFF48 80058DA8 00415827 */  nor   $t3, $v0, $at
/* ACFF4C 80058DAC 1560000A */  bnez  $t3, .L80058DD8
/* ACFF50 80058DB0 3C048014 */   lui   $a0, %hi(D_801399E8) # $a0, 0x8014
/* ACFF54 80058DB4 248499E8 */  addiu $a0, %lo(D_801399E8) # addiu $a0, $a0, -0x6618
/* ACFF58 80058DB8 0C00084C */  jal   osSyncPrintf
/* ACFF5C 80058DBC AFA6001C */   sw    $a2, 0x1c($sp)
/* ACFF60 80058DC0 0C01E221 */  jal   func_80078884
/* ACFF64 80058DC4 2404480C */   li    $a0, 18444
/* ACFF68 80058DC8 3C0C8016 */  lui   $t4, %hi(D_8015BD7C) # $t4, 0x8016
/* ACFF6C 80058DCC 8D8CBD7C */  lw    $t4, %lo(D_8015BD7C)($t4)
/* ACFF70 80058DD0 8FA6001C */  lw    $a2, 0x1c($sp)
/* ACFF74 80058DD4 95820050 */  lhu   $v0, 0x50($t4)
.L80058DD8:
/* ACFF78 80058DD8 2401FFFE */  li    $at, -2
/* ACFF7C 80058DDC 00416827 */  nor   $t5, $v0, $at
/* ACFF80 80058DE0 15A00002 */  bnez  $t5, .L80058DEC
/* ACFF84 80058DE4 2401FFFD */   li    $at, -3
/* ACFF88 80058DE8 24060001 */  li    $a2, 1
.L80058DEC:
/* ACFF8C 80058DEC 00417027 */  nor   $t6, $v0, $at
/* ACFF90 80058DF0 15C00002 */  bnez  $t6, .L80058DFC
/* ACFF94 80058DF4 3C038012 */   lui   $v1, %hi(D_8011D398) # $v1, 0x8012
/* ACFF98 80058DF8 2406FFFF */  li    $a2, -1
.L80058DFC:
/* ACFF9C 80058DFC 10C0001E */  beqz  $a2, .L80058E78
/* ACFFA0 80058E00 2463D398 */   addiu $v1, %lo(D_8011D398) # addiu $v1, $v1, -0x2c68
/* ACFFA4 80058E04 8C6F0000 */  lw    $t7, ($v1)
/* ACFFA8 80058E08 24010006 */  li    $at, 6
/* ACFFAC 80058E0C 3C058012 */  lui   $a1, %hi(D_8011DAFC)
/* ACFFB0 80058E10 01E6C021 */  addu  $t8, $t7, $a2
/* ACFFB4 80058E14 0301001A */  div   $zero, $t8, $at
/* ACFFB8 80058E18 0000C810 */  mfhi  $t9
/* ACFFBC 80058E1C 00194840 */  sll   $t1, $t9, 1
/* ACFFC0 80058E20 AC790000 */  sw    $t9, ($v1)
/* ACFFC4 80058E24 00A92821 */  addu  $a1, $a1, $t1
/* ACFFC8 80058E28 84A5DAFC */  lh    $a1, %lo(D_8011DAFC)($a1)
/* ACFFCC 80058E2C 0C0169DF */  jal   func_8005A77C
/* ACFFD0 80058E30 8FA40020 */   lw    $a0, 0x20($sp)
/* ACFFD4 80058E34 3C038012 */  lui   $v1, %hi(D_8011D398) # $v1, 0x8012
/* ACFFD8 80058E38 1840000F */  blez  $v0, .L80058E78
/* ACFFDC 80058E3C 2463D398 */   addiu $v1, %lo(D_8011D398) # addiu $v1, $v1, -0x2c68
/* ACFFE0 80058E40 8C6A0000 */  lw    $t2, ($v1)
/* ACFFE4 80058E44 3C0C8012 */  lui   $t4, %hi(D_8011DAFC)
/* ACFFE8 80058E48 3C0E8012 */  lui   $t6, %hi(D_80119F8C) # $t6, 0x8012
/* ACFFEC 80058E4C 000A5840 */  sll   $t3, $t2, 1
/* ACFFF0 80058E50 018B6021 */  addu  $t4, $t4, $t3
/* ACFFF4 80058E54 858CDAFC */  lh    $t4, %lo(D_8011DAFC)($t4)
/* ACFFF8 80058E58 25CE9F8C */  addiu $t6, %lo(D_80119F8C) # addiu $t6, $t6, -0x6074
/* ACFFFC 80058E5C 3C048014 */  lui   $a0, %hi(D_80139A00) # $a0, 0x8014
/* AD0000 80058E60 000C6880 */  sll   $t5, $t4, 2
/* AD0004 80058E64 01AC6823 */  subu  $t5, $t5, $t4
/* AD0008 80058E68 000D6880 */  sll   $t5, $t5, 2
/* AD000C 80058E6C 01AE2821 */  addu  $a1, $t5, $t6
/* AD0010 80058E70 0C00084C */  jal   osSyncPrintf
/* AD0014 80058E74 24849A00 */   addiu $a0, %lo(D_80139A00) # addiu $a0, $a0, -0x6600
.L80058E78:
/* AD0018 80058E78 8FBF0014 */  lw    $ra, 0x14($sp)
.L80058E7C:
/* AD001C 80058E7C 27BD0020 */  addiu $sp, $sp, 0x20
/* AD0020 80058E80 24020001 */  li    $v0, 1
/* AD0024 80058E84 03E00008 */  jr    $ra
/* AD0028 80058E88 00000000 */   nop   

