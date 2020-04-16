glabel func_80AEC130
/* 01520 80AEC130 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01524 80AEC134 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01528 80AEC138 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0152C 80AEC13C 0C2BACC8 */  jal     func_80AEB320              
/* 01530 80AEC140 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01534 80AEC144 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 01538 80AEC148 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0153C 80AEC14C 0C2BABB3 */  jal     func_80AEAECC              
/* 01540 80AEC150 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01544 80AEC154 0C2BAECF */  jal     func_80AEBB3C              
/* 01548 80AEC158 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0154C 80AEC15C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01550 80AEC160 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01554 80AEC164 0C2BAF8F */  jal     func_80AEBE3C              
/* 01558 80AEC168 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 0155C 80AEC16C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01560 80AEC170 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01564 80AEC174 03E00008 */  jr      $ra                        
/* 01568 80AEC178 00000000 */  nop
