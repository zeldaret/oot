glabel EnDha_Draw
/* 00D50 809ED5D0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D54 809ED5D4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00D58 809ED5D8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00D5C 809ED5DC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00D60 809ED5E0 0C024F46 */  jal     func_80093D18              
/* 00D64 809ED5E4 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 00D68 809ED5E8 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 00D6C 809ED5EC 3C0F809F */  lui     $t7, %hi(func_809ED414)    ## $t7 = 809F0000
/* 00D70 809ED5F0 3C18809F */  lui     $t8, %hi(func_809ED4B8)    ## $t8 = 809F0000
/* 00D74 809ED5F4 8C450150 */  lw      $a1, 0x0150($v0)           ## 00000150
/* 00D78 809ED5F8 8C46016C */  lw      $a2, 0x016C($v0)           ## 0000016C
/* 00D7C 809ED5FC 9047014E */  lbu     $a3, 0x014E($v0)           ## 0000014E
/* 00D80 809ED600 2718D4B8 */  addiu   $t8, $t8, %lo(func_809ED4B8) ## $t8 = 809ED4B8
/* 00D84 809ED604 25EFD414 */  addiu   $t7, $t7, %lo(func_809ED414) ## $t7 = 809ED414
/* 00D88 809ED608 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00D8C 809ED60C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00D90 809ED610 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00D94 809ED614 0C0286B2 */  jal     func_800A1AC8              
/* 00D98 809ED618 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 00D9C 809ED61C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DA0 809ED620 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00DA4 809ED624 03E00008 */  jr      $ra                        
/* 00DA8 809ED628 00000000 */  nop
/* 00DAC 809ED62C 00000000 */  nop

