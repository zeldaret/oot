.rdata
glabel D_8013C160
    .asciz "Ｍｏｄｅ=%d  eye.x=%f,  eye.z=%f  kscp_pos=%d\n"
    # EUC-JP: Ｍｏｄｅ
    .balign 4

.text
glabel func_8006EA30
/* AE5BD0 8006EA30 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AE5BD4 8006EA34 3C010001 */  lui   $at, 1
/* AE5BD8 8006EA38 AFBF0024 */  sw    $ra, 0x24($sp)
/* AE5BDC 8006EA3C 00811821 */  addu  $v1, $a0, $at
/* AE5BE0 8006EA40 946E0934 */  lhu   $t6, 0x934($v1)
/* AE5BE4 8006EA44 3C010001 */  lui   $at, (0x00010760 >> 16) # lui $at, 1
/* AE5BE8 8006EA48 34210760 */  ori   $at, (0x00010760 & 0xFFFF) # ori $at, $at, 0x760
/* AE5BEC 8006EA4C 15C000A5 */  bnez  $t6, .L8006ECE4
/* AE5BF0 8006EA50 00814021 */   addu  $t0, $a0, $at
/* AE5BF4 8006EA54 950F01D6 */  lhu   $t7, 0x1d6($t0)
/* AE5BF8 8006EA58 55E000A3 */  bnezl $t7, .L8006ECE8
/* AE5BFC 8006EA5C 8FBF0024 */   lw    $ra, 0x24($sp)
/* AE5C00 8006EA60 94780A20 */  lhu   $t8, 0xa20($v1)
/* AE5C04 8006EA64 570000A0 */  bnezl $t8, .L8006ECE8
/* AE5C08 8006EA68 8FBF0024 */   lw    $ra, 0x24($sp)
/* AE5C0C 8006EA6C 80791E15 */  lb    $t9, 0x1e15($v1)
/* AE5C10 8006EA70 5720009D */  bnezl $t9, .L8006ECE8
/* AE5C14 8006EA74 8FBF0024 */   lw    $ra, 0x24($sp)
/* AE5C18 8006EA78 906B241B */  lbu   $t3, 0x241b($v1)
/* AE5C1C 8006EA7C 3C068016 */  lui   $a2, %hi(gSaveContext) # $a2, 0x8016
/* AE5C20 8006EA80 24C6E660 */  addiu $a2, %lo(gSaveContext) # addiu $a2, $a2, -0x19a0
/* AE5C24 8006EA84 55600098 */  bnezl $t3, .L8006ECE8
/* AE5C28 8006EA88 8FBF0024 */   lw    $ra, 0x24($sp)
/* AE5C2C 8006EA8C 8CCC0008 */  lw    $t4, 8($a2)
/* AE5C30 8006EA90 3402FFF0 */  li    $v0, 65520
/* AE5C34 8006EA94 0182082A */  slt   $at, $t4, $v0
/* AE5C38 8006EA98 50200093 */  beql  $at, $zero, .L8006ECE8
/* AE5C3C 8006EA9C 8FBF0024 */   lw    $ra, 0x24($sp)
/* AE5C40 8006EAA0 94CD1412 */  lhu   $t5, 0x1412($a2)
/* AE5C44 8006EAA4 01A2082A */  slt   $at, $t5, $v0
/* AE5C48 8006EAA8 5020008F */  beql  $at, $zero, .L8006ECE8
/* AE5C4C 8006EAAC 8FBF0024 */   lw    $ra, 0x24($sp)
/* AE5C50 8006EAB0 AFA30028 */  sw    $v1, 0x28($sp)
/* AE5C54 8006EAB4 AFA40038 */  sw    $a0, 0x38($sp)
/* AE5C58 8006EAB8 0C02FF21 */  jal   func_800BFC84
/* AE5C5C 8006EABC AFA8002C */   sw    $t0, 0x2c($sp)
/* AE5C60 8006EAC0 3C068016 */  lui   $a2, %hi(gSaveContext) # $a2, 0x8016
/* AE5C64 8006EAC4 24C6E660 */  addiu $a2, %lo(gSaveContext) # addiu $a2, $a2, -0x19a0
/* AE5C68 8006EAC8 8FA30028 */  lw    $v1, 0x28($sp)
/* AE5C6C 8006EACC 8FA40038 */  lw    $a0, 0x38($sp)
/* AE5C70 8006EAD0 14400084 */  bnez  $v0, .L8006ECE4
/* AE5C74 8006EAD4 8FA8002C */   lw    $t0, 0x2c($sp)
/* AE5C78 8006EAD8 806E1E5C */  lb    $t6, 0x1e5c($v1)
/* AE5C7C 8006EADC 29C10002 */  slti  $at, $t6, 2
/* AE5C80 8006EAE0 50200081 */  beql  $at, $zero, .L8006ECE8
/* AE5C84 8006EAE4 8FBF0024 */   lw    $ra, 0x24($sp)
/* AE5C88 8006EAE8 84C213F0 */  lh    $v0, 0x13f0($a2)
/* AE5C8C 8006EAEC 24010008 */  li    $at, 8
/* AE5C90 8006EAF0 1041007C */  beq   $v0, $at, .L8006ECE4
/* AE5C94 8006EAF4 24010009 */   li    $at, 9
/* AE5C98 8006EAF8 5041007B */  beql  $v0, $at, .L8006ECE8
/* AE5C9C 8006EAFC 8FBF0024 */   lw    $ra, 0x24($sp)
/* AE5CA0 8006EB00 848F00A4 */  lh    $t7, 0xa4($a0)
/* AE5CA4 8006EB04 2401004B */  li    $at, 75
/* AE5CA8 8006EB08 24050038 */  li    $a1, 56
/* AE5CAC 8006EB0C 55E1000A */  bnel  $t7, $at, .L8006EB38
/* AE5CB0 8006EB10 24820014 */   addiu $v0, $a0, 0x14
/* AE5CB4 8006EB14 AFA40038 */  sw    $a0, 0x38($sp)
/* AE5CB8 8006EB18 0C00B2D0 */  jal   Flags_GetSwitch
/* AE5CBC 8006EB1C AFA8002C */   sw    $t0, 0x2c($sp)
/* AE5CC0 8006EB20 3C068016 */  lui   $a2, %hi(gSaveContext) # $a2, 0x8016
/* AE5CC4 8006EB24 24C6E660 */  addiu $a2, %lo(gSaveContext) # addiu $a2, $a2, -0x19a0
/* AE5CC8 8006EB28 8FA40038 */  lw    $a0, 0x38($sp)
/* AE5CCC 8006EB2C 1440006D */  bnez  $v0, .L8006ECE4
/* AE5CD0 8006EB30 8FA8002C */   lw    $t0, 0x2c($sp)
/* AE5CD4 8006EB34 24820014 */  addiu $v0, $a0, 0x14
.L8006EB38:
/* AE5CD8 8006EB38 94580000 */  lhu   $t8, ($v0)
/* AE5CDC 8006EB3C 2401FFDF */  li    $at, -33
/* AE5CE0 8006EB40 0301C827 */  nor   $t9, $t8, $at
/* AE5CE4 8006EB44 5720000F */  bnezl $t9, .L8006EB84
/* AE5CE8 8006EB48 9458000C */   lhu   $t8, 0xc($v0)
/* AE5CEC 8006EB4C 944B000C */  lhu   $t3, 0xc($v0)
/* AE5CF0 8006EB50 2401FFF7 */  li    $at, -9
/* AE5CF4 8006EB54 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AE5CF8 8006EB58 01616027 */  nor   $t4, $t3, $at
/* AE5CFC 8006EB5C 15800008 */  bnez  $t4, .L8006EB80
/* AE5D00 8006EB60 2529FA90 */   addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* AE5D04 8006EB64 8D2D0000 */  lw    $t5, ($t1)
/* AE5D08 8006EB68 240F0003 */  li    $t7, 3
/* AE5D0C 8006EB6C 85AE12D4 */  lh    $t6, 0x12d4($t5)
/* AE5D10 8006EB70 51C0004B */  beql  $t6, $zero, .L8006ECA0
/* AE5D14 8006EB74 950B01D4 */   lhu   $t3, 0x1d4($t0)
/* AE5D18 8006EB78 10000048 */  b     .L8006EC9C
/* AE5D1C 8006EB7C A50F01D6 */   sh    $t7, 0x1d6($t0)
.L8006EB80:
/* AE5D20 8006EB80 9458000C */  lhu   $t8, 0xc($v0)
.L8006EB84:
/* AE5D24 8006EB84 2401EFFF */  li    $at, -4097
/* AE5D28 8006EB88 0301C827 */  nor   $t9, $t8, $at
/* AE5D2C 8006EB8C 17200043 */  bnez  $t9, .L8006EC9C
/* AE5D30 8006EB90 3C098016 */   lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AE5D34 8006EB94 94CB13EA */  lhu   $t3, 0x13ea($a2)
/* AE5D38 8006EB98 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* AE5D3C 8006EB9C 8D2D0000 */  lw    $t5, ($t1)
/* AE5D40 8006EBA0 240CFF51 */  li    $t4, -175
/* AE5D44 8006EBA4 A4CB13EE */  sh    $t3, 0x13ee($a2)
/* AE5D48 8006EBA8 A5AC0DB4 */  sh    $t4, 0xdb4($t5)
/* AE5D4C 8006EBAC 8D2F0000 */  lw    $t7, ($t1)
/* AE5D50 8006EBB0 240E009B */  li    $t6, 155
/* AE5D54 8006EBB4 240A0001 */  li    $t2, 1
/* AE5D58 8006EBB8 A5EE0DB6 */  sh    $t6, 0xdb6($t7)
/* AE5D5C 8006EBBC A50001EA */  sh    $zero, 0x1ea($t0)
/* AE5D60 8006EBC0 A50A01E4 */  sh    $t2, 0x1e4($t0)
/* AE5D64 8006EBC4 8D380000 */  lw    $t8, ($t1)
/* AE5D68 8006EBC8 3C048014 */  lui   $a0, %hi(D_8013C160) # $a0, 0x8014
/* AE5D6C 8006EBCC 2484C160 */  addiu $a0, %lo(D_8013C160) # addiu $a0, $a0, -0x3ea0
/* AE5D70 8006EBD0 871907F4 */  lh    $t9, 0x7f4($t8)
/* AE5D74 8006EBD4 57200012 */  bnezl $t9, .L8006EC20
/* AE5D78 8006EBD8 950201E8 */   lhu   $v0, 0x1e8($t0)
/* AE5D7C 8006EBDC 950201E8 */  lhu   $v0, 0x1e8($t0)
/* AE5D80 8006EBE0 3C018012 */  lui   $at, %hi(D_8011FAA8)
/* AE5D84 8006EBE4 3C0C8012 */  lui   $t4, %hi(D_8011FAA0)
/* AE5D88 8006EBE8 00021880 */  sll   $v1, $v0, 2
/* AE5D8C 8006EBEC 00230821 */  addu  $at, $at, $v1
/* AE5D90 8006EBF0 C424FAA8 */  lwc1  $f4, %lo(D_8011FAA8)($at)
/* AE5D94 8006EBF4 3C018012 */  lui   $at, %hi(D_8011FAB8)
/* AE5D98 8006EBF8 00230821 */  addu  $at, $at, $v1
/* AE5D9C 8006EBFC E50401D8 */  swc1  $f4, 0x1d8($t0)
/* AE5DA0 8006EC00 C426FAB8 */  lwc1  $f6, %lo(D_8011FAB8)($at)
/* AE5DA4 8006EC04 00025840 */  sll   $t3, $v0, 1
/* AE5DA8 8006EC08 018B6021 */  addu  $t4, $t4, $t3
/* AE5DAC 8006EC0C E50601E0 */  swc1  $f6, 0x1e0($t0)
/* AE5DB0 8006EC10 858CFAA0 */  lh    $t4, %lo(D_8011FAA0)($t4)
/* AE5DB4 8006EC14 10000010 */  b     .L8006EC58
/* AE5DB8 8006EC18 A50C01E8 */   sh    $t4, 0x1e8($t0)
/* AE5DBC 8006EC1C 950201E8 */  lhu   $v0, 0x1e8($t0)
.L8006EC20:
/* AE5DC0 8006EC20 3C018012 */  lui   $at, %hi(D_8011FAD0)
/* AE5DC4 8006EC24 3C0E8012 */  lui   $t6, %hi(D_8011FAC8)
/* AE5DC8 8006EC28 00021880 */  sll   $v1, $v0, 2
/* AE5DCC 8006EC2C 00230821 */  addu  $at, $at, $v1
/* AE5DD0 8006EC30 C428FAD0 */  lwc1  $f8, %lo(D_8011FAD0)($at)
/* AE5DD4 8006EC34 3C018012 */  lui   $at, %hi(D_8011FAE0)
/* AE5DD8 8006EC38 00230821 */  addu  $at, $at, $v1
/* AE5DDC 8006EC3C E50801D8 */  swc1  $f8, 0x1d8($t0)
/* AE5DE0 8006EC40 C42AFAE0 */  lwc1  $f10, %lo(D_8011FAE0)($at)
/* AE5DE4 8006EC44 00026840 */  sll   $t5, $v0, 1
/* AE5DE8 8006EC48 01CD7021 */  addu  $t6, $t6, $t5
/* AE5DEC 8006EC4C E50A01E0 */  swc1  $f10, 0x1e0($t0)
/* AE5DF0 8006EC50 85CEFAC8 */  lh    $t6, %lo(D_8011FAC8)($t6)
/* AE5DF4 8006EC54 A50E01E8 */  sh    $t6, 0x1e8($t0)
.L8006EC58:
/* AE5DF8 8006EC58 950201E8 */  lhu   $v0, 0x1e8($t0)
/* AE5DFC 8006EC5C C51001D8 */  lwc1  $f16, 0x1d8($t0)
/* AE5E00 8006EC60 C50401E0 */  lwc1  $f4, 0x1e0($t0)
/* AE5E04 8006EC64 0002C040 */  sll   $t8, $v0, 1
/* AE5E08 8006EC68 460084A1 */  cvt.d.s $f18, $f16
/* AE5E0C 8006EC6C 27190001 */  addiu $t9, $t8, 1
/* AE5E10 8006EC70 A51901E6 */  sh    $t9, 0x1e6($t0)
/* AE5E14 8006EC74 A50A01D4 */  sh    $t2, 0x1d4($t0)
/* AE5E18 8006EC78 460021A1 */  cvt.d.s $f6, $f4
/* AE5E1C 8006EC7C 44079000 */  mfc1  $a3, $f18
/* AE5E20 8006EC80 44069800 */  mfc1  $a2, $f19
/* AE5E24 8006EC84 F7A60010 */  sdc1  $f6, 0x10($sp)
/* AE5E28 8006EC88 AFA8002C */  sw    $t0, 0x2c($sp)
/* AE5E2C 8006EC8C 3325FFFF */  andi  $a1, $t9, 0xffff
/* AE5E30 8006EC90 0C00084C */  jal   osSyncPrintf
/* AE5E34 8006EC94 AFA20018 */   sw    $v0, 0x18($sp)
/* AE5E38 8006EC98 8FA8002C */  lw    $t0, 0x2c($sp)
.L8006EC9C:
/* AE5E3C 8006EC9C 950B01D4 */  lhu   $t3, 0x1d4($t0)
.L8006ECA0:
/* AE5E40 8006ECA0 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AE5E44 8006ECA4 24010001 */  li    $at, 1
/* AE5E48 8006ECA8 1561000E */  bne   $t3, $at, .L8006ECE4
/* AE5E4C 8006ECAC 2529FA90 */   addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* AE5E50 8006ECB0 8D2D0000 */  lw    $t5, ($t1)
/* AE5E54 8006ECB4 240CE7A0 */  li    $t4, -6240
/* AE5E58 8006ECB8 240E0002 */  li    $t6, 2
/* AE5E5C 8006ECBC A5AC0D98 */  sh    $t4, 0xd98($t5)
/* AE5E60 8006ECC0 8D2F0000 */  lw    $t7, ($t1)
/* AE5E64 8006ECC4 0C02CE26 */  jal   func_800B3898
/* AE5E68 8006ECC8 A5EE0110 */   sh    $t6, 0x110($t7)
/* AE5E6C 8006ECCC 10400003 */  beqz  $v0, .L8006ECDC
/* AE5E70 8006ECD0 00000000 */   nop   
/* AE5E74 8006ECD4 0C02CE10 */  jal   func_800B3840
/* AE5E78 8006ECD8 00002025 */   move  $a0, $zero
.L8006ECDC:
/* AE5E7C 8006ECDC 0C03D938 */  jal   func_800F64E0
/* AE5E80 8006ECE0 24040001 */   li    $a0, 1
.L8006ECE4:
/* AE5E84 8006ECE4 8FBF0024 */  lw    $ra, 0x24($sp)
.L8006ECE8:
/* AE5E88 8006ECE8 27BD0038 */  addiu $sp, $sp, 0x38
/* AE5E8C 8006ECEC 03E00008 */  jr    $ra
/* AE5E90 8006ECF0 00000000 */   nop   

