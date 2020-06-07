glabel func_80B3C9EC
/* 0080C 80B3C9EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00810 80B3C9F0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00814 80B3C9F4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00818 80B3C9F8 24A53AA4 */  addiu   $a1, $a1, 0x3AA4           ## $a1 = 06013AA4
/* 0081C 80B3C9FC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00820 80B3CA00 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00824 80B3CA04 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00828 80B3CA08 0C2CF1C0 */  jal     func_80B3C700              
/* 0082C 80B3CA0C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00830 80B3CA10 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00834 80B3CA14 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00838 80B3CA18 240E004F */  addiu   $t6, $zero, 0x004F         ## $t6 = 0000004F
/* 0083C 80B3CA1C AC8E0260 */  sw      $t6, 0x0260($a0)           ## 00000260
/* 00840 80B3CA20 AC820264 */  sw      $v0, 0x0264($a0)           ## 00000264
/* 00844 80B3CA24 AC82030C */  sw      $v0, 0x030C($a0)           ## 0000030C
/* 00848 80B3CA28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0084C 80B3CA2C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00850 80B3CA30 03E00008 */  jr      $ra                        
/* 00854 80B3CA34 00000000 */  nop
