glabel func_80B3C820
/* 00640 80B3C820 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00644 80B3C824 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00648 80B3C828 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0064C 80B3C82C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00650 80B3C830 0C028800 */  jal     SkelAnime_GetLastFrame

/* 00654 80B3C834 24844828 */  addiu   $a0, $a0, 0x4828           ## $a0 = 06004828
/* 00658 80B3C838 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0065C 80B3C83C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00660 80B3C840 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00664 80B3C844 468021A0 */  cvt.s.w $f6, $f4
/* 00668 80B3C848 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0066C 80B3C84C 44070000 */  mfc1    $a3, $f0
/* 00670 80B3C850 24A54828 */  addiu   $a1, $a1, 0x4828           ## $a1 = 06004828
/* 00674 80B3C854 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00678 80B3C858 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0067C 80B3C85C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00680 80B3C860 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00684 80B3C864 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00688 80B3C868 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0068C 80B3C86C 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 00690 80B3C870 240E0035 */  addiu   $t6, $zero, 0x0035         ## $t6 = 00000035
/* 00694 80B3C874 ADEE0260 */  sw      $t6, 0x0260($t7)           ## 00000260
/* 00698 80B3C878 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0069C 80B3C87C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006A0 80B3C880 03E00008 */  jr      $ra
/* 006A4 80B3C884 00000000 */  nop
