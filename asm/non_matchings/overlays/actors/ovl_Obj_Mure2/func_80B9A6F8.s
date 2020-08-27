glabel func_80B9A6F8
/* 007B8 80B9A6F8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007BC 80B9A6FC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007C0 80B9A700 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 007C4 80B9A704 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007C8 80B9A708 0C2E694D */  jal     func_80B9A534              
/* 007CC 80B9A70C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 007D0 80B9A710 C60C00E4 */  lwc1    $f12, 0x00E4($s0)          ## 000000E4
/* 007D4 80B9A714 0C032D57 */  jal     Math3D_Dist1DSq              
/* 007D8 80B9A718 C60E00EC */  lwc1    $f14, 0x00EC($s0)          ## 000000EC
/* 007DC 80B9A71C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 007E0 80B9A720 3C0180BA */  lui     $at, %hi(D_80B9A80C)       ## $at = 80BA0000
/* 007E4 80B9A724 C6060184 */  lwc1    $f6, 0x0184($s0)           ## 00000184
/* 007E8 80B9A728 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 007EC 80B9A72C 000FC080 */  sll     $t8, $t7,  2               
/* 007F0 80B9A730 00380821 */  addu    $at, $at, $t8              
/* 007F4 80B9A734 C424A80C */  lwc1    $f4, %lo(D_80B9A80C)($at)  
/* 007F8 80B9A738 46062202 */  mul.s   $f8, $f4, $f6              
/* 007FC 80B9A73C 4600403E */  c.le.s  $f8, $f0                   
/* 00800 80B9A740 00000000 */  nop
/* 00804 80B9A744 4502000B */  bc1fl   .L80B9A774                 
/* 00808 80B9A748 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0080C 80B9A74C 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 00810 80B9A750 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00814 80B9A754 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00818 80B9A758 03214024 */  and     $t0, $t9, $at              
/* 0081C 80B9A75C AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 00820 80B9A760 0C2E690E */  jal     func_80B9A438              
/* 00824 80B9A764 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00828 80B9A768 0C2E6996 */  jal     func_80B9A658              
/* 0082C 80B9A76C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00830 80B9A770 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9A774:
/* 00834 80B9A774 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00838 80B9A778 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0083C 80B9A77C 03E00008 */  jr      $ra                        
/* 00840 80B9A780 00000000 */  nop
