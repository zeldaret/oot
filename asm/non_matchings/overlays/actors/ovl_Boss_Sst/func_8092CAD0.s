glabel func_8092CAD0
/* 00500 8092CAD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00504 8092CAD4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00508 8092CAD8 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0050C 8092CADC 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 00510 8092CAE0 C4840094 */  lwc1    $f4, 0x0094($a0)           ## 00000094
/* 00514 8092CAE4 4606203C */  c.lt.s  $f4, $f6                   
/* 00518 8092CAE8 00000000 */  nop
/* 0051C 8092CAEC 45020004 */  bc1fl   .L8092CB00                 
/* 00520 8092CAF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00524 8092CAF4 0C24B2C3 */  jal     func_8092CB0C              
/* 00528 8092CAF8 00000000 */  nop
/* 0052C 8092CAFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8092CB00:
/* 00530 8092CB00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00534 8092CB04 03E00008 */  jr      $ra                        
/* 00538 8092CB08 00000000 */  nop


