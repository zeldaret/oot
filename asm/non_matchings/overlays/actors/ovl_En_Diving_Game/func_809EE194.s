glabel func_809EE194
/* 00924 809EE194 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00928 809EE198 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0092C 809EE19C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00930 809EE1A0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00934 809EE1A4 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 00938 809EE1A8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0093C 809EE1AC AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00940 809EE1B0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00944 809EE1B4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00948 809EE1B8 E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 0094C 809EE1BC 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00950 809EE1C0 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 00954 809EE1C4 C7A6001C */  lwc1    $f6, 0x001C($sp)           
/* 00958 809EE1C8 3C0E809F */  lui     $t6, %hi(func_809EE1F4)    ## $t6 = 809F0000
/* 0095C 809EE1CC 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00960 809EE1D0 4606403E */  c.le.s  $f8, $f6                   
/* 00964 809EE1D4 25CEE1F4 */  addiu   $t6, $t6, %lo(func_809EE1F4) ## $t6 = 809EE1F4
/* 00968 809EE1D8 45020003 */  bc1fl   .L809EE1E8                 
/* 0096C 809EE1DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00970 809EE1E0 ACAE0280 */  sw      $t6, 0x0280($a1)           ## 00000280
/* 00974 809EE1E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809EE1E8:
/* 00978 809EE1E8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0097C 809EE1EC 03E00008 */  jr      $ra                        
/* 00980 809EE1F0 00000000 */  nop


