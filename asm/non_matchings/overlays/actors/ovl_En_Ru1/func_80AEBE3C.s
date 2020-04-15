glabel func_80AEBE3C
/* 0122C 80AEBE3C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01230 80AEBE40 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01234 80AEBE44 10C0001A */  beq     $a2, $zero, .L80AEBEB0
/* 01238 80AEBE48 AFA40038 */  sw      $a0, 0x0038($sp)
/* 0123C 80AEBE4C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01240 80AEBE50 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01244 80AEBE54 24843A64 */  addiu   $a0, $a0, 0x3A64           ## $a0 = 06013A64
/* 01248 80AEBE58 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0124C 80AEBE5C 8FA40038 */  lw      $a0, 0x0038($sp)
/* 01250 80AEBE60 468021A0 */  cvt.s.w $f6, $f4
/* 01254 80AEBE64 0C2BADF4 */  jal     func_80AEB7D0
/* 01258 80AEBE68 E7A6002C */  swc1    $f6, 0x002C($sp)
/* 0125C 80AEBE6C 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01260 80AEBE70 44815000 */  mtc1    $at, $f10                  ## $f10 = -8.00
/* 01264 80AEBE74 8FA40038 */  lw      $a0, 0x0038($sp)
/* 01268 80AEBE78 C7A8002C */  lwc1    $f8, 0x002C($sp)
/* 0126C 80AEBE7C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01270 80AEBE80 24A53A64 */  addiu   $a1, $a1, 0x3A64           ## $a1 = 06013A64
/* 01274 80AEBE84 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01278 80AEBE88 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0127C 80AEBE8C AFA00014 */  sw      $zero, 0x0014($sp)
/* 01280 80AEBE90 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01284 80AEBE94 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 01288 80AEBE98 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0128C 80AEBE9C E7A80010 */  swc1    $f8, 0x0010($sp)
/* 01290 80AEBEA0 8FAF0038 */  lw      $t7, 0x0038($sp)
/* 01294 80AEBEA4 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 01298 80AEBEA8 10000003 */  beq     $zero, $zero, .L80AEBEB8
/* 0129C 80AEBEAC ADEE0264 */  sw      $t6, 0x0264($t7)           ## 00000264
.L80AEBEB0:
/* 012A0 80AEBEB0 0C2BAE55 */  jal     func_80AEB954
/* 012A4 80AEBEB4 8FA40038 */  lw      $a0, 0x0038($sp)
.L80AEBEB8:
/* 012A8 80AEBEB8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 012AC 80AEBEBC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 012B0 80AEBEC0 03E00008 */  jr      $ra
/* 012B4 80AEBEC4 00000000 */  nop
