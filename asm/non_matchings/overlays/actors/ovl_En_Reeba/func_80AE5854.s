glabel func_80AE5854
/* 00B84 80AE5854 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B88 80AE5858 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B8C 80AE585C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00B90 80AE5860 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B94 80AE5864 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B98 80AE5868 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00B9C 80AE586C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00BA0 80AE5870 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00BA4 80AE5874 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00BA8 80AE5878 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00BAC 80AE587C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BB0 80AE5880 C4A00068 */  lwc1    $f0, 0x0068($a1)           ## 00000068
/* 00BB4 80AE5884 4604003C */  c.lt.s  $f0, $f4                   
/* 00BB8 80AE5888 00000000 */  nop
/* 00BBC 80AE588C 45020006 */  bc1fl   .L80AE58A8                 
/* 00BC0 80AE5890 84AE0276 */  lh      $t6, 0x0276($a1)           ## 00000276
/* 00BC4 80AE5894 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 00BC8 80AE5898 00000000 */  nop
/* 00BCC 80AE589C 46060200 */  add.s   $f8, $f0, $f6              
/* 00BD0 80AE58A0 E4A80068 */  swc1    $f8, 0x0068($a1)           ## 00000068
/* 00BD4 80AE58A4 84AE0276 */  lh      $t6, 0x0276($a1)           ## 00000276
.L80AE58A8:
/* 00BD8 80AE58A8 55C0000D */  bnel    $t6, $zero, .L80AE58E0     
/* 00BDC 80AE58AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BE0 80AE58B0 84AF027A */  lh      $t7, 0x027A($a1)           ## 0000027A
/* 00BE4 80AE58B4 3C0880AE */  lui     $t0, %hi(func_80AE5688)    ## $t0 = 80AE0000
/* 00BE8 80AE58B8 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 00BEC 80AE58BC 11E00006 */  beq     $t7, $zero, .L80AE58D8     
/* 00BF0 80AE58C0 25085688 */  addiu   $t0, $t0, %lo(func_80AE5688) ## $t0 = 80AE5688
/* 00BF4 80AE58C4 3C1980AE */  lui     $t9, %hi(func_80AE538C)    ## $t9 = 80AE0000
/* 00BF8 80AE58C8 2739538C */  addiu   $t9, $t9, %lo(func_80AE538C) ## $t9 = 80AE538C
/* 00BFC 80AE58CC A4B80270 */  sh      $t8, 0x0270($a1)           ## 00000270
/* 00C00 80AE58D0 10000002 */  beq     $zero, $zero, .L80AE58DC   
/* 00C04 80AE58D4 ACB9026C */  sw      $t9, 0x026C($a1)           ## 0000026C
.L80AE58D8:
/* 00C08 80AE58D8 ACA8026C */  sw      $t0, 0x026C($a1)           ## 0000026C
.L80AE58DC:
/* 00C0C 80AE58DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE58E0:
/* 00C10 80AE58E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C14 80AE58E4 03E00008 */  jr      $ra                        
/* 00C18 80AE58E8 00000000 */  nop
