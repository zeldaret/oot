glabel func_80B90970
/* 01EF0 80B90970 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01EF4 80B90974 3C0E80B9 */  lui     $t6, %hi(func_80B909B0)    ## $t6 = 80B90000
/* 01EF8 80B90978 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01EFC 80B9097C 25CE09B0 */  addiu   $t6, $t6, %lo(func_80B909B0) ## $t6 = 80B909B0
/* 01F00 80B90980 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 01F04 80B90984 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01F08 80B90988 0C2E3BCA */  jal     func_80B8EF28              
/* 01F0C 80B9098C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01F10 80B90990 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01F14 80B90994 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 01F18 80B90998 0C2E3B7D */  jal     func_80B8EDF4              
/* 01F1C 80B9099C A48F01B4 */  sh      $t7, 0x01B4($a0)           ## 000001B4
/* 01F20 80B909A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F24 80B909A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01F28 80B909A8 03E00008 */  jr      $ra                        
/* 01F2C 80B909AC 00000000 */  nop
