glabel func_80B40820
/* 04640 80B40820 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 04644 80B40824 AFB00028 */  sw      $s0, 0x0028($sp)
/* 04648 80B40828 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0464C 80B4082C AFBF002C */  sw      $ra, 0x002C($sp)
/* 04650 80B40830 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 04654 80B40834 AFA5004C */  sw      $a1, 0x004C($sp)
/* 04658 80B40838 0C028800 */  jal     Animation_GetLastFrame

/* 0465C 80B4083C 24844828 */  addiu   $a0, $a0, 0x4828           ## $a0 = 06004828
/* 04660 80B40840 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04664 80B40844 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04668 80B40848 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0466C 80B4084C 468021A0 */  cvt.s.w $f6, $f4
/* 04670 80B40850 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04674 80B40854 44070000 */  mfc1    $a3, $f0
/* 04678 80B40858 24A54828 */  addiu   $a1, $a1, 0x4828           ## $a1 = 06004828
/* 0467C 80B4085C AFA40034 */  sw      $a0, 0x0034($sp)
/* 04680 80B40860 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04684 80B40864 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 04688 80B40868 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0468C 80B4086C 0C029468 */  jal     Animation_Change

/* 04690 80B40870 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 04694 80B40874 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04698 80B40878 8FA5004C */  lw      $a1, 0x004C($sp)
/* 0469C 80B4087C 0C2CF162 */  jal     func_80B3C588
/* 046A0 80B40880 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 046A4 80B40884 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 046A8 80B40888 0C2CF259 */  jal     func_80B3C964
/* 046AC 80B4088C 8FA5004C */  lw      $a1, 0x004C($sp)
/* 046B0 80B40890 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 046B4 80B40894 0C028800 */  jal     Animation_GetLastFrame

/* 046B8 80B40898 248469E8 */  addiu   $a0, $a0, 0x69E8           ## $a0 = 060169E8
/* 046BC 80B4089C 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 046C0 80B408A0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 046C4 80B408A4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 046C8 80B408A8 468042A0 */  cvt.s.w $f10, $f8
/* 046CC 80B408AC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 046D0 80B408B0 44070000 */  mfc1    $a3, $f0
/* 046D4 80B408B4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 046D8 80B408B8 24A569E8 */  addiu   $a1, $a1, 0x69E8           ## $a1 = 060169E8
/* 046DC 80B408BC 8FA40034 */  lw      $a0, 0x0034($sp)
/* 046E0 80B408C0 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 046E4 80B408C4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 046E8 80B408C8 0C029468 */  jal     Animation_Change

/* 046EC 80B408CC E7A00018 */  swc1    $f0, 0x0018($sp)
/* 046F0 80B408D0 240F003C */  addiu   $t7, $zero, 0x003C         ## $t7 = 0000003C
/* 046F4 80B408D4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 046F8 80B408D8 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 046FC 80B408DC AE0F0260 */  sw      $t7, 0x0260($s0)           ## 00000260
/* 04700 80B408E0 AE180264 */  sw      $t8, 0x0264($s0)           ## 00000264
/* 04704 80B408E4 A21900C8 */  sb      $t9, 0x00C8($s0)           ## 000000C8
/* 04708 80B408E8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0470C 80B408EC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 04710 80B408F0 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 04714 80B408F4 03E00008 */  jr      $ra
/* 04718 80B408F8 00000000 */  nop
