glabel func_80AECA44
/* 01E34 80AECA44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E38 80AECA48 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01E3C 80AECA4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E40 80AECA50 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01E44 80AECA54 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 01E48 80AECA58 0C2BABE8 */  jal     func_80AEAFA0              
/* 01E4C 80AECA5C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 01E50 80AECA60 10400008 */  beq     $v0, $zero, .L80AECA84     
/* 01E54 80AECA64 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 01E58 80AECA68 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 01E5C 80AECA6C 944E0F20 */  lhu     $t6, 0x0F20($v0)           ## 8015F580
/* 01E60 80AECA70 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 01E64 80AECA74 2418000E */  addiu   $t8, $zero, 0x000E         ## $t8 = 0000000E
/* 01E68 80AECA78 35CF0002 */  ori     $t7, $t6, 0x0002           ## $t7 = 00000002
/* 01E6C 80AECA7C A44F0F20 */  sh      $t7, 0x0F20($v0)           ## 8015F580
/* 01E70 80AECA80 AF380264 */  sw      $t8, 0x0264($t9)           ## 00000264
.L80AECA84:
/* 01E74 80AECA84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E78 80AECA88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E7C 80AECA8C 03E00008 */  jr      $ra                        
/* 01E80 80AECA90 00000000 */  nop


