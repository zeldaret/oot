glabel func_80A177C8
/* 002B8 80A177C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002BC 80A177CC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 002C0 80A177D0 AFA40018 */  sw      $a0, 0x0018($sp)
/* 002C4 80A177D4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 002C8 80A177D8 24A5A054 */  addiu   $a1, $a1, 0xA054           ## $a1 = 0600A054
/* 002CC 80A177DC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 002D0 80A177E0 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 002D4 80A177E4 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 002D8 80A177E8 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 002DC 80A177EC 3C0E80A2 */  lui     $t6, %hi(func_80A185C4)    ## $t6 = 80A20000
/* 002E0 80A177F0 25CE85C4 */  addiu   $t6, $t6, %lo(func_80A185C4) ## $t6 = 80A185C4
/* 002E4 80A177F4 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 002E8 80A177F8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 002EC 80A177FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F0 80A17800 03E00008 */  jr      $ra
/* 002F4 80A17804 00000000 */  nop


