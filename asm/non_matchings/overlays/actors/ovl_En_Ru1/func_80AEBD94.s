glabel func_80AEBD94
/* 01184 80AEBD94 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01188 80AEBD98 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0118C 80AEBD9C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01190 80AEBDA0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01194 80AEBDA4 AFA50044 */  sw      $a1, 0x0044($sp)
/* 01198 80AEBDA8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0119C 80AEBDAC 0C2BAD20 */  jal     func_80AEB480
/* 011A0 80AEBDB0 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 011A4 80AEBDB4 1040001C */  beq     $v0, $zero, .L80AEBE28
/* 011A8 80AEBDB8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 011AC 80AEBDBC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 011B0 80AEBDC0 24849060 */  addiu   $a0, $a0, 0x9060           ## $a0 = 06009060
/* 011B4 80AEBDC4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 011B8 80AEBDC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011BC 80AEBDCC 8FA50044 */  lw      $a1, 0x0044($sp)
/* 011C0 80AEBDD0 468021A0 */  cvt.s.w $f6, $f4
/* 011C4 80AEBDD4 0C2BAE4D */  jal     func_80AEB934
/* 011C8 80AEBDD8 E7A60034 */  swc1    $f6, 0x0034($sp)
/* 011CC 80AEBDDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011D0 80AEBDE0 0C2BADCE */  jal     func_80AEB738
/* 011D4 80AEBDE4 8FA50044 */  lw      $a1, 0x0044($sp)
/* 011D8 80AEBDE8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 011DC 80AEBDEC C7A80034 */  lwc1    $f8, 0x0034($sp)
/* 011E0 80AEBDF0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 011E4 80AEBDF4 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 011E8 80AEBDF8 44070000 */  mfc1    $a3, $f0
/* 011EC 80AEBDFC AFAE0014 */  sw      $t6, 0x0014($sp)
/* 011F0 80AEBE00 24A59060 */  addiu   $a1, $a1, 0x9060           ## $a1 = 06009060
/* 011F4 80AEBE04 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 011F8 80AEBE08 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 011FC 80AEBE0C E7A80010 */  swc1    $f8, 0x0010($sp)
/* 01200 80AEBE10 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01204 80AEBE14 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01208 80AEBE18 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 0120C 80AEBE1C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01210 80AEBE20 AE0F0264 */  sw      $t7, 0x0264($s0)           ## 00000264
/* 01214 80AEBE24 AE180268 */  sw      $t8, 0x0268($s0)           ## 00000268
.L80AEBE28:
/* 01218 80AEBE28 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0121C 80AEBE2C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01220 80AEBE30 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01224 80AEBE34 03E00008 */  jr      $ra
/* 01228 80AEBE38 00000000 */  nop


