glabel EnShopnuts_Destroy
/* 00138 80AFA858 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0013C 80AFA85C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00140 80AFA860 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00144 80AFA864 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00148 80AFA868 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0014C 80AFA86C 24C50270 */  addiu   $a1, $a2, 0x0270           ## $a1 = 00000270
/* 00150 80AFA870 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00154 80AFA874 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00158 80AFA878 03E00008 */  jr      $ra                        
/* 0015C 80AFA87C 00000000 */  nop


