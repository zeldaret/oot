glabel func_80AACD48
/* 00448 80AACD48 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0044C 80AACD4C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00450 80AACD50 AFB10028 */  sw      $s1, 0x0028($sp)
/* 00454 80AACD54 AFB00024 */  sw      $s0, 0x0024($sp)
/* 00458 80AACD58 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 0045C 80AACD5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00460 80AACD60 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00464 80AACD64 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00468 80AACD68 0C042F6F */  jal     func_8010BDBC
/* 0046C 80AACD6C AFAE0034 */  sw      $t6, 0x0034($sp)
/* 00470 80AACD70 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00474 80AACD74 54410026 */  bnel    $v0, $at, .L80AACE10
/* 00478 80AACD78 960B027E */  lhu     $t3, 0x027E($s0)           ## 0000027E
/* 0047C 80AACD7C 0C041AF2 */  jal     func_80106BC8
/* 00480 80AACD80 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00484 80AACD84 50400022 */  beql    $v0, $zero, .L80AACE10
/* 00488 80AACD88 960B027E */  lhu     $t3, 0x027E($s0)           ## 0000027E
/* 0048C 80AACD8C 0C041B33 */  jal     func_80106CCC
/* 00490 80AACD90 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00494 80AACD94 3C0F80AB */  lui     $t7, %hi(func_80AACCA0)    ## $t7 = 80AB0000
/* 00498 80AACD98 25EFCCA0 */  addiu   $t7, $t7, %lo(func_80AACCA0) ## $t7 = 80AACCA0
/* 0049C 80AACD9C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 004A0 80AACDA0 AE0F0284 */  sw      $t7, 0x0284($s0)           ## 00000284
/* 004A4 80AACDA4 00310821 */  addu    $at, $at, $s1
/* 004A8 80AACDA8 24180037 */  addiu   $t8, $zero, 0x0037         ## $t8 = 00000037
/* 004AC 80AACDAC A03803DC */  sb      $t8, 0x03DC($at)           ## 000103DC
/* 004B0 80AACDB0 8FB90034 */  lw      $t9, 0x0034($sp)
/* 004B4 80AACDB4 24080010 */  addiu   $t0, $zero, 0x0010         ## $t0 = 00000010
/* 004B8 80AACDB8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 004BC 80AACDBC A3200693 */  sb      $zero, 0x0693($t9)         ## 00000693
/* 004C0 80AACDC0 A6080282 */  sh      $t0, 0x0282($s0)           ## 00000282
/* 004C4 80AACDC4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 004C8 80AACDC8 24840D88 */  addiu   $a0, $a0, 0x0D88           ## $a0 = 06000D88
/* 004CC 80AACDCC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 004D0 80AACDD0 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 004D4 80AACDD4 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 004D8 80AACDD8 468021A0 */  cvt.s.w $f6, $f4
/* 004DC 80AACDDC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 004E0 80AACDE0 24A50D88 */  addiu   $a1, $a1, 0x0D88           ## $a1 = 06000D88
/* 004E4 80AACDE4 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 004E8 80AACDE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 004EC 80AACDEC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 004F0 80AACDF0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 004F4 80AACDF4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 004F8 80AACDF8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 004FC 80AACDFC E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00500 80AACE00 9609027E */  lhu     $t1, 0x027E($s0)           ## 0000027E
/* 00504 80AACE04 312AFFFD */  andi    $t2, $t1, 0xFFFD           ## $t2 = 00000000
/* 00508 80AACE08 A60A027E */  sh      $t2, 0x027E($s0)           ## 0000027E
/* 0050C 80AACE0C 960B027E */  lhu     $t3, 0x027E($s0)           ## 0000027E
.L80AACE10:
/* 00510 80AACE10 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 00514 80AACE14 A60C027E */  sh      $t4, 0x027E($s0)           ## 0000027E
/* 00518 80AACE18 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0051C 80AACE1C 8FB10028 */  lw      $s1, 0x0028($sp)
/* 00520 80AACE20 8FB00024 */  lw      $s0, 0x0024($sp)
/* 00524 80AACE24 03E00008 */  jr      $ra
/* 00528 80AACE28 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


