glabel func_80AE77B8
/* 00508 80AE77B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0050C 80AE77BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00510 80AE77C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00514 80AE77C4 0C2B9D13 */  jal     func_80AE744C              
/* 00518 80AE77C8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0051C 80AE77CC 0C2B9D25 */  jal     func_80AE7494              
/* 00520 80AE77D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00524 80AE77D4 0C2B9CB4 */  jal     func_80AE72D0              
/* 00528 80AE77D8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0052C 80AE77DC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00530 80AE77E0 0C2B9DA6 */  jal     func_80AE7698              
/* 00534 80AE77E4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00538 80AE77E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0053C 80AE77EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00540 80AE77F0 03E00008 */  jr      $ra                        
/* 00544 80AE77F4 00000000 */  nop
