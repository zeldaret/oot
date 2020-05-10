glabel BgSpot15Rrbox_Update
/* 00B8C 808B44EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B90 808B44F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B94 808B44F4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B98 808B44F8 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
/* 00B9C 808B44FC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00BA0 808B4500 18400002 */  blez    $v0, .L808B450C            
/* 00BA4 808B4504 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00BA8 808B4508 A48E0168 */  sh      $t6, 0x0168($a0)           ## 00000168
.L808B450C:
/* 00BAC 808B450C 84CF0158 */  lh      $t7, 0x0158($a2)           ## 00000158
/* 00BB0 808B4510 A4CF0032 */  sh      $t7, 0x0032($a2)           ## 00000032
/* 00BB4 808B4514 84C40032 */  lh      $a0, 0x0032($a2)           ## 00000032
/* 00BB8 808B4518 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00BBC 808B451C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00BC0 808B4520 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00BC4 808B4524 E4C0016C */  swc1    $f0, 0x016C($a2)           ## 0000016C
/* 00BC8 808B4528 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00BCC 808B452C 84C40032 */  lh      $a0, 0x0032($a2)           ## 00000032
/* 00BD0 808B4530 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BD4 808B4534 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00BD8 808B4538 E4800170 */  swc1    $f0, 0x0170($a0)           ## 00000170
/* 00BDC 808B453C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00BE0 808B4540 0320F809 */  jalr    $ra, $t9                   
/* 00BE4 808B4544 00000000 */  nop
/* 00BE8 808B4548 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BEC 808B454C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BF0 808B4550 03E00008 */  jr      $ra                        
/* 00BF4 808B4554 00000000 */  nop
