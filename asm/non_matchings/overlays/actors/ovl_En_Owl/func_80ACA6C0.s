glabel func_80ACA6C0
/* 007A0 80ACA6C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007A4 80ACA6C4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 007A8 80ACA6C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007AC 80ACA6CC 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 007B0 80ACA6D0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 007B4 80ACA6D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007B8 80ACA6D8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 007BC 80ACA6DC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007C0 80ACA6E0 4604003C */  c.lt.s  $f0, $f4                   
/* 007C4 80ACA6E4 00000000 */  nop
/* 007C8 80ACA6E8 45020006 */  bc1fl   .L80ACA704                 
/* 007CC 80ACA6EC 949803FC */  lhu     $t8, 0x03FC($a0)           ## 000003FC
/* 007D0 80ACA6F0 948E03FC */  lhu     $t6, 0x03FC($a0)           ## 000003FC
/* 007D4 80ACA6F4 35CF0020 */  ori     $t7, $t6, 0x0020           ## $t7 = 00000020
/* 007D8 80ACA6F8 10000004 */  beq     $zero, $zero, .L80ACA70C   
/* 007DC 80ACA6FC A48F03FC */  sh      $t7, 0x03FC($a0)           ## 000003FC
/* 007E0 80ACA700 949803FC */  lhu     $t8, 0x03FC($a0)           ## 000003FC
.L80ACA704:
/* 007E4 80ACA704 3319FFDF */  andi    $t9, $t8, 0xFFDF           ## $t9 = 00000000
/* 007E8 80ACA708 A49903FC */  sh      $t9, 0x03FC($a0)           ## 000003FC
.L80ACA70C:
/* 007EC 80ACA70C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007F0 80ACA710 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007F4 80ACA714 03E00008 */  jr      $ra                        
/* 007F8 80ACA718 00000000 */  nop


