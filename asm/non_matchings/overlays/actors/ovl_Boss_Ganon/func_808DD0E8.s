glabel func_808DD0E8
/* 06878 808DD0E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0687C 808DD0EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 06880 808DD0F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 06884 808DD0F4 0C235C4B */  jal     func_808D712C              
/* 06888 808DD0F8 2406017C */  addiu   $a2, $zero, 0x017C         ## $a2 = 0000017C
/* 0688C 808DD0FC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 06890 808DD100 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 06894 808DD104 248496B0 */  addiu   $a0, $a0, 0x96B0           ## $a0 = 060096B0
/* 06898 808DD108 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0689C 808DD10C 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 068A0 808DD110 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 068A4 808DD114 468021A0 */  cvt.s.w $f6, $f4                   
/* 068A8 808DD118 24A596B0 */  addiu   $a1, $a1, 0x96B0           ## $a1 = 060096B0
/* 068AC 808DD11C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 068B0 808DD120 24640150 */  addiu   $a0, $v1, 0x0150           ## $a0 = 00000150
/* 068B4 808DD124 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 068B8 808DD128 E46601CC */  swc1    $f6, 0x01CC($v1)           ## 000001CC
/* 068BC 808DD12C 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 068C0 808DD130 3C0E808E */  lui     $t6, %hi(func_808DD14C)    ## $t6 = 808E0000
/* 068C4 808DD134 25CED14C */  addiu   $t6, $t6, %lo(func_808DD14C) ## $t6 = 808DD14C
/* 068C8 808DD138 ADEE0194 */  sw      $t6, 0x0194($t7)           ## 00000194
/* 068CC 808DD13C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 068D0 808DD140 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 068D4 808DD144 03E00008 */  jr      $ra                        
/* 068D8 808DD148 00000000 */  nop


