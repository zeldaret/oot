glabel func_80AB285C
/* 01ACC 80AB285C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01AD0 80AB2860 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01AD4 80AB2864 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01AD8 80AB2868 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01ADC 80AB286C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01AE0 80AB2870 24843954 */  addiu   $a0, $a0, 0x3954           ## $a0 = 06003954
/* 01AE4 80AB2874 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01AE8 80AB2878 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01AEC 80AB287C 8FA30028 */  lw      $v1, 0x0028($sp)
/* 01AF0 80AB2880 468021A0 */  cvt.s.w $f6, $f4
/* 01AF4 80AB2884 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 01AF8 80AB2888 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01AFC 80AB288C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01B00 80AB2890 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01B04 80AB2894 24A53954 */  addiu   $a1, $a1, 0x3954           ## $a1 = 06003954
/* 01B08 80AB2898 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01B0C 80AB289C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01B10 80AB28A0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01B14 80AB28A4 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 01B18 80AB28A8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01B1C 80AB28AC E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01B20 80AB28B0 8FA30028 */  lw      $v1, 0x0028($sp)
/* 01B24 80AB28B4 240F0010 */  addiu   $t7, $zero, 0x0010         ## $t7 = 00000010
/* 01B28 80AB28B8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01B2C 80AB28BC 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01B30 80AB28C0 AC6F0278 */  sw      $t7, 0x0278($v1)           ## 00000278
/* 01B34 80AB28C4 AC78027C */  sw      $t8, 0x027C($v1)           ## 0000027C
/* 01B38 80AB28C8 A07900C8 */  sb      $t9, 0x00C8($v1)           ## 000000C8
/* 01B3C 80AB28CC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01B40 80AB28D0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01B44 80AB28D4 03E00008 */  jr      $ra
/* 01B48 80AB28D8 00000000 */  nop
