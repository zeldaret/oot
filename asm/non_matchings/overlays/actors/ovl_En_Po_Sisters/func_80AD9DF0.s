glabel func_80AD9DF0
/* 00E60 80AD9DF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E64 80AD9DF4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00E68 80AD9DF8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E6C 80AD9DFC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00E70 80AD9E00 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E74 80AD9E04 24A5119C */  addiu   $a1, $a1, 0x119C           ## $a1 = 0600119C
/* 00E78 80AD9E08 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00E7C 80AD9E0C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E80 80AD9E10 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 00E84 80AD9E14 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00E88 80AD9E18 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00E8C 80AD9E1C 3C1980AE */  lui     $t9, %hi(func_80ADB4B0)    ## $t9 = 80AE0000
/* 00E90 80AD9E20 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00E94 80AD9E24 90EF0199 */  lbu     $t7, 0x0199($a3)           ## 00000199
/* 00E98 80AD9E28 2739B4B0 */  addiu   $t9, $t9, %lo(func_80ADB4B0) ## $t9 = 80ADB4B0
/* 00E9C 80AD9E2C A0EE0198 */  sb      $t6, 0x0198($a3)           ## 00000198
/* 00EA0 80AD9E30 31F8FF7F */  andi    $t8, $t7, 0xFF7F           ## $t8 = 00000000
/* 00EA4 80AD9E34 A0F80199 */  sb      $t8, 0x0199($a3)           ## 00000199
/* 00EA8 80AD9E38 ACF90190 */  sw      $t9, 0x0190($a3)           ## 00000190
/* 00EAC 80AD9E3C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00EB0 80AD9E40 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00EB4 80AD9E44 24050C6C */  addiu   $a1, $zero, 0x0C6C         ## $a1 = 00000C6C
/* 00EB8 80AD9E48 0C02003E */  jal     func_800800F8              
/* 00EBC 80AD9E4C 2406009C */  addiu   $a2, $zero, 0x009C         ## $a2 = 0000009C
/* 00EC0 80AD9E50 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EC4 80AD9E54 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00EC8 80AD9E58 03E00008 */  jr      $ra                        
/* 00ECC 80AD9E5C 00000000 */  nop


