glabel func_809317F8
/* 05228 809317F8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0522C 809317FC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 05230 80931800 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05234 80931804 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05238 80931808 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0523C 8093180C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 05240 80931810 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 05244 80931814 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 05248 80931818 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0524C 8093181C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 05250 80931820 24060200 */  addiu   $a2, $zero, 0x0200         ## $a2 = 00000200
/* 05254 80931824 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 05258 80931828 860501A4 */  lh      $a1, 0x01A4($s0)           ## 000001A4
/* 0525C 8093182C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 05260 80931830 24060100 */  addiu   $a2, $zero, 0x0100         ## $a2 = 00000100
/* 05264 80931834 10400003 */  beq     $v0, $zero, .L80931844     
/* 05268 80931838 00000000 */  nop
/* 0526C 8093183C 0C24C11D */  jal     func_80930474              
/* 05270 80931840 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80931844:
/* 05274 80931844 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 05278 80931848 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 0527C 8093184C C60403C4 */  lwc1    $f4, 0x03C4($s0)           ## 000003C4
/* 05280 80931850 3C0E8094 */  lui     $t6, %hi(D_80938C90)       ## $t6 = 80940000
/* 05284 80931854 8DCE8C90 */  lw      $t6, %lo(D_80938C90)($t6)  
/* 05288 80931858 46040182 */  mul.s   $f6, $f0, $f4              
/* 0528C 8093185C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 05290 80931860 C5C80024 */  lwc1    $f8, 0x0024($t6)           ## 80940024
/* 05294 80931864 46083280 */  add.s   $f10, $f6, $f8             
/* 05298 80931868 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 0529C 8093186C E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 052A0 80931870 C61003C4 */  lwc1    $f16, 0x03C4($s0)          ## 000003C4
/* 052A4 80931874 3C0F8094 */  lui     $t7, %hi(D_80938C90)       ## $t7 = 80940000
/* 052A8 80931878 8DEF8C90 */  lw      $t7, %lo(D_80938C90)($t7)  
/* 052AC 8093187C 46100482 */  mul.s   $f18, $f0, $f16            
/* 052B0 80931880 C5E4002C */  lwc1    $f4, 0x002C($t7)           ## 8094002C
/* 052B4 80931884 46049180 */  add.s   $f6, $f18, $f4             
/* 052B8 80931888 E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 052BC 8093188C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 052C0 80931890 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 052C4 80931894 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 052C8 80931898 03E00008 */  jr      $ra                        
/* 052CC 8093189C 00000000 */  nop
