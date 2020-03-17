glabel func_80AEC4CC
/* 018BC 80AEC4CC 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 018C0 80AEC4D0 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 018C4 80AEC4D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 018C8 80AEC4D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 018CC 80AEC4DC 0C00B638 */  jal     Actor_MoveForward
              
/* 018D0 80AEC4E0 E4840060 */  swc1    $f4, 0x0060($a0)           ## 00000060
/* 018D4 80AEC4E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018D8 80AEC4E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018DC 80AEC4EC 03E00008 */  jr      $ra                        
/* 018E0 80AEC4F0 00000000 */  nop


