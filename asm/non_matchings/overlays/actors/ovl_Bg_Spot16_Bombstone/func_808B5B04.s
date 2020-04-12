glabel func_808B5B04
/* 00ED4 808B5B04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00ED8 808B5B08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00EDC 808B5B0C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00EE0 808B5B10 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00EE4 808B5B14 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00EE8 808B5B18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EEC 808B5B1C 00A12021 */  addu    $a0, $a1, $at              
/* 00EF0 808B5B20 0C026062 */  jal     Object_IsLoaded
              
/* 00EF4 808B5B24 81C50214 */  lb      $a1, 0x0214($t6)           ## 00000214
/* 00EF8 808B5B28 50400008 */  beql    $v0, $zero, .L808B5B4C     
/* 00EFC 808B5B2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F00 808B5B30 0C22D6D6 */  jal     func_808B5B58              
/* 00F04 808B5B34 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00F08 808B5B38 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 00F0C 808B5B3C 3C0F808B */  lui     $t7, %hi(BgSpot16Bombstone_Draw)    ## $t7 = 808B0000
/* 00F10 808B5B40 25EF5C98 */  addiu   $t7, $t7, %lo(BgSpot16Bombstone_Draw) ## $t7 = 808B5C98
/* 00F14 808B5B44 AF0F0134 */  sw      $t7, 0x0134($t8)           ## 00000134
/* 00F18 808B5B48 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808B5B4C:
/* 00F1C 808B5B4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F20 808B5B50 03E00008 */  jr      $ra                        
/* 00F24 808B5B54 00000000 */  nop
