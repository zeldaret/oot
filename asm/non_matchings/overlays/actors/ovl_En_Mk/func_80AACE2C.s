glabel func_80AACE2C
/* 0052C 80AACE2C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00530 80AACE30 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00534 80AACE34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00538 80AACE38 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0053C 80AACE3C AFA50034 */  sw      $a1, 0x0034($sp)
/* 00540 80AACE40 0C042F6F */  jal     func_8010BDBC
/* 00544 80AACE44 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00548 80AACE48 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0054C 80AACE4C 5441001F */  bnel    $v0, $at, .L80AACECC
/* 00550 80AACE50 9608027E */  lhu     $t0, 0x027E($s0)           ## 0000027E
/* 00554 80AACE54 0C041AF2 */  jal     func_80106BC8
/* 00558 80AACE58 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0055C 80AACE5C 1040001A */  beq     $v0, $zero, .L80AACEC8
/* 00560 80AACE60 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00564 80AACE64 0C042DC8 */  jal     func_8010B720
/* 00568 80AACE68 24054001 */  addiu   $a1, $zero, 0x4001         ## $a1 = 00004001
/* 0056C 80AACE6C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00570 80AACE70 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00574 80AACE74 24840AC0 */  addiu   $a0, $a0, 0x0AC0           ## $a0 = 06000AC0
/* 00578 80AACE78 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0057C 80AACE7C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00580 80AACE80 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00584 80AACE84 468021A0 */  cvt.s.w $f6, $f4
/* 00588 80AACE88 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0058C 80AACE8C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00590 80AACE90 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00594 80AACE94 24A50AC0 */  addiu   $a1, $a1, 0x0AC0           ## $a1 = 06000AC0
/* 00598 80AACE98 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 0059C 80AACE9C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 005A0 80AACEA0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 005A4 80AACEA4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 005A8 80AACEA8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 005AC 80AACEAC E7A80018 */  swc1    $f8, 0x0018($sp)
/* 005B0 80AACEB0 960F027E */  lhu     $t7, 0x027E($s0)           ## 0000027E
/* 005B4 80AACEB4 3C1980AB */  lui     $t9, %hi(func_80AACD48)    ## $t9 = 80AB0000
/* 005B8 80AACEB8 2739CD48 */  addiu   $t9, $t9, %lo(func_80AACD48) ## $t9 = 80AACD48
/* 005BC 80AACEBC 31F8FFFD */  andi    $t8, $t7, 0xFFFD           ## $t8 = 00000000
/* 005C0 80AACEC0 A618027E */  sh      $t8, 0x027E($s0)           ## 0000027E
/* 005C4 80AACEC4 AE190284 */  sw      $t9, 0x0284($s0)           ## 00000284
.L80AACEC8:
/* 005C8 80AACEC8 9608027E */  lhu     $t0, 0x027E($s0)           ## 0000027E
.L80AACECC:
/* 005CC 80AACECC 35090001 */  ori     $t1, $t0, 0x0001           ## $t1 = 00000001
/* 005D0 80AACED0 A609027E */  sh      $t1, 0x027E($s0)           ## 0000027E
/* 005D4 80AACED4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 005D8 80AACED8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 005DC 80AACEDC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 005E0 80AACEE0 03E00008 */  jr      $ra
/* 005E4 80AACEE4 00000000 */  nop
