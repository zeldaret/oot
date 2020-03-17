glabel func_80AE77F8
/* 00548 80AE77F8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0054C 80AE77FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00550 80AE7800 0C2B9D13 */  jal     func_80AE744C              
/* 00554 80AE7804 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00558 80AE7808 0C2B9D25 */  jal     func_80AE7494              
/* 0055C 80AE780C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00560 80AE7810 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 00564 80AE7814 0C2B9CB4 */  jal     func_80AE72D0              
/* 00568 80AE7818 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0056C 80AE781C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00570 80AE7820 0C2B9DCB */  jal     func_80AE772C              
/* 00574 80AE7824 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00578 80AE7828 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0057C 80AE782C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00580 80AE7830 03E00008 */  jr      $ra                        
/* 00584 80AE7834 00000000 */  nop


