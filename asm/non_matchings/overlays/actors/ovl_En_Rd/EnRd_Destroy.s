glabel EnRd_Destroy
/* 001F0 80AE25F0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 001F4 80AE25F4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 001F8 80AE25F8 844E1422 */  lh      $t6, 0x1422($v0)           ## 8015FA82
/* 001FC 80AE25FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00200 80AE2600 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00204 80AE2604 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00208 80AE2608 11C00002 */  beq     $t6, $zero, .L80AE2614     
/* 0020C 80AE260C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00210 80AE2610 A4401422 */  sh      $zero, 0x1422($v0)         ## 8015FA82
.L80AE2614:
/* 00214 80AE2614 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00218 80AE2618 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0021C 80AE261C 24C50320 */  addiu   $a1, $a2, 0x0320           ## $a1 = 00000320
/* 00220 80AE2620 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00224 80AE2624 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00228 80AE2628 03E00008 */  jr      $ra                        
/* 0022C 80AE262C 00000000 */  nop
