glabel func_808B0A84
/* 00124 808B0A84 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00128 808B0A88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0012C 808B0A8C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00130 808B0A90 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00134 808B0A94 8484018C */  lh      $a0, 0x018C($a0)           ## 0000018C
/* 00138 808B0A98 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 0013C 808B0A9C E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00140 808B0AA0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00144 808B0AA4 85E4018E */  lh      $a0, 0x018E($t7)           ## 0000018E
/* 00148 808B0AA8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0014C 808B0AAC 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 00150 808B0AB0 C7A4001C */  lwc1    $f4, 0x001C($sp)           
/* 00154 808B0AB4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00158 808B0AB8 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 0015C 808B0ABC 46062202 */  mul.s   $f8, $f4, $f6              
/* 00160 808B0AC0 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 00164 808B0AC4 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00168 808B0AC8 46088480 */  add.s   $f18, $f16, $f8            
/* 0016C 808B0ACC E7120198 */  swc1    $f18, 0x0198($t8)          ## 00000198
/* 00170 808B0AD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00174 808B0AD4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00178 808B0AD8 03E00008 */  jr      $ra                        
/* 0017C 808B0ADC 00000000 */  nop


