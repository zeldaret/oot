glabel func_80B5E090
/* 028E0 80B5E090 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 028E4 80B5E094 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 028E8 80B5E098 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 028EC 80B5E09C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 028F0 80B5E0A0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 028F4 80B5E0A4 84AE01D4 */  lh      $t6, 0x01D4($a1)           ## 000001D4
/* 028F8 80B5E0A8 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 028FC 80B5E0AC 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 02900 80B5E0B0 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 02904 80B5E0B4 3C0F80B6 */  lui     $t7, %hi(func_80B5B90C)    ## $t7 = 80B60000
/* 02908 80B5E0B8 3C1880B6 */  lui     $t8, %hi(func_80B5B9B0)    ## $t8 = 80B60000
/* 0290C 80B5E0BC 468021A0 */  cvt.s.w $f6, $f4                   
/* 02910 80B5E0C0 2718B9B0 */  addiu   $t8, $t8, %lo(func_80B5B9B0) ## $t8 = 80B5B9B0
/* 02914 80B5E0C4 25EFB90C */  addiu   $t7, $t7, %lo(func_80B5B90C) ## $t7 = 80B5B90C
/* 02918 80B5E0C8 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 0291C 80B5E0CC AFB80014 */  sw      $t8, 0x0014($sp)           
/* 02920 80B5E0D0 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 02924 80B5E0D4 46083280 */  add.s   $f10, $f6, $f8             
/* 02928 80B5E0D8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0292C 80B5E0DC 24A601E0 */  addiu   $a2, $a1, 0x01E0           ## $a2 = 000001E0
/* 02930 80B5E0E0 44075000 */  mfc1    $a3, $f10                  
/* 02934 80B5E0E4 0C00D0F3 */  jal     func_800343CC              
/* 02938 80B5E0E8 00000000 */  nop
/* 0293C 80B5E0EC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02940 80B5E0F0 0C2D6EDE */  jal     func_80B5BB78              
/* 02944 80B5E0F4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02948 80B5E0F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0294C 80B5E0FC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02950 80B5E100 03E00008 */  jr      $ra                        
/* 02954 80B5E104 00000000 */  nop
