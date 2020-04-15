glabel func_80AEB264
/* 00654 80AEB264 00057100 */  sll     $t6, $a1,  4
/* 00658 80AEB268 000E7F02 */  srl     $t7, $t6, 28
/* 0065C 80AEB26C 000FC080 */  sll     $t8, $t7,  2
/* 00660 80AEB270 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 00664 80AEB274 0338C821 */  addu    $t9, $t9, $t8
/* 00668 80AEB278 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0066C 80AEB27C 8F396FA8 */  lw      $t9, 0x6FA8($t9)           ## 80166FA8
/* 00670 80AEB280 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00674 80AEB284 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00678 80AEB288 00A14024 */  and     $t0, $a1, $at
/* 0067C 80AEB28C AFA40038 */  sw      $a0, 0x0038($sp)
/* 00680 80AEB290 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00684 80AEB294 03282021 */  addu    $a0, $t9, $t0
/* 00688 80AEB298 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0068C 80AEB29C 00812021 */  addu    $a0, $a0, $at
/* 00690 80AEB2A0 AFA60040 */  sw      $a2, 0x0040($sp)
/* 00694 80AEB2A4 AFA70044 */  sw      $a3, 0x0044($sp)
/* 00698 80AEB2A8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0069C 80AEB2AC AFA4002C */  sw      $a0, 0x002C($sp)
/* 006A0 80AEB2B0 8FA90048 */  lw      $t1, 0x0048($sp)
/* 006A4 80AEB2B4 8FA40038 */  lw      $a0, 0x0038($sp)
/* 006A8 80AEB2B8 8FA5002C */  lw      $a1, 0x002C($sp)
/* 006AC 80AEB2BC 15200007 */  bne     $t1, $zero, .L80AEB2DC
/* 006B0 80AEB2C0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006B4 80AEB2C4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 006B8 80AEB2C8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 006BC 80AEB2CC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 006C0 80AEB2D0 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 006C4 80AEB2D4 10000006 */  beq     $zero, $zero, .L80AEB2F0
/* 006C8 80AEB2D8 468020A0 */  cvt.s.w $f2, $f4
.L80AEB2DC:
/* 006CC 80AEB2DC 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 006D0 80AEB2E0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 006D4 80AEB2E4 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 006D8 80AEB2E8 44816000 */  mtc1    $at, $f12                  ## $f12 = -1.00
/* 006DC 80AEB2EC 46803020 */  cvt.s.w $f0, $f6
.L80AEB2F0:
/* 006E0 80AEB2F0 93AA0043 */  lbu     $t2, 0x0043($sp)
/* 006E4 80AEB2F4 C7A80044 */  lwc1    $f8, 0x0044($sp)
/* 006E8 80AEB2F8 44066000 */  mfc1    $a2, $f12
/* 006EC 80AEB2FC 44070000 */  mfc1    $a3, $f0
/* 006F0 80AEB300 E7A20010 */  swc1    $f2, 0x0010($sp)
/* 006F4 80AEB304 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 006F8 80AEB308 0C029468 */  jal     SkelAnime_ChangeAnim

/* 006FC 80AEB30C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00700 80AEB310 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00704 80AEB314 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00708 80AEB318 03E00008 */  jr      $ra
/* 0070C 80AEB31C 00000000 */  nop
