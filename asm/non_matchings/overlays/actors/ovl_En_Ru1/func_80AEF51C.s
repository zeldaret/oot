glabel func_80AEF51C
/* 0490C 80AEF51C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04910 80AEF520 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04914 80AEF524 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 04918 80AEF528 0C01E245 */  jal     func_80078914              
/* 0491C 80AEF52C 24056865 */  addiu   $a1, $zero, 0x6865         ## $a1 = 00006865
/* 04920 80AEF530 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04924 80AEF534 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04928 80AEF538 03E00008 */  jr      $ra                        
/* 0492C 80AEF53C 00000000 */  nop
