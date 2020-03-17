glabel func_80AEB3A4
/* 00794 80AEB3A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00798 80AEB3A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0079C 80AEB3AC 908E0181 */  lbu     $t6, 0x0181($a0)           ## 00000181
/* 007A0 80AEB3B0 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 007A4 80AEB3B4 0C2BACD9 */  jal     func_80AEB364              
/* 007A8 80AEB3B8 A08F0181 */  sb      $t7, 0x0181($a0)           ## 00000181
/* 007AC 80AEB3BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007B0 80AEB3C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007B4 80AEB3C4 03E00008 */  jr      $ra                        
/* 007B8 80AEB3C8 00000000 */  nop


