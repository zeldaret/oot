glabel func_80834758
/* 02548 80834758 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0254C 8083475C AFBF002C */  sw      $ra, 0x002C($sp)
/* 02550 80834760 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02554 80834764 AFA40038 */  sw      $a0, 0x0038($sp)
/* 02558 80834768 8CAE067C */  lw      $t6, 0x067C($a1)           ## 0000067C
/* 0255C 8083476C 3C0120C0 */  lui     $at, 0x20C0                ## $at = 20C00000
/* 02560 80834770 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02564 80834774 01C17824 */  and     $t7, $t6, $at
/* 02568 80834778 15E00032 */  bne     $t7, $zero, .L80834844
/* 0256C 8083477C 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 02570 80834780 0324C821 */  addu    $t9, $t9, $a0
/* 02574 80834784 83391E5C */  lb      $t9, 0x1E5C($t9)           ## 00011E5C
/* 02578 80834788 5720002F */  bnel    $t9, $zero, .L80834848
/* 0257C 8083478C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02580 80834790 80A80154 */  lb      $t0, 0x0154($a1)           ## 00000154
/* 02584 80834794 80A90151 */  lb      $t1, 0x0151($a1)           ## 00000151
/* 02588 80834798 5509002B */  bnel    $t0, $t1, .L80834848
/* 0258C 8083479C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02590 808347A0 80AA014E */  lb      $t2, 0x014E($a1)           ## 0000014E
/* 02594 808347A4 51400028 */  beql    $t2, $zero, .L80834848
/* 02598 808347A8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0259C 808347AC 0C023A74 */  jal     func_8008E9D0
/* 025A0 808347B0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 025A4 808347B4 54400024 */  bnel    $v0, $zero, .L80834848
/* 025A8 808347B8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 025AC 808347BC 0C20CEF3 */  jal     func_80833BCC
/* 025B0 808347C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025B4 808347C4 1040001F */  beq     $v0, $zero, .L80834844
/* 025B8 808347C8 3C0B8086 */  lui     $t3, %hi(D_80858AB4)       ## $t3 = 80860000
/* 025BC 808347CC 8D6B8AB4 */  lw      $t3, %lo(D_80858AB4)($t3)
/* 025C0 808347D0 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 025C4 808347D4 8FA40038 */  lw      $a0, 0x0038($sp)
/* 025C8 808347D8 956C0000 */  lhu     $t4, 0x0000($t3)           ## 80860000
/* 025CC 808347DC 01816827 */  nor     $t5, $t4, $at
/* 025D0 808347E0 55A00019 */  bnel    $t5, $zero, .L80834848
/* 025D4 808347E4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 025D8 808347E8 0C20D1B1 */  jal     func_808346C4
/* 025DC 808347EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 025E0 808347F0 AFA20034 */  sw      $v0, 0x0034($sp)
/* 025E4 808347F4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 025E8 808347F8 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 025EC 808347FC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 025F0 80834800 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 025F4 80834804 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 025F8 80834808 46802020 */  cvt.s.w $f0, $f4
/* 025FC 8083480C AFAE0018 */  sw      $t6, 0x0018($sp)
/* 02600 80834810 8FA40038 */  lw      $a0, 0x0038($sp)
/* 02604 80834814 260506C8 */  addiu   $a1, $s0, 0x06C8           ## $a1 = 000006C8
/* 02608 80834818 8FA60034 */  lw      $a2, 0x0034($sp)
/* 0260C 8083481C 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 02610 80834820 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 02614 80834824 E7A00014 */  swc1    $f0, 0x0014($sp)
/* 02618 80834828 0C028FC2 */  jal     SkelAnime_LinkChangeAnimation
/* 0261C 8083482C E7A6001C */  swc1    $f6, 0x001C($sp)
/* 02620 80834830 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02624 80834834 0C00BDF7 */  jal     func_8002F7DC
/* 02628 80834838 2405181F */  addiu   $a1, $zero, 0x181F         ## $a1 = 0000181F
/* 0262C 8083483C 10000002 */  beq     $zero, $zero, .L80834848
/* 02630 80834840 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80834844:
/* 02634 80834844 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80834848:
/* 02638 80834848 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0263C 8083484C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02640 80834850 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02644 80834854 03E00008 */  jr      $ra
/* 02648 80834858 00000000 */  nop


