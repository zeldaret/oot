glabel func_800E4FB0
/* B5C150 800E4FB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5C154 800E4FB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5C158 800E4FB8 3C048017 */  lui   $a0, %hi(D_8016B6E0) # $a0, 0x8017
/* B5C15C 800E4FBC 3C058017 */  lui   $a1, %hi(D_8016B6F8) # $a1, 0x8017
/* B5C160 800E4FC0 24A5B6F8 */  addiu $a1, %lo(D_8016B6F8) # addiu $a1, $a1, -0x4908
/* B5C164 800E4FC4 2484B6E0 */  addiu $a0, %lo(D_8016B6E0) # addiu $a0, $a0, -0x4920
/* B5C168 800E4FC8 0C001874 */  jal   osCreateMesgQueue
/* B5C16C 800E4FCC 24060010 */   li    $a2, 16
/* B5C170 800E4FD0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5C174 800E4FD4 27BD0018 */  addiu $sp, $sp, 0x18
/* B5C178 800E4FD8 03E00008 */  jr    $ra
/* B5C17C 800E4FDC 00000000 */   nop

