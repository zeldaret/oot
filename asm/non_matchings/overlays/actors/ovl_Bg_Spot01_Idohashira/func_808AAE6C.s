glabel func_808AAE6C
/* 0018C 808AAE6C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00190 808AAE70 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00194 808AAE74 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 00198 808AAE78 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0019C 808AAE7C 8C980024 */  lw      $t8, 0x0024($a0)           ## 00000024
/* 001A0 808AAE80 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF0
/* 001A4 808AAE84 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 001A8 808AAE88 ACB80000 */  sw      $t8, 0x0000($a1)           ## FFFFFFF0
/* 001AC 808AAE8C 8C8F0028 */  lw      $t7, 0x0028($a0)           ## 00000028
/* 001B0 808AAE90 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 001B4 808AAE94 ACAF0004 */  sw      $t7, 0x0004($a1)           ## FFFFFFF4
/* 001B8 808AAE98 8C98002C */  lw      $t8, 0x002C($a0)           ## 0000002C
/* 001BC 808AAE9C ACB80008 */  sw      $t8, 0x0008($a1)           ## FFFFFFF8
/* 001C0 808AAEA0 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 001C4 808AAEA4 C7A40034 */  lwc1    $f4, 0x0034($sp)           
/* 001C8 808AAEA8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 001CC 808AAEAC 84591472 */  lh      $t9, 0x1472($v0)           ## 80161472
/* 001D0 808AAEB0 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 001D4 808AAEB4 00000000 */  nop
/* 001D8 808AAEB8 46803220 */  cvt.s.w $f8, $f6                   
/* 001DC 808AAEBC 44813000 */  mtc1    $at, $f6                   ## $f6 = 350.00
/* 001E0 808AAEC0 46082280 */  add.s   $f10, $f4, $f8             
/* 001E4 808AAEC4 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 001E8 808AAEC8 8448146A */  lh      $t0, 0x146A($v0)           ## 8016146A
/* 001EC 808AAECC 8449146E */  lh      $t1, 0x146E($v0)           ## 8016146E
/* 001F0 808AAED0 8447146C */  lh      $a3, 0x146C($v0)           ## 8016146C
/* 001F4 808AAED4 44888000 */  mtc1    $t0, $f16                  ## $f16 = 0.00
/* 001F8 808AAED8 252A07D0 */  addiu   $t2, $t1, 0x07D0           ## $t2 = 000007D0
/* 001FC 808AAEDC AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00200 808AAEE0 468084A0 */  cvt.s.w $f18, $f16                 
/* 00204 808AAEE4 844B1470 */  lh      $t3, 0x1470($v0)           ## 80161470
/* 00208 808AAEE8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0020C 808AAEEC 24E70005 */  addiu   $a3, $a3, 0x0005           ## $a3 = 00000005
/* 00210 808AAEF0 256C0320 */  addiu   $t4, $t3, 0x0320           ## $t4 = 00000320
/* 00214 808AAEF4 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00218 808AAEF8 46069100 */  add.s   $f4, $f18, $f6             
/* 0021C 808AAEFC 44062000 */  mfc1    $a2, $f4                   
/* 00220 808AAF00 0C00CD20 */  jal     func_80033480              
/* 00224 808AAF04 00000000 */  nop
/* 00228 808AAF08 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0022C 808AAF0C 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF0
/* 00230 808AAF10 0C22AB4F */  jal     func_808AAD3C              
/* 00234 808AAF14 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00238 808AAF18 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 0023C 808AAF1C 0C22AB41 */  jal     func_808AAD04              
/* 00240 808AAF20 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00244 808AAF24 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00248 808AAF28 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0024C 808AAF2C 03E00008 */  jr      $ra                        
/* 00250 808AAF30 00000000 */  nop
