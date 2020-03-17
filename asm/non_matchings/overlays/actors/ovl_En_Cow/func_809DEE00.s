glabel func_809DEE00
/* 00000 809DEE00 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 809DEE04 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00008 809DEE08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 809DEE0C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 809DEE10 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00014 809DEE14 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00018 809DEE18 87A4002E */  lh      $a0, 0x002E($sp)           
/* 0001C 809DEE1C E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00020 809DEE20 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00024 809DEE24 87A4002E */  lh      $a0, 0x002E($sp)           
/* 00028 809DEE28 C7A40020 */  lwc1    $f4, 0x0020($sp)           
/* 0002C 809DEE2C C6060000 */  lwc1    $f6, 0x0000($s0)           ## 00000000
/* 00030 809DEE30 C60A0008 */  lwc1    $f10, 0x0008($s0)          ## 00000008
/* 00034 809DEE34 87A4002E */  lh      $a0, 0x002E($sp)           
/* 00038 809DEE38 46062202 */  mul.s   $f8, $f4, $f6              
/* 0003C 809DEE3C 00000000 */  nop
/* 00040 809DEE40 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00044 809DEE44 46088480 */  add.s   $f18, $f16, $f8            
/* 00048 809DEE48 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0004C 809DEE4C E7B20024 */  swc1    $f18, 0x0024($sp)          
/* 00050 809DEE50 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00054 809DEE54 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00058 809DEE58 87A4002E */  lh      $a0, 0x002E($sp)           
/* 0005C 809DEE5C C7A40020 */  lwc1    $f4, 0x0020($sp)           
/* 00060 809DEE60 C60A0000 */  lwc1    $f10, 0x0000($s0)          ## 00000000
/* 00064 809DEE64 C6080008 */  lwc1    $f8, 0x0008($s0)           ## 00000008
/* 00068 809DEE68 46002187 */  neg.s   $f6, $f4                   
/* 0006C 809DEE6C 460A3402 */  mul.s   $f16, $f6, $f10            
/* 00070 809DEE70 00000000 */  nop
/* 00074 809DEE74 46080482 */  mul.s   $f18, $f0, $f8             
/* 00078 809DEE78 46109100 */  add.s   $f4, $f18, $f16            
/* 0007C 809DEE7C E6040008 */  swc1    $f4, 0x0008($s0)           ## 00000008
/* 00080 809DEE80 C7A60024 */  lwc1    $f6, 0x0024($sp)           
/* 00084 809DEE84 E6060000 */  swc1    $f6, 0x0000($s0)           ## 00000000
/* 00088 809DEE88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0008C 809DEE8C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00090 809DEE90 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00094 809DEE94 03E00008 */  jr      $ra                        
/* 00098 809DEE98 00000000 */  nop


