glabel func_80B26B4C
/* 0049C 80B26B4C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 004A0 80B26B50 AFB00020 */  sw      $s0, 0x0020($sp)
/* 004A4 80B26B54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004A8 80B26B58 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 004AC 80B26B5C 3C050600 */  lui     $a1, %hi(D_06000854)                ## $a1 = 06000000
/* 004B0 80B26B60 24A50854 */  addiu   $a1, $a1, %lo(D_06000854)           ## $a1 = 06000854
/* 004B4 80B26B64 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 004B8 80B26B68 0C029490 */  jal     Animation_MorphToPlayOnce
/* 004BC 80B26B6C 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 004C0 80B26B70 240E001E */  addiu   $t6, $zero, 0x001E         ## $t6 = 0000001E
/* 004C4 80B26B74 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 004C8 80B26B78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004CC 80B26B7C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 004D0 80B26B80 24060096 */  addiu   $a2, $zero, 0x0096         ## $a2 = 00000096
/* 004D4 80B26B84 0C00D09B */  jal     Actor_SetColorFilter
/* 004D8 80B26B88 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 004DC 80B26B8C 920F040D */  lbu     $t7, 0x040D($s0)           ## 0000040D
/* 004E0 80B26B90 3C1980B2 */  lui     $t9, %hi(func_80B273D0)    ## $t9 = 80B20000
/* 004E4 80B26B94 273973D0 */  addiu   $t9, $t9, %lo(func_80B273D0) ## $t9 = 80B273D0
/* 004E8 80B26B98 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 004EC 80B26B9C A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 004F0 80B26BA0 A218040D */  sb      $t8, 0x040D($s0)           ## 0000040D
/* 004F4 80B26BA4 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 004F8 80B26BA8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 004FC 80B26BAC 8FB00020 */  lw      $s0, 0x0020($sp)
/* 00500 80B26BB0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00504 80B26BB4 03E00008 */  jr      $ra
/* 00508 80B26BB8 00000000 */  nop
