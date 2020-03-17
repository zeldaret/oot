glabel func_80B21900
/* 00B20 80B21900 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B24 80B21904 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B28 80B21908 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B2C 80B2190C 0C00B5FB */  jal     func_8002D7EC              
/* 00B30 80B21910 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B34 80B21914 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B38 80B21918 848E015E */  lh      $t6, 0x015E($a0)           ## 0000015E
/* 00B3C 80B2191C 25CFFFEC */  addiu   $t7, $t6, 0xFFEC           ## $t7 = FFFFFFEC
/* 00B40 80B21920 A48F015E */  sh      $t7, 0x015E($a0)           ## 0000015E
/* 00B44 80B21924 8498015E */  lh      $t8, 0x015E($a0)           ## 0000015E
/* 00B48 80B21928 2B010014 */  slti    $at, $t8, 0x0014           
/* 00B4C 80B2192C 50200004 */  beql    $at, $zero, .L80B21940     
/* 00B50 80B21930 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B54 80B21934 0C00B55C */  jal     Actor_Kill
              
/* 00B58 80B21938 A480015E */  sh      $zero, 0x015E($a0)         ## 0000015E
/* 00B5C 80B2193C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B21940:
/* 00B60 80B21940 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B64 80B21944 03E00008 */  jr      $ra                        
/* 00B68 80B21948 00000000 */  nop


