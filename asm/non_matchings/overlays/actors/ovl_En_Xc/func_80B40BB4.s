glabel func_80B40BB4
/* 049D4 80B40BB4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 049D8 80B40BB8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 049DC 80B40BBC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 049E0 80B40BC0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 049E4 80B40BC4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 049E8 80B40BC8 AFA50044 */  sw      $a1, 0x0044($sp)
/* 049EC 80B40BCC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 049F0 80B40BD0 24844828 */  addiu   $a0, $a0, 0x4828           ## $a0 = 06004828
/* 049F4 80B40BD4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 049F8 80B40BD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 049FC 80B40BDC 468021A0 */  cvt.s.w $f6, $f4
/* 04A00 80B40BE0 0C2CF277 */  jal     func_80B3C9DC
/* 04A04 80B40BE4 E7A60030 */  swc1    $f6, 0x0030($sp)
/* 04A08 80B40BE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04A0C 80B40BEC 8FA50044 */  lw      $a1, 0x0044($sp)
/* 04A10 80B40BF0 0C2CF162 */  jal     func_80B3C588
/* 04A14 80B40BF4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 04A18 80B40BF8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04A1C 80B40BFC C7A80030 */  lwc1    $f8, 0x0030($sp)
/* 04A20 80B40C00 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04A24 80B40C04 44070000 */  mfc1    $a3, $f0
/* 04A28 80B40C08 24A54828 */  addiu   $a1, $a1, 0x4828           ## $a1 = 06004828
/* 04A2C 80B40C0C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 04A30 80B40C10 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04A34 80B40C14 AFA00014 */  sw      $zero, 0x0014($sp)
/* 04A38 80B40C18 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 04A3C 80B40C1C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04A40 80B40C20 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 04A44 80B40C24 240E0041 */  addiu   $t6, $zero, 0x0041         ## $t6 = 00000041
/* 04A48 80B40C28 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 04A4C 80B40C2C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 04A50 80B40C30 AE0E0260 */  sw      $t6, 0x0260($s0)           ## 00000260
/* 04A54 80B40C34 AE0F0264 */  sw      $t7, 0x0264($s0)           ## 00000264
/* 04A58 80B40C38 A21800C8 */  sb      $t8, 0x00C8($s0)           ## 000000C8
/* 04A5C 80B40C3C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 04A60 80B40C40 8FB00028 */  lw      $s0, 0x0028($sp)
/* 04A64 80B40C44 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 04A68 80B40C48 03E00008 */  jr      $ra
/* 04A6C 80B40C4C 00000000 */  nop
