glabel func_8098EB00
/* 006A0 8098EB00 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 006A4 8098EB04 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 006A8 8098EB08 10A00014 */  beq     $a1, $zero, .L8098EB5C
/* 006AC 8098EB0C AFA40028 */  sw      $a0, 0x0028($sp)
/* 006B0 8098EB10 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 006B4 8098EB14 0C028800 */  jal     SkelAnime_GetFrameCount

/* 006B8 8098EB18 2484E500 */  addiu   $a0, $a0, 0xE500           ## $a0 = 0600E500
/* 006BC 8098EB1C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 006C0 8098EB20 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 006C4 8098EB24 8FA40028 */  lw      $a0, 0x0028($sp)
/* 006C8 8098EB28 468021A0 */  cvt.s.w $f6, $f4
/* 006CC 8098EB2C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 006D0 8098EB30 44070000 */  mfc1    $a3, $f0
/* 006D4 8098EB34 24A5E500 */  addiu   $a1, $a1, 0xE500           ## $a1 = 0600E500
/* 006D8 8098EB38 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 006DC 8098EB3C AFA00014 */  sw      $zero, 0x0014($sp)
/* 006E0 8098EB40 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 006E4 8098EB44 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006E8 8098EB48 0C029468 */  jal     SkelAnime_ChangeAnim

/* 006EC 8098EB4C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 006F0 8098EB50 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 006F4 8098EB54 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 006F8 8098EB58 ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
.L8098EB5C:
/* 006FC 8098EB5C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00700 8098EB60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00704 8098EB64 03E00008 */  jr      $ra
/* 00708 8098EB68 00000000 */  nop
