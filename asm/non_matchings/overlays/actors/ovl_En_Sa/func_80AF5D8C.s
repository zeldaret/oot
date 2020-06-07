glabel func_80AF5D8C
/* 0082C 80AF5D8C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00830 80AF5D90 3C0F80AF */  lui     $t7, %hi(D_80AF7298)       ## $t7 = 80AF0000
/* 00834 80AF5D94 25EF7298 */  addiu   $t7, $t7, %lo(D_80AF7298)  ## $t7 = 80AF7298
/* 00838 80AF5D98 00057100 */  sll     $t6, $a1,  4
/* 0083C 80AF5D9C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00840 80AF5DA0 AFA40030 */  sw      $a0, 0x0030($sp)
/* 00844 80AF5DA4 01CF1821 */  addu    $v1, $t6, $t7
/* 00848 80AF5DA8 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 0084C 80AF5DAC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00850 80AF5DB0 AFA30028 */  sw      $v1, 0x0028($sp)
/* 00854 80AF5DB4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00858 80AF5DB8 8FA30028 */  lw      $v1, 0x0028($sp)
/* 0085C 80AF5DBC 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00860 80AF5DC0 468021A0 */  cvt.s.w $f6, $f4
/* 00864 80AF5DC4 90780008 */  lbu     $t8, 0x0008($v1)           ## 00000008
/* 00868 80AF5DC8 C468000C */  lwc1    $f8, 0x000C($v1)           ## 0000000C
/* 0086C 80AF5DCC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00870 80AF5DD0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00874 80AF5DD4 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 00878 80AF5DD8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0087C 80AF5DDC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00880 80AF5DE0 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00884 80AF5DE4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00888 80AF5DE8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 0088C 80AF5DEC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00890 80AF5DF0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00894 80AF5DF4 03E00008 */  jr      $ra
/* 00898 80AF5DF8 00000000 */  nop
