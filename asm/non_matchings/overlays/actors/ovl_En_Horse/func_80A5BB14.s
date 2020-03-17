glabel func_80A5BB14
/* 00824 80A5BB14 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00828 80A5BB18 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0082C 80A5BB1C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00830 80A5BB20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00834 80A5BB24 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00838 80A5BB28 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0083C 80A5BB2C E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 00840 80A5BB30 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00844 80A5BB34 848400B4 */  lh      $a0, 0x00B4($a0)           ## 000000B4
/* 00848 80A5BB38 3C0180A6 */  lui     $at, %hi(D_80A6686C)       ## $at = 80A60000
/* 0084C 80A5BB3C C426686C */  lwc1    $f6, %lo(D_80A6686C)($at)  
/* 00850 80A5BB40 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 00854 80A5BB44 4606003C */  c.lt.s  $f0, $f6                   
/* 00858 80A5BB48 00000000 */  nop
/* 0085C 80A5BB4C 4502000C */  bc1fl   .L80A5BB80                 
/* 00860 80A5BB50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00864 80A5BB54 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00868 80A5BB58 85E400B4 */  lh      $a0, 0x00B4($t7)           ## 000000B4
/* 0086C 80A5BB5C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00870 80A5BB60 3C0180A6 */  lui     $at, %hi(D_80A66870)       ## $at = 80A60000
/* 00874 80A5BB64 4608003C */  c.lt.s  $f0, $f8                   
/* 00878 80A5BB68 00000000 */  nop
/* 0087C 80A5BB6C 45020004 */  bc1fl   .L80A5BB80                 
/* 00880 80A5BB70 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00884 80A5BB74 C42A6870 */  lwc1    $f10, %lo(D_80A66870)($at) 
/* 00888 80A5BB78 E7AA001C */  swc1    $f10, 0x001C($sp)          
/* 0088C 80A5BB7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5BB80:
/* 00890 80A5BB80 C7A0001C */  lwc1    $f0, 0x001C($sp)           
/* 00894 80A5BB84 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00898 80A5BB88 03E00008 */  jr      $ra                        
/* 0089C 80A5BB8C 00000000 */  nop


