glabel func_8096AE00
/* 01330 8096AE00 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01334 8096AE04 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01338 8096AE08 10A00014 */  beq     $a1, $zero, .L8096AE5C
/* 0133C 8096AE0C AFA40028 */  sw      $a0, 0x0028($sp)
/* 01340 8096AE10 3C040600 */  lui     $a0, %hi(gDaruniaAnim_006EB0)                ## $a0 = 06000000
/* 01344 8096AE14 0C028800 */  jal     Animation_GetLastFrame

/* 01348 8096AE18 24846EB0 */  addiu   $a0, $a0, %lo(gDaruniaAnim_006EB0)           ## $a0 = 06006EB0
/* 0134C 8096AE1C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01350 8096AE20 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01354 8096AE24 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01358 8096AE28 468021A0 */  cvt.s.w $f6, $f4
/* 0135C 8096AE2C 3C050600 */  lui     $a1, %hi(gDaruniaAnim_006EB0)                ## $a1 = 06000000
/* 01360 8096AE30 44070000 */  mfc1    $a3, $f0
/* 01364 8096AE34 24A56EB0 */  addiu   $a1, $a1, %lo(gDaruniaAnim_006EB0)           ## $a1 = 06006EB0
/* 01368 8096AE38 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0136C 8096AE3C AFA00014 */  sw      $zero, 0x0014($sp)
/* 01370 8096AE40 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01374 8096AE44 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01378 8096AE48 0C029468 */  jal     Animation_Change

/* 0137C 8096AE4C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01380 8096AE50 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 01384 8096AE54 240E0011 */  addiu   $t6, $zero, 0x0011         ## $t6 = 00000011
/* 01388 8096AE58 ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
.L8096AE5C:
/* 0138C 8096AE5C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01390 8096AE60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01394 8096AE64 03E00008 */  jr      $ra
/* 01398 8096AE68 00000000 */  nop
