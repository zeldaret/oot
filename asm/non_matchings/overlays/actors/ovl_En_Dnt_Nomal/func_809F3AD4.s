glabel func_809F3AD4
/* 00814 809F3AD4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00818 809F3AD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0081C 809F3ADC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00820 809F3AE0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00824 809F3AE4 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 00828 809F3AE8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0082C 809F3AEC AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00830 809F3AF0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00834 809F3AF4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00838 809F3AF8 E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 0083C 809F3AFC 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00840 809F3B00 C7A6001C */  lwc1    $f6, 0x001C($sp)           
/* 00844 809F3B04 3C0F809F */  lui     $t7, %hi(func_809F3B40)    ## $t7 = 809F0000
/* 00848 809F3B08 84AE026E */  lh      $t6, 0x026E($a1)           ## 0000026E
/* 0084C 809F3B0C 25EF3B40 */  addiu   $t7, $t7, %lo(func_809F3B40) ## $t7 = 809F3B40
/* 00850 809F3B10 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 00854 809F3B14 00000000 */  nop
/* 00858 809F3B18 468042A0 */  cvt.s.w $f10, $f8                  
/* 0085C 809F3B1C 4606503E */  c.le.s  $f10, $f6                  
/* 00860 809F3B20 00000000 */  nop
/* 00864 809F3B24 45020003 */  bc1fl   .L809F3B34                 
/* 00868 809F3B28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0086C 809F3B2C ACAF0214 */  sw      $t7, 0x0214($a1)           ## 00000214
/* 00870 809F3B30 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F3B34:
/* 00874 809F3B34 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00878 809F3B38 03E00008 */  jr      $ra                        
/* 0087C 809F3B3C 00000000 */  nop
