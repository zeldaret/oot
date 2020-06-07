glabel func_80A4A0A8
/* 011E8 80A4A0A8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 011EC 80A4A0AC AFA40028 */  sw      $a0, 0x0028($sp)
/* 011F0 80A4A0B0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 011F4 80A4A0B4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 011F8 80A4A0B8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 011FC 80A4A0BC 2484017C */  addiu   $a0, $a0, 0x017C           ## $a0 = 0600017C
/* 01200 80A4A0C0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01204 80A4A0C4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01208 80A4A0C8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 0120C 80A4A0CC 468021A0 */  cvt.s.w $f6, $f4
/* 01210 80A4A0D0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01214 80A4A0D4 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01218 80A4A0D8 44070000 */  mfc1    $a3, $f0
/* 0121C 80A4A0DC AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01220 80A4A0E0 24A5017C */  addiu   $a1, $a1, 0x017C           ## $a1 = 0600017C
/* 01224 80A4A0E4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01228 80A4A0E8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0122C 80A4A0EC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01230 80A4A0F0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01234 80A4A0F4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01238 80A4A0F8 8FA20028 */  lw      $v0, 0x0028($sp)
/* 0123C 80A4A0FC 3C0F80A5 */  lui     $t7, %hi(func_80A4A120)    ## $t7 = 80A50000
/* 01240 80A4A100 25EFA120 */  addiu   $t7, $t7, %lo(func_80A4A120) ## $t7 = 80A4A120
/* 01244 80A4A104 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 01248 80A4A108 AC4F02B0 */  sw      $t7, 0x02B0($v0)           ## 000002B0
/* 0124C 80A4A10C A45802CC */  sh      $t8, 0x02CC($v0)           ## 000002CC
/* 01250 80A4A110 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01254 80A4A114 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01258 80A4A118 03E00008 */  jr      $ra
/* 0125C 80A4A11C 00000000 */  nop
