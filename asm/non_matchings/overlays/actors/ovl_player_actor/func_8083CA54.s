glabel func_8083CA54
/* 0A844 8083CA54 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0A848 8083CA58 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.00
/* 0A84C 8083CA5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0A850 8083CA60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0A854 8083CA64 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 0A858 8083CA68 E4A00838 */  swc1    $f0, 0x0838($a1)           ## 00000838
/* 0A85C 8083CA6C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0A860 8083CA70 3C0642F0 */  lui     $a2, 0x42F0                ## $a2 = 42F00000
/* 0A864 8083CA74 0C20F244 */  jal     func_8083C910              
/* 0A868 8083CA78 E420FA1C */  swc1    $f0, -0x05E4($at)          ## 8015FA1C
/* 0A86C 8083CA7C 10400003 */  beq     $v0, $zero, .L8083CA8C     
/* 0A870 8083CA80 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0A874 8083CA84 240EFFF1 */  addiu   $t6, $zero, 0xFFF1         ## $t6 = FFFFFFF1
/* 0A878 8083CA88 A4AE0850 */  sh      $t6, 0x0850($a1)           ## 00000850
.L8083CA8C:
/* 0A87C 8083CA8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0A880 8083CA90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0A884 8083CA94 03E00008 */  jr      $ra                        
/* 0A888 8083CA98 00000000 */  nop


