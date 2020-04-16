glabel func_80B4BBC4
/* 01084 80B4BBC4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01088 80B4BBC8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0108C 80B4BBCC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01090 80B4BBD0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01094 80B4BBD4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01098 80B4BBD8 AFA50044 */  sw      $a1, 0x0044($sp)
/* 0109C 80B4BBDC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 010A0 80B4BBE0 24840438 */  addiu   $a0, $a0, 0x0438           ## $a0 = 06000438
/* 010A4 80B4BBE4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 010A8 80B4BBE8 8FAE0044 */  lw      $t6, 0x0044($sp)
/* 010AC 80B4BBEC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 010B0 80B4BBF0 468021A0 */  cvt.s.w $f6, $f4
/* 010B4 80B4BBF4 8DCF1C44 */  lw      $t7, 0x1C44($t6)           ## 00001C44
/* 010B8 80B4BBF8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 010BC 80B4BBFC 44070000 */  mfc1    $a3, $f0
/* 010C0 80B4BC00 24A50438 */  addiu   $a1, $a1, 0x0438           ## $a1 = 06000438
/* 010C4 80B4BC04 AFA00014 */  sw      $zero, 0x0014($sp)
/* 010C8 80B4BC08 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 010CC 80B4BC0C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 010D0 80B4BC10 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 010D4 80B4BC14 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 010D8 80B4BC18 0C029468 */  jal     SkelAnime_ChangeAnim

/* 010DC 80B4BC1C AFAF0034 */  sw      $t7, 0x0034($sp)
/* 010E0 80B4BC20 8FA40044 */  lw      $a0, 0x0044($sp)
/* 010E4 80B4BC24 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 010E8 80B4BC28 0C00B7D5 */  jal     func_8002DF54
/* 010EC 80B4BC2C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 010F0 80B4BC30 8FA40034 */  lw      $a0, 0x0034($sp)
/* 010F4 80B4BC34 0C00BDF7 */  jal     func_8002F7DC
/* 010F8 80B4BC38 24056836 */  addiu   $a1, $zero, 0x6836         ## $a1 = 00006836
/* 010FC 80B4BC3C 24187039 */  addiu   $t8, $zero, 0x7039         ## $t8 = 00007039
/* 01100 80B4BC40 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 01104 80B4BC44 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01108 80B4BC48 3305FFFF */  andi    $a1, $t8, 0xFFFF           ## $a1 = 00007039
/* 0110C 80B4BC4C 0C042DA0 */  jal     func_8010B680
/* 01110 80B4BC50 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01114 80B4BC54 3C1980B5 */  lui     $t9, %hi(func_80B4BF2C)    ## $t9 = 80B50000
/* 01118 80B4BC58 2739BF2C */  addiu   $t9, $t9, %lo(func_80B4BF2C) ## $t9 = 80B4BF2C
/* 0111C 80B4BC5C A60001E2 */  sh      $zero, 0x01E2($s0)         ## 000001E2
/* 01120 80B4BC60 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 01124 80B4BC64 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01128 80B4BC68 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0112C 80B4BC6C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01130 80B4BC70 03E00008 */  jr      $ra
/* 01134 80B4BC74 00000000 */  nop
