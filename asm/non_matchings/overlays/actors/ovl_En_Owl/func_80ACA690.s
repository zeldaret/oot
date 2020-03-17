glabel func_80ACA690
/* 00770 80ACA690 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00774 80ACA694 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00778 80ACA698 848E03EE */  lh      $t6, 0x03EE($a0)           ## 000003EE
/* 0077C 80ACA69C 31CF003F */  andi    $t7, $t6, 0x003F           ## $t7 = 00000000
/* 00780 80ACA6A0 55E00004 */  bnel    $t7, $zero, .L80ACA6B4     
/* 00784 80ACA6A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00788 80ACA6A8 0C2B298B */  jal     func_80ACA62C              
/* 0078C 80ACA6AC 00000000 */  nop
/* 00790 80ACA6B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACA6B4:
/* 00794 80ACA6B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00798 80ACA6B8 03E00008 */  jr      $ra                        
/* 0079C 80ACA6BC 00000000 */  nop


