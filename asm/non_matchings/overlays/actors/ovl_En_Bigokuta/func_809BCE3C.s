glabel func_809BCE3C
/* 001DC 809BCE3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001E0 809BCE40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001E4 809BCE44 808F0194 */  lb      $t7, 0x0194($a0)           ## 00000194
/* 001E8 809BCE48 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 001EC 809BCE4C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 001F0 809BCE50 000F0823 */  subu    $at, $zero, $t7            
/* 001F4 809BCE54 0001C380 */  sll     $t8, $at, 14               
/* 001F8 809BCE58 01D8C821 */  addu    $t9, $t6, $t8              
/* 001FC 809BCE5C A4990032 */  sh      $t9, 0x0032($a0)           ## 00000032
/* 00200 809BCE60 84840032 */  lh      $a0, 0x0032($a0)           ## 00000032
/* 00204 809BCE64 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00208 809BCE68 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0020C 809BCE6C 3C01809C */  lui     $at, %hi(D_809BF52C)       ## $at = 809C0000
/* 00210 809BCE70 C424F52C */  lwc1    $f4, %lo(D_809BF52C)($at)  
/* 00214 809BCE74 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00218 809BCE78 46040182 */  mul.s   $f6, $f0, $f4              
/* 0021C 809BCE7C C4A80008 */  lwc1    $f8, 0x0008($a1)           ## 00000008
/* 00220 809BCE80 84A40032 */  lh      $a0, 0x0032($a1)           ## 00000032
/* 00224 809BCE84 46083280 */  add.s   $f10, $f6, $f8             
/* 00228 809BCE88 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0022C 809BCE8C E4AA0024 */  swc1    $f10, 0x0024($a1)          ## 00000024
/* 00230 809BCE90 3C01809C */  lui     $at, %hi(D_809BF530)       ## $at = 809C0000
/* 00234 809BCE94 C430F530 */  lwc1    $f16, %lo(D_809BF530)($at) 
/* 00238 809BCE98 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0023C 809BCE9C 46100482 */  mul.s   $f18, $f0, $f16            
/* 00240 809BCEA0 C4A40010 */  lwc1    $f4, 0x0010($a1)           ## 00000010
/* 00244 809BCEA4 46049180 */  add.s   $f6, $f18, $f4             
/* 00248 809BCEA8 E4A6002C */  swc1    $f6, 0x002C($a1)           ## 0000002C
/* 0024C 809BCEAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00250 809BCEB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00254 809BCEB4 03E00008 */  jr      $ra                        
/* 00258 809BCEB8 00000000 */  nop


