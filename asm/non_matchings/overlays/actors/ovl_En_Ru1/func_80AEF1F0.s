glabel func_80AEF1F0
/* 045E0 80AEF1F0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 045E4 80AEF1F4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 045E8 80AEF1F8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 045EC 80AEF1FC AFBF002C */  sw      $ra, 0x002C($sp)
/* 045F0 80AEF200 10C00021 */  beq     $a2, $zero, .L80AEF288
/* 045F4 80AEF204 AFA50034 */  sw      $a1, 0x0034($sp)
/* 045F8 80AEF208 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 045FC 80AEF20C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04600 80AEF210 24846B9C */  addiu   $a0, $a0, 0x6B9C           ## $a0 = 06006B9C
/* 04604 80AEF214 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04608 80AEF218 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0460C 80AEF21C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04610 80AEF220 468021A0 */  cvt.s.w $f6, $f4
/* 04614 80AEF224 44070000 */  mfc1    $a3, $f0
/* 04618 80AEF228 24A56B9C */  addiu   $a1, $a1, 0x6B9C           ## $a1 = 06006B9C
/* 0461C 80AEF22C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 04620 80AEF230 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04624 80AEF234 AFA00014 */  sw      $zero, 0x0014($sp)
/* 04628 80AEF238 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0462C 80AEF23C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04630 80AEF240 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 04634 80AEF244 0C041B33 */  jal     func_80106CCC
/* 04638 80AEF248 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0463C 80AEF24C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 04640 80AEF250 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 04644 80AEF254 944E0F20 */  lhu     $t6, 0x0F20($v0)           ## 8015F580
/* 04648 80AEF258 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0464C 80AEF25C 8FA50034 */  lw      $a1, 0x0034($sp)
/* 04650 80AEF260 35CF0008 */  ori     $t7, $t6, 0x0008           ## $t7 = 00000008
/* 04654 80AEF264 0C2BB5B7 */  jal     func_80AED6DC
/* 04658 80AEF268 A44F0F20 */  sh      $t7, 0x0F20($v0)           ## 8015F580
/* 0465C 80AEF26C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04660 80AEF270 0C00BD60 */  jal     func_8002F580
/* 04664 80AEF274 8FA50034 */  lw      $a1, 0x0034($sp)
/* 04668 80AEF278 2418001B */  addiu   $t8, $zero, 0x001B         ## $t8 = 0000001B
/* 0466C 80AEF27C AE180264 */  sw      $t8, 0x0264($s0)           ## 00000264
/* 04670 80AEF280 0C2BAB76 */  jal     func_80AEADD8
/* 04674 80AEF284 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AEF288:
/* 04678 80AEF288 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0467C 80AEF28C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 04680 80AEF290 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 04684 80AEF294 03E00008 */  jr      $ra
/* 04688 80AEF298 00000000 */  nop


