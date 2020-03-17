glabel func_809BD7F0
/* 00B90 809BD7F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B94 809BD7F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B98 809BD7F8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00B9C 809BD7FC 8CA41C44 */  lw      $a0, 0x1C44($a1)           ## 00001C44
/* 00BA0 809BD800 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00BA4 809BD804 0C00B6B0 */  jal     func_8002DAC0              
/* 00BA8 809BD808 24C50008 */  addiu   $a1, $a2, 0x0008           ## $a1 = 00000008
/* 00BAC 809BD80C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BB0 809BD810 808F0194 */  lb      $t7, 0x0194($a0)           ## 00000194
/* 00BB4 809BD814 A4820032 */  sh      $v0, 0x0032($a0)           ## 00000032
/* 00BB8 809BD818 848E0032 */  lh      $t6, 0x0032($a0)           ## 00000032
/* 00BBC 809BD81C 000FC380 */  sll     $t8, $t7, 14               
/* 00BC0 809BD820 01D8C821 */  addu    $t9, $t6, $t8              
/* 00BC4 809BD824 0C26F38F */  jal     func_809BCE3C              
/* 00BC8 809BD828 A49900B6 */  sh      $t9, 0x00B6($a0)           ## 000000B6
/* 00BCC 809BD82C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00BD0 809BD830 3C08809C */  lui     $t0, %hi(func_809BE518)    ## $t0 = 809C0000
/* 00BD4 809BD834 2508E518 */  addiu   $t0, $t0, %lo(func_809BE518) ## $t0 = 809BE518
/* 00BD8 809BD838 ACC80190 */  sw      $t0, 0x0190($a2)           ## 00000190
/* 00BDC 809BD83C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BE0 809BD840 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BE4 809BD844 03E00008 */  jr      $ra                        
/* 00BE8 809BD848 00000000 */  nop


