glabel func_80B408FC
/* 0471C 80B408FC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 04720 80B40900 AFB00028 */  sw      $s0, 0x0028($sp)
/* 04724 80B40904 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04728 80B40908 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0472C 80B4090C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 04730 80B40910 AFA5004C */  sw      $a1, 0x004C($sp)
/* 04734 80B40914 0C028800 */  jal     Animation_GetLastFrame

/* 04738 80B40918 24844828 */  addiu   $a0, $a0, 0x4828           ## $a0 = 06004828
/* 0473C 80B4091C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04740 80B40920 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04744 80B40924 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 04748 80B40928 468021A0 */  cvt.s.w $f6, $f4
/* 0474C 80B4092C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04750 80B40930 44070000 */  mfc1    $a3, $f0
/* 04754 80B40934 24A54828 */  addiu   $a1, $a1, 0x4828           ## $a1 = 06004828
/* 04758 80B40938 AFA40034 */  sw      $a0, 0x0034($sp)
/* 0475C 80B4093C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04760 80B40940 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 04764 80B40944 AFA00014 */  sw      $zero, 0x0014($sp)
/* 04768 80B40948 0C029468 */  jal     Animation_Change

/* 0476C 80B4094C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 04770 80B40950 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04774 80B40954 8FA5004C */  lw      $a1, 0x004C($sp)
/* 04778 80B40958 0C2CF162 */  jal     func_80B3C588
/* 0477C 80B4095C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 04780 80B40960 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04784 80B40964 0C2CF259 */  jal     func_80B3C964
/* 04788 80B40968 8FA5004C */  lw      $a1, 0x004C($sp)
/* 0478C 80B4096C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 04790 80B40970 0C028800 */  jal     Animation_GetLastFrame

/* 04794 80B40974 248449E4 */  addiu   $a0, $a0, 0x49E4           ## $a0 = 060149E4
/* 04798 80B40978 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 0479C 80B4097C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 047A0 80B40980 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 047A4 80B40984 468042A0 */  cvt.s.w $f10, $f8
/* 047A8 80B40988 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 047AC 80B4098C 44070000 */  mfc1    $a3, $f0
/* 047B0 80B40990 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 047B4 80B40994 24A549E4 */  addiu   $a1, $a1, 0x49E4           ## $a1 = 060149E4
/* 047B8 80B40998 8FA40034 */  lw      $a0, 0x0034($sp)
/* 047BC 80B4099C E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 047C0 80B409A0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 047C4 80B409A4 0C029468 */  jal     Animation_Change

/* 047C8 80B409A8 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 047CC 80B409AC 240F003D */  addiu   $t7, $zero, 0x003D         ## $t7 = 0000003D
/* 047D0 80B409B0 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 047D4 80B409B4 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 047D8 80B409B8 AE0F0260 */  sw      $t7, 0x0260($s0)           ## 00000260
/* 047DC 80B409BC AE180264 */  sw      $t8, 0x0264($s0)           ## 00000264
/* 047E0 80B409C0 A21900C8 */  sb      $t9, 0x00C8($s0)           ## 000000C8
/* 047E4 80B409C4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 047E8 80B409C8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 047EC 80B409CC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 047F0 80B409D0 03E00008 */  jr      $ra
/* 047F4 80B409D4 00000000 */  nop
