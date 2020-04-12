glabel func_80AEF99C
/* 04D8C 80AEF99C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04D90 80AEF9A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04D94 80AEF9A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04D98 80AEF9A8 0C2BAC6D */  jal     func_80AEB1B4              
/* 04D9C 80AEF9AC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 04DA0 80AEF9B0 10400005 */  beq     $v0, $zero, .L80AEF9C8     
/* 04DA4 80AEF9B4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04DA8 80AEF9B8 0C2BAC3B */  jal     func_80AEB0EC              
/* 04DAC 80AEF9BC 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 04DB0 80AEF9C0 0C00B55C */  jal     Actor_Kill
              
/* 04DB4 80AEF9C4 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80AEF9C8:
/* 04DB8 80AEF9C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04DBC 80AEF9CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04DC0 80AEF9D0 03E00008 */  jr      $ra                        
/* 04DC4 80AEF9D4 00000000 */  nop
