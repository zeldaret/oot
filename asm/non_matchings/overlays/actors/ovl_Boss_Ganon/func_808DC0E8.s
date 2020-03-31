glabel func_808DC0E8
/* 05878 808DC0E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0587C 808DC0EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05880 808DC0F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 05884 808DC0F4 0C235C4B */  jal     func_808D712C              
/* 05888 808DC0F8 2406017C */  addiu   $a2, $zero, 0x017C         ## $a2 = 0000017C
/* 0588C 808DC0FC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 05890 808DC100 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 05894 808DC104 2484738C */  addiu   $a0, $a0, 0x738C           ## $a0 = 0600738C
/* 05898 808DC108 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0589C 808DC10C 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 058A0 808DC110 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 058A4 808DC114 468021A0 */  cvt.s.w $f6, $f4                   
/* 058A8 808DC118 24A5738C */  addiu   $a1, $a1, 0x738C           ## $a1 = 0600738C
/* 058AC 808DC11C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 058B0 808DC120 24640150 */  addiu   $a0, $v1, 0x0150           ## $a0 = 00000150
/* 058B4 808DC124 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 058B8 808DC128 E46601CC */  swc1    $f6, 0x01CC($v1)           ## 000001CC
/* 058BC 808DC12C 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 058C0 808DC130 3C0E808E */  lui     $t6, %hi(func_808DC14C)    ## $t6 = 808E0000
/* 058C4 808DC134 25CEC14C */  addiu   $t6, $t6, %lo(func_808DC14C) ## $t6 = 808DC14C
/* 058C8 808DC138 ADEE0194 */  sw      $t6, 0x0194($t7)           ## 00000194
/* 058CC 808DC13C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 058D0 808DC140 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 058D4 808DC144 03E00008 */  jr      $ra                        
/* 058D8 808DC148 00000000 */  nop


