glabel func_80B54E14
/* 01A64 80B54E14 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01A68 80B54E18 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01A6C 80B54E1C AFA40028 */  sw      $a0, 0x0028($sp)
/* 01A70 80B54E20 AFA5002C */  sw      $a1, 0x002C($sp)
/* 01A74 80B54E24 AFA60030 */  sw      $a2, 0x0030($sp)
/* 01A78 80B54E28 AFA70034 */  sw      $a3, 0x0034($sp)
/* 01A7C 80B54E2C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01A80 80B54E30 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01A84 80B54E34 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 01A88 80B54E38 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01A8C 80B54E3C 8FA5002C */  lw      $a1, 0x002C($sp)
/* 01A90 80B54E40 15C00007 */  bne     $t6, $zero, .L80B54E60
/* 01A94 80B54E44 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01A98 80B54E48 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01A9C 80B54E4C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01AA0 80B54E50 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01AA4 80B54E54 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 01AA8 80B54E58 10000006 */  beq     $zero, $zero, .L80B54E74
/* 01AAC 80B54E5C 468020A0 */  cvt.s.w $f2, $f4
.L80B54E60:
/* 01AB0 80B54E60 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 01AB4 80B54E64 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 01AB8 80B54E68 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01ABC 80B54E6C 44816000 */  mtc1    $at, $f12                  ## $f12 = -1.00
/* 01AC0 80B54E70 46803020 */  cvt.s.w $f0, $f6
.L80B54E74:
/* 01AC4 80B54E74 93AF0033 */  lbu     $t7, 0x0033($sp)
/* 01AC8 80B54E78 C7A80034 */  lwc1    $f8, 0x0034($sp)
/* 01ACC 80B54E7C 44066000 */  mfc1    $a2, $f12
/* 01AD0 80B54E80 44070000 */  mfc1    $a3, $f0
/* 01AD4 80B54E84 E7A20010 */  swc1    $f2, 0x0010($sp)
/* 01AD8 80B54E88 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 01ADC 80B54E8C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01AE0 80B54E90 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01AE4 80B54E94 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01AE8 80B54E98 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01AEC 80B54E9C 03E00008 */  jr      $ra
/* 01AF0 80B54EA0 00000000 */  nop


