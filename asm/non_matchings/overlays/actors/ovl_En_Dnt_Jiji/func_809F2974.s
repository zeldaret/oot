glabel func_809F2974
/* 00E94 809F2974 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E98 809F2978 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E9C 809F297C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00EA0 809F2980 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00EA4 809F2984 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 00EA8 809F2988 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00EAC 809F298C AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00EB0 809F2990 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00EB4 809F2994 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00EB8 809F2998 E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 00EBC 809F299C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00EC0 809F29A0 C7A6001C */  lwc1    $f6, 0x001C($sp)           
/* 00EC4 809F29A4 3C0F809F */  lui     $t7, %hi(func_809F1C44)    ## $t7 = 809F0000
/* 00EC8 809F29A8 84AE0248 */  lh      $t6, 0x0248($a1)           ## 00000248
/* 00ECC 809F29AC 25EF1C44 */  addiu   $t7, $t7, %lo(func_809F1C44) ## $t7 = 809F1C44
/* 00ED0 809F29B0 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 00ED4 809F29B4 00000000 */  nop
/* 00ED8 809F29B8 468042A0 */  cvt.s.w $f10, $f8                  
/* 00EDC 809F29BC 4606503E */  c.le.s  $f10, $f6                  
/* 00EE0 809F29C0 00000000 */  nop
/* 00EE4 809F29C4 45020003 */  bc1fl   .L809F29D4                 
/* 00EE8 809F29C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EEC 809F29CC ACAF022C */  sw      $t7, 0x022C($a1)           ## 0000022C
/* 00EF0 809F29D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F29D4:
/* 00EF4 809F29D4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00EF8 809F29D8 03E00008 */  jr      $ra                        
/* 00EFC 809F29DC 00000000 */  nop
