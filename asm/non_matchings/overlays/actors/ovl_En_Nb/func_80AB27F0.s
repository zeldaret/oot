glabel func_80AB27F0
/* 01A60 80AB27F0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01A64 80AB27F4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01A68 80AB27F8 10A00014 */  beq     $a1, $zero, .L80AB284C
/* 01A6C 80AB27FC AFA40028 */  sw      $a0, 0x0028($sp)
/* 01A70 80AB2800 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01A74 80AB2804 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01A78 80AB2808 248446A8 */  addiu   $a0, $a0, 0x46A8           ## $a0 = 060046A8
/* 01A7C 80AB280C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01A80 80AB2810 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01A84 80AB2814 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01A88 80AB2818 468021A0 */  cvt.s.w $f6, $f4
/* 01A8C 80AB281C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01A90 80AB2820 44070000 */  mfc1    $a3, $f0
/* 01A94 80AB2824 24A546A8 */  addiu   $a1, $a1, 0x46A8           ## $a1 = 060046A8
/* 01A98 80AB2828 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01A9C 80AB282C AFA00014 */  sw      $zero, 0x0014($sp)
/* 01AA0 80AB2830 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01AA4 80AB2834 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01AA8 80AB2838 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01AAC 80AB283C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01AB0 80AB2840 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 01AB4 80AB2844 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 01AB8 80AB2848 ADEE027C */  sw      $t6, 0x027C($t7)           ## 0000027C
.L80AB284C:
/* 01ABC 80AB284C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01AC0 80AB2850 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01AC4 80AB2854 03E00008 */  jr      $ra
/* 01AC8 80AB2858 00000000 */  nop


