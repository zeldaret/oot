glabel func_80AFD47C
/* 00ADC 80AFD47C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00AE0 80AFD480 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00AE4 80AFD484 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AE8 80AFD488 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00AEC 80AFD48C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00AF0 80AFD490 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 00AF4 80AFD494 C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
/* 00AF8 80AFD498 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00AFC 80AFD49C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00B00 80AFD4A0 46062201 */  sub.s   $f8, $f4, $f6
/* 00B04 80AFD4A4 3C06BECC */  lui     $a2, 0xBECC                ## $a2 = BECC0000
/* 00B08 80AFD4A8 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00B0C 80AFD4AC AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00B10 80AFD4B0 44074000 */  mfc1    $a3, $f8
/* 00B14 80AFD4B4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = BECCCCCD
/* 00B18 80AFD4B8 24A50460 */  addiu   $a1, $a1, 0x0460           ## $a1 = 06000460
/* 00B1C 80AFD4BC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00B20 80AFD4C0 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00B24 80AFD4C4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00B28 80AFD4C8 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00B2C 80AFD4CC 920F02B4 */  lbu     $t7, 0x02B4($s0)           ## 000002B4
/* 00B30 80AFD4D0 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 00B34 80AFD4D4 3C0580B0 */  lui     $a1, %hi(func_80AFD508)    ## $a1 = 80B00000
/* 00B38 80AFD4D8 31F8FFFB */  andi    $t8, $t7, 0xFFFB           ## $t8 = 00000000
/* 00B3C 80AFD4DC A21802B4 */  sb      $t8, 0x02B4($s0)           ## 000002B4
/* 00B40 80AFD4E0 A2190280 */  sb      $t9, 0x0280($s0)           ## 00000280
/* 00B44 80AFD4E4 A2000281 */  sb      $zero, 0x0281($s0)         ## 00000281
/* 00B48 80AFD4E8 24A5D508 */  addiu   $a1, $a1, %lo(func_80AFD508) ## $a1 = 80AFD508
/* 00B4C 80AFD4EC 0C2BF268 */  jal     func_80AFC9A0
/* 00B50 80AFD4F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B54 80AFD4F4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00B58 80AFD4F8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00B5C 80AFD4FC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00B60 80AFD500 03E00008 */  jr      $ra
/* 00B64 80AFD504 00000000 */  nop
