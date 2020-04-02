glabel func_80AB26DC
/* 0194C 80AB26DC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01950 80AB26E0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01954 80AB26E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01958 80AB26E8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0195C 80AB26EC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01960 80AB26F0 AFA50044 */  sw      $a1, 0x0044($sp)
/* 01964 80AB26F4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01968 80AB26F8 24848BD0 */  addiu   $a0, $a0, 0x8BD0           ## $a0 = 06008BD0
/* 0196C 80AB26FC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01970 80AB2700 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01974 80AB2704 8FA50044 */  lw      $a1, 0x0044($sp)
/* 01978 80AB2708 468021A0 */  cvt.s.w $f6, $f4
/* 0197C 80AB270C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01980 80AB2710 0C2AC4C4 */  jal     func_80AB1310
/* 01984 80AB2714 E7A60034 */  swc1    $f6, 0x0034($sp)
/* 01988 80AB2718 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0198C 80AB271C C7A80034 */  lwc1    $f8, 0x0034($sp)
/* 01990 80AB2720 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01994 80AB2724 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01998 80AB2728 44070000 */  mfc1    $a3, $f0
/* 0199C 80AB272C AFAE0014 */  sw      $t6, 0x0014($sp)
/* 019A0 80AB2730 24A58BD0 */  addiu   $a1, $a1, 0x8BD0           ## $a1 = 06008BD0
/* 019A4 80AB2734 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 019A8 80AB2738 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 019AC 80AB273C E7A80010 */  swc1    $f8, 0x0010($sp)
/* 019B0 80AB2740 0C029468 */  jal     SkelAnime_ChangeAnim

/* 019B4 80AB2744 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 019B8 80AB2748 240F000E */  addiu   $t7, $zero, 0x000E         ## $t7 = 0000000E
/* 019BC 80AB274C 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 019C0 80AB2750 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 019C4 80AB2754 AE0F0278 */  sw      $t7, 0x0278($s0)           ## 00000278
/* 019C8 80AB2758 AE18027C */  sw      $t8, 0x027C($s0)           ## 0000027C
/* 019CC 80AB275C A21900C8 */  sb      $t9, 0x00C8($s0)           ## 000000C8
/* 019D0 80AB2760 8FBF002C */  lw      $ra, 0x002C($sp)
/* 019D4 80AB2764 8FB00028 */  lw      $s0, 0x0028($sp)
/* 019D8 80AB2768 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 019DC 80AB276C 03E00008 */  jr      $ra
/* 019E0 80AB2770 00000000 */  nop


