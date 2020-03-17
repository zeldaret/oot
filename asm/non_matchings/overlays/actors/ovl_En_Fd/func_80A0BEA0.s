glabel func_80A0BEA0
/* 007E0 80A0BEA0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 007E4 80A0BEA4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 007E8 80A0BEA8 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 007EC 80A0BEAC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 007F0 80A0BEB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007F4 80A0BEB4 24A40008 */  addiu   $a0, $a1, 0x0008           ## $a0 = 00000008
/* 007F8 80A0BEB8 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 007FC 80A0BEBC AFA70044 */  sw      $a3, 0x0044($sp)           
/* 00800 80A0BEC0 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00804 80A0BEC4 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 00808 80A0BEC8 87AE0046 */  lh      $t6, 0x0046($sp)           
/* 0080C 80A0BECC 24011554 */  addiu   $at, $zero, 0x1554         ## $at = 00001554
/* 00810 80A0BED0 01C10019 */  multu   $t6, $at                   
/* 00814 80A0BED4 00007812 */  mflo    $t7                        
/* 00818 80A0BED8 004F1821 */  addu    $v1, $v0, $t7              
/* 0081C 80A0BEDC 00032400 */  sll     $a0, $v1, 16               
/* 00820 80A0BEE0 A7A30036 */  sh      $v1, 0x0036($sp)           
/* 00824 80A0BEE4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00828 80A0BEE8 00042403 */  sra     $a0, $a0, 16               
/* 0082C 80A0BEEC C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 00830 80A0BEF0 C6080008 */  lwc1    $f8, 0x0008($s0)           ## 00000008
/* 00834 80A0BEF4 87A40036 */  lh      $a0, 0x0036($sp)           
/* 00838 80A0BEF8 46040182 */  mul.s   $f6, $f0, $f4              
/* 0083C 80A0BEFC 46083280 */  add.s   $f10, $f6, $f8             
/* 00840 80A0BF00 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00844 80A0BF04 E7AA0028 */  swc1    $f10, 0x0028($sp)          
/* 00848 80A0BF08 C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 0084C 80A0BF0C C6040010 */  lwc1    $f4, 0x0010($s0)           ## 00000010
/* 00850 80A0BF10 C7A80028 */  lwc1    $f8, 0x0028($sp)           
/* 00854 80A0BF14 46100482 */  mul.s   $f18, $f0, $f16            
/* 00858 80A0BF18 27B80028 */  addiu   $t8, $sp, 0x0028           ## $t8 = FFFFFFF0
/* 0085C 80A0BF1C 8FA20038 */  lw      $v0, 0x0038($sp)           
/* 00860 80A0BF20 46049180 */  add.s   $f6, $f18, $f4             
/* 00864 80A0BF24 E7A60030 */  swc1    $f6, 0x0030($sp)           
/* 00868 80A0BF28 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 0086C 80A0BF2C 460A4401 */  sub.s   $f16, $f8, $f10            
/* 00870 80A0BF30 E7B00028 */  swc1    $f16, 0x0028($sp)          
/* 00874 80A0BF34 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00878 80A0BF38 46123101 */  sub.s   $f4, $f6, $f18             
/* 0087C 80A0BF3C E7A40030 */  swc1    $f4, 0x0030($sp)           
/* 00880 80A0BF40 8F080000 */  lw      $t0, 0x0000($t8)           ## FFFFFFF0
/* 00884 80A0BF44 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 00888 80A0BF48 8F190004 */  lw      $t9, 0x0004($t8)           ## FFFFFFF4
/* 0088C 80A0BF4C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 00890 80A0BF50 8F080008 */  lw      $t0, 0x0008($t8)           ## FFFFFFF8
/* 00894 80A0BF54 AC480008 */  sw      $t0, 0x0008($v0)           ## 00000008
/* 00898 80A0BF58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0089C 80A0BF5C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 008A0 80A0BF60 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 008A4 80A0BF64 03E00008 */  jr      $ra                        
/* 008A8 80A0BF68 00000000 */  nop


