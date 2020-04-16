glabel func_80AEC100
/* 014F0 80AEC100 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014F4 80AEC104 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 014F8 80AEC108 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 014FC 80AEC10C 0C2BAEBF */  jal     func_80AEBAFC              
/* 01500 80AEC110 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01504 80AEC114 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01508 80AEC118 0C2BAF65 */  jal     func_80AEBD94              
/* 0150C 80AEC11C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01510 80AEC120 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01514 80AEC124 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01518 80AEC128 03E00008 */  jr      $ra                        
/* 0151C 80AEC12C 00000000 */  nop
