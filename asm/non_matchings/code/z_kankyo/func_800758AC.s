glabel func_800758AC
/* AECA4C 800758AC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AECA50 800758B0 3C010001 */  lui   $at, 1
/* AECA54 800758B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AECA58 800758B8 AFA40020 */  sw    $a0, 0x20($sp)
/* AECA5C 800758BC 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AECA60 800758C0 00240821 */  addu  $at, $at, $a0
/* AECA64 800758C4 240E00FF */  li    $t6, 255
/* AECA68 800758C8 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AECA6C 800758CC A02E0B04 */  sb    $t6, 0xb04($at)
/* AECA70 800758D0 8D020000 */  lw    $v0, ($t0)
/* AECA74 800758D4 240104DE */  li    $at, 1246
/* AECA78 800758D8 10410003 */  beq   $v0, $at, .L800758E8
/* AECA7C 800758DC 240105E0 */   li    $at, 1504
/* AECA80 800758E0 54410007 */  bnel  $v0, $at, .L80075900
/* AECA84 800758E4 9503140E */   lhu   $v1, 0x140e($t0)
.L800758E8:
/* AECA88 800758E8 0C03DBED */  jal   func_800F6FB4
/* AECA8C 800758EC 24040004 */   li    $a0, 4
/* AECA90 800758F0 3C038016 */  lui   $v1, %hi(gSaveContext+0x140e) # $v1, 0x8016
/* AECA94 800758F4 10000071 */  b     .L80075ABC
/* AECA98 800758F8 9463FA6E */   lhu   $v1, %lo(gSaveContext+0x140e)($v1)
/* AECA9C 800758FC 9503140E */  lhu   $v1, 0x140e($t0)
.L80075900:
/* AECAA0 80075900 8FB80020 */  lw    $t8, 0x20($sp)
/* AECAA4 80075904 5060000C */  beql  $v1, $zero, .L80075938
/* AECAA8 80075908 930407A4 */   lbu   $a0, 0x7a4($t8)
/* AECAAC 8007590C 0C01DD80 */  jal   func_80077600
/* AECAB0 80075910 00000000 */   nop   
/* AECAB4 80075914 14400003 */  bnez  $v0, .L80075924
/* AECAB8 80075918 3C028016 */   lui   $v0, %hi(gSaveContext+0x140e) # $v0, 0x8016
/* AECABC 8007591C 0C03E803 */  jal   Audio_SetBGM
/* AECAC0 80075920 9444FA6E */   lhu   $a0, %lo(gSaveContext+0x140e)($v0)
.L80075924:
/* AECAC4 80075924 3C018016 */  lui   $at, %hi(gSaveContext+0x140e) # $at, 0x8016
/* AECAC8 80075928 A420FA6E */  sh    $zero, %lo(gSaveContext+0x140e)($at)
/* AECACC 8007592C 10000063 */  b     .L80075ABC
/* AECAD0 80075930 00001825 */   move  $v1, $zero
/* AECAD4 80075934 930407A4 */  lbu   $a0, 0x7a4($t8)
.L80075938:
/* AECAD8 80075938 2401007F */  li    $at, 127
/* AECADC 8007593C 8FA90020 */  lw    $t1, 0x20($sp)
/* AECAE0 80075940 1481000D */  bne   $a0, $at, .L80075978
/* AECAE4 80075944 00803825 */   move  $a3, $a0
/* AECAE8 80075948 930507A5 */  lbu   $a1, 0x7a5($t8)
/* AECAEC 8007594C 24010013 */  li    $at, 19
/* AECAF0 80075950 50A10079 */  beql  $a1, $at, .L80075B38
/* AECAF4 80075954 8FBF0014 */   lw    $ra, 0x14($sp)
/* AECAF8 80075958 911913E1 */  lbu   $t9, 0x13e1($t0)
/* AECAFC 8007595C 10B90057 */  beq   $a1, $t9, .L80075ABC
/* AECB00 80075960 00000000 */   nop   
/* AECB04 80075964 0C03DBED */  jal   func_800F6FB4
/* AECB08 80075968 30A400FF */   andi  $a0, $a1, 0xff
/* AECB0C 8007596C 3C038016 */  lui   $v1, %hi(gSaveContext+0x140e) # $v1, 0x8016
/* AECB10 80075970 10000052 */  b     .L80075ABC
/* AECB14 80075974 9463FA6E */   lhu   $v1, %lo(gSaveContext+0x140e)($v1)
.L80075978:
/* AECB18 80075978 912507A5 */  lbu   $a1, 0x7a5($t1)
/* AECB1C 8007597C 24010013 */  li    $at, 19
/* AECB20 80075980 14A10011 */  bne   $a1, $at, .L800759C8
/* AECB24 80075984 00A03025 */   move  $a2, $a1
/* AECB28 80075988 3C048014 */  lui   $a0, %hi(D_8013C69C) # $a0, 0x8014
/* AECB2C 8007598C 2484C69C */  addiu $a0, %lo(D_8013C69C) # addiu $a0, $a0, -0x3964
/* AECB30 80075990 910613E0 */  lbu   $a2, 0x13e0($t0)
/* AECB34 80075994 0C00084C */  jal   osSyncPrintf
/* AECB38 80075998 00E02825 */   move  $a1, $a3
/* AECB3C 8007599C 8FAA0020 */  lw    $t2, 0x20($sp)
/* AECB40 800759A0 3C0B8016 */  lui   $t3, %hi(gSaveContext+0x13e0) # $t3, 0x8016
/* AECB44 800759A4 916BFA40 */  lbu   $t3, %lo(gSaveContext+0x13e0)($t3)
/* AECB48 800759A8 914407A4 */  lbu   $a0, 0x7a4($t2)
/* AECB4C 800759AC 108B0003 */  beq   $a0, $t3, .L800759BC
/* AECB50 800759B0 00000000 */   nop   
/* AECB54 800759B4 0C03D554 */  jal   func_800F5550
/* AECB58 800759B8 00000000 */   nop   
.L800759BC:
/* AECB5C 800759BC 3C038016 */  lui   $v1, %hi(gSaveContext+0x140e) # $v1, 0x8016
/* AECB60 800759C0 1000003E */  b     .L80075ABC
/* AECB64 800759C4 9463FA6E */   lhu   $v1, %lo(gSaveContext+0x140e)($v1)
.L800759C8:
/* AECB68 800759C8 9502000C */  lhu   $v0, 0xc($t0)
/* AECB6C 800759CC 28414AAB */  slti  $at, $v0, 0x4aab
/* AECB70 800759D0 14200012 */  bnez  $at, .L80075A1C
/* AECB74 800759D4 3401B71D */   li    $at, 46877
/* AECB78 800759D8 0041082A */  slt   $at, $v0, $at
/* AECB7C 800759DC 50200010 */  beql  $at, $zero, .L80075A20
/* AECB80 800759E0 910F13E1 */   lbu   $t7, 0x13e1($t0)
/* AECB84 800759E4 910C13E0 */  lbu   $t4, 0x13e0($t0)
/* AECB88 800759E8 50EC0006 */  beql  $a3, $t4, .L80075A04
/* AECB8C 800759EC 8FAE0020 */   lw    $t6, 0x20($sp)
/* AECB90 800759F0 0C03D554 */  jal   func_800F5550
/* AECB94 800759F4 00000000 */   nop   
/* AECB98 800759F8 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AECB9C 800759FC 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AECBA0 80075A00 8FAE0020 */  lw    $t6, 0x20($sp)
.L80075A04:
/* AECBA4 80075A04 3C010001 */  lui   $at, 1
/* AECBA8 80075A08 240D0001 */  li    $t5, 1
/* AECBAC 80075A0C 002E0821 */  addu  $at, $at, $t6
/* AECBB0 80075A10 A02D0B04 */  sb    $t5, 0xb04($at)
/* AECBB4 80075A14 10000029 */  b     .L80075ABC
/* AECBB8 80075A18 9503140E */   lhu   $v1, 0x140e($t0)
.L80075A1C:
/* AECBBC 80075A1C 910F13E1 */  lbu   $t7, 0x13e1($t0)
.L80075A20:
/* AECBC0 80075A20 50CF0008 */  beql  $a2, $t7, .L80075A44
/* AECBC4 80075A24 3401B71D */   li    $at, 46877
/* AECBC8 80075A28 0C03DBED */  jal   func_800F6FB4
/* AECBCC 80075A2C 30A400FF */   andi  $a0, $a1, 0xff
/* AECBD0 80075A30 3C028016 */  lui   $v0, %hi(gSaveContext+0xc) # $v0, 0x8016
/* AECBD4 80075A34 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AECBD8 80075A38 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AECBDC 80075A3C 9442E66C */  lhu   $v0, %lo(gSaveContext+0xc)($v0)
/* AECBE0 80075A40 3401B71D */  li    $at, 46877
.L80075A44:
/* AECBE4 80075A44 0041082A */  slt   $at, $v0, $at
/* AECBE8 80075A48 1420000A */  bnez  $at, .L80075A74
/* AECBEC 80075A4C 3401CAAC */   li    $at, 51884
/* AECBF0 80075A50 0041082A */  slt   $at, $v0, $at
/* AECBF4 80075A54 10200007 */  beqz  $at, .L80075A74
/* AECBF8 80075A58 8FB90020 */   lw    $t9, 0x20($sp)
/* AECBFC 80075A5C 3C010001 */  lui   $at, 1
/* AECC00 80075A60 00390821 */  addu  $at, $at, $t9
/* AECC04 80075A64 24180003 */  li    $t8, 3
/* AECC08 80075A68 A0380B04 */  sb    $t8, 0xb04($at)
/* AECC0C 80075A6C 10000013 */  b     .L80075ABC
/* AECC10 80075A70 9503140E */   lhu   $v1, 0x140e($t0)
.L80075A74:
/* AECC14 80075A74 3401CAAD */  li    $at, 51885
/* AECC18 80075A78 0041082A */  slt   $at, $v0, $at
/* AECC1C 80075A7C 10200004 */  beqz  $at, .L80075A90
/* AECC20 80075A80 8FAA0020 */   lw    $t2, 0x20($sp)
/* AECC24 80075A84 28414555 */  slti  $at, $v0, 0x4555
/* AECC28 80075A88 10200007 */  beqz  $at, .L80075AA8
/* AECC2C 80075A8C 8FAC0020 */   lw    $t4, 0x20($sp)
.L80075A90:
/* AECC30 80075A90 3C010001 */  lui   $at, 1
/* AECC34 80075A94 002A0821 */  addu  $at, $at, $t2
/* AECC38 80075A98 24090005 */  li    $t1, 5
/* AECC3C 80075A9C A0290B04 */  sb    $t1, 0xb04($at)
/* AECC40 80075AA0 10000006 */  b     .L80075ABC
/* AECC44 80075AA4 9503140E */   lhu   $v1, 0x140e($t0)
.L80075AA8:
/* AECC48 80075AA8 3C010001 */  lui   $at, 1
/* AECC4C 80075AAC 002C0821 */  addu  $at, $at, $t4
/* AECC50 80075AB0 240B0007 */  li    $t3, 7
/* AECC54 80075AB4 A02B0B04 */  sb    $t3, 0xb04($at)
/* AECC58 80075AB8 9503140E */  lhu   $v1, 0x140e($t0)
.L80075ABC:
/* AECC5C 80075ABC 3C048014 */  lui   $a0, %hi(D_8013C6D4) # $a0, 0x8014
/* AECC60 80075AC0 2484C6D4 */  addiu $a0, %lo(D_8013C6D4) # addiu $a0, $a0, -0x392c
/* AECC64 80075AC4 0C00084C */  jal   osSyncPrintf
/* AECC68 80075AC8 3065FFFF */   andi  $a1, $v1, 0xffff
/* AECC6C 80075ACC 3C028016 */  lui   $v0, %hi(gSaveContext+0x140e) # $v0, 0x8016
/* AECC70 80075AD0 3C048014 */  lui   $a0, %hi(D_8013C6E8) # $a0, 0x8014
/* AECC74 80075AD4 2484C6E8 */  addiu $a0, %lo(D_8013C6E8) # addiu $a0, $a0, -0x3918
/* AECC78 80075AD8 0C00084C */  jal   osSyncPrintf
/* AECC7C 80075ADC 9445FA6E */   lhu   $a1, %lo(gSaveContext+0x140e)($v0)
/* AECC80 80075AE0 8FAD0020 */  lw    $t5, 0x20($sp)
/* AECC84 80075AE4 3C048014 */  lui   $a0, %hi(D_8013C6FC) # $a0, 0x8014
/* AECC88 80075AE8 2484C6FC */  addiu $a0, %lo(D_8013C6FC) # addiu $a0, $a0, -0x3904
/* AECC8C 80075AEC 0C00084C */  jal   osSyncPrintf
/* AECC90 80075AF0 91A507A4 */   lbu   $a1, 0x7a4($t5)
/* AECC94 80075AF4 8FAE0020 */  lw    $t6, 0x20($sp)
/* AECC98 80075AF8 3C048014 */  lui   $a0, %hi(D_8013C710) # $a0, 0x8014
/* AECC9C 80075AFC 2484C710 */  addiu $a0, %lo(D_8013C710) # addiu $a0, $a0, -0x38f0
/* AECCA0 80075B00 0C00084C */  jal   osSyncPrintf
/* AECCA4 80075B04 91C507A5 */   lbu   $a1, 0x7a5($t6)
/* AECCA8 80075B08 8FA20020 */  lw    $v0, 0x20($sp)
/* AECCAC 80075B0C 3C010001 */  lui   $at, 1
/* AECCB0 80075B10 3C048014 */  lui   $a0, %hi(D_8013C724) # $a0, 0x8014
/* AECCB4 80075B14 00411021 */  addu  $v0, $v0, $at
/* AECCB8 80075B18 90450B04 */  lbu   $a1, 0xb04($v0)
/* AECCBC 80075B1C AFA20018 */  sw    $v0, 0x18($sp)
/* AECCC0 80075B20 0C00084C */  jal   osSyncPrintf
/* AECCC4 80075B24 2484C724 */   addiu $a0, %lo(D_8013C724) # addiu $a0, $a0, -0x38dc
/* AECCC8 80075B28 8FA20018 */  lw    $v0, 0x18($sp)
/* AECCCC 80075B2C 0C03D9B0 */  jal   func_800F66C0
/* AECCD0 80075B30 80441CC0 */   lb    $a0, 0x1cc0($v0)
/* AECCD4 80075B34 8FBF0014 */  lw    $ra, 0x14($sp)
.L80075B38:
/* AECCD8 80075B38 27BD0020 */  addiu $sp, $sp, 0x20
/* AECCDC 80075B3C 03E00008 */  jr    $ra
/* AECCE0 80075B40 00000000 */   nop   

