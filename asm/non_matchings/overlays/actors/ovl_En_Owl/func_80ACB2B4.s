glabel func_80ACB2B4
/* 01394 80ACB2B4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01398 80ACB2B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0139C 80ACB2BC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 013A0 80ACB2C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 013A4 80ACB2C4 0C2B28EE */  jal     func_80ACA3B8              
/* 013A8 80ACB2C8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 013AC 80ACB2CC 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x3a)
/* 013B0 80ACB2D0 91CEE69A */  lbu     $t6, %lo(gSaveContext+0x3a)($t6)
/* 013B4 80ACB2D4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 013B8 80ACB2D8 24063062 */  addiu   $a2, $zero, 0x3062         ## $a2 = 00003062
/* 013BC 80ACB2DC 15C0000B */  bne     $t6, $zero, .L80ACB30C     
/* 013C0 80ACB2E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013C4 80ACB2E4 0C2B2956 */  jal     func_80ACA558              
/* 013C8 80ACB2E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013CC 80ACB2EC 50400011 */  beql    $v0, $zero, .L80ACB334     
/* 013D0 80ACB2F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 013D4 80ACB2F4 0C03D719 */  jal     func_800F5C64              
/* 013D8 80ACB2F8 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 013DC 80ACB2FC 3C0F80AD */  lui     $t7, %hi(func_80ACB274)    ## $t7 = 80AD0000
/* 013E0 80ACB300 25EFB274 */  addiu   $t7, $t7, %lo(func_80ACB274) ## $t7 = 80ACB274
/* 013E4 80ACB304 1000000A */  beq     $zero, $zero, .L80ACB330   
/* 013E8 80ACB308 AE0F040C */  sw      $t7, 0x040C($s0)           ## 0000040C
.L80ACB30C:
/* 013EC 80ACB30C 0C2B2956 */  jal     func_80ACA558              
/* 013F0 80ACB310 24063063 */  addiu   $a2, $zero, 0x3063         ## $a2 = 00003063
/* 013F4 80ACB314 50400007 */  beql    $v0, $zero, .L80ACB334     
/* 013F8 80ACB318 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 013FC 80ACB31C 0C03D719 */  jal     func_800F5C64              
/* 01400 80ACB320 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 01404 80ACB324 3C1880AD */  lui     $t8, %hi(func_80ACB22C)    ## $t8 = 80AD0000
/* 01408 80ACB328 2718B22C */  addiu   $t8, $t8, %lo(func_80ACB22C) ## $t8 = 80ACB22C
/* 0140C 80ACB32C AE18040C */  sw      $t8, 0x040C($s0)           ## 0000040C
.L80ACB330:
/* 01410 80ACB330 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACB334:
/* 01414 80ACB334 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01418 80ACB338 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0141C 80ACB33C 03E00008 */  jr      $ra                        
/* 01420 80ACB340 00000000 */  nop
