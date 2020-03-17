glabel func_80ABCE50
/* 002A0 80ABCE50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002A4 80ABCE54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002A8 80ABCE58 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002AC 80ABCE5C 3C0146C8 */  lui     $at, 0x46C8                ## $at = 46C80000
/* 002B0 80ABCE60 44812000 */  mtc1    $at, $f4                   ## $f4 = 25600.00
/* 002B4 80ABCE64 C486008C */  lwc1    $f6, 0x008C($a0)           ## 0000008C
/* 002B8 80ABCE68 4604303E */  c.le.s  $f6, $f4                   
/* 002BC 80ABCE6C 00000000 */  nop
/* 002C0 80ABCE70 45020004 */  bc1fl   .L80ABCE84                 
/* 002C4 80ABCE74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002C8 80ABCE78 0C2AF365 */  jal     func_80ABCD94              
/* 002CC 80ABCE7C 00000000 */  nop
/* 002D0 80ABCE80 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ABCE84:
/* 002D4 80ABCE84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002D8 80ABCE88 03E00008 */  jr      $ra                        
/* 002DC 80ABCE8C 00000000 */  nop


