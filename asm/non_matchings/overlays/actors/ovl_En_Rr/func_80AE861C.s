glabel func_80AE861C
/* 001DC 80AE861C 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 001E0 80AE8620 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001E4 80AE8624 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001E8 80AE8628 24053990 */  addiu   $a1, $zero, 0x3990         ## $a1 = 00003990
/* 001EC 80AE862C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 001F0 80AE8630 E48C0068 */  swc1    $f12, 0x0068($a0)          ## 00000068
/* 001F4 80AE8634 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001F8 80AE8638 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001FC 80AE863C 03E00008 */  jr      $ra                        
/* 00200 80AE8640 00000000 */  nop


