glabel func_8096AC90
/* 011C0 8096AC90 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 011C4 8096AC94 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 011C8 8096AC98 10A00014 */  beq     $a1, $zero, .L8096ACEC
/* 011CC 8096AC9C AFA40028 */  sw      $a0, 0x0028($sp)
/* 011D0 8096ACA0 3C040600 */  lui     $a0, %hi(D_06006EB0)                ## $a0 = 06000000
/* 011D4 8096ACA4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 011D8 8096ACA8 24846EB0 */  addiu   $a0, $a0, %lo(D_06006EB0)           ## $a0 = 06006EB0
/* 011DC 8096ACAC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 011E0 8096ACB0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 011E4 8096ACB4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 011E8 8096ACB8 468021A0 */  cvt.s.w $f6, $f4
/* 011EC 8096ACBC 3C050600 */  lui     $a1, %hi(D_06006EB0)                ## $a1 = 06000000
/* 011F0 8096ACC0 44070000 */  mfc1    $a3, $f0
/* 011F4 8096ACC4 24A56EB0 */  addiu   $a1, $a1, %lo(D_06006EB0)           ## $a1 = 06006EB0
/* 011F8 8096ACC8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 011FC 8096ACCC AFA00014 */  sw      $zero, 0x0014($sp)
/* 01200 8096ACD0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01204 8096ACD4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01208 8096ACD8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0120C 8096ACDC E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01210 8096ACE0 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 01214 8096ACE4 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 01218 8096ACE8 ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
.L8096ACEC:
/* 0121C 8096ACEC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01220 8096ACF0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01224 8096ACF4 03E00008 */  jr      $ra
/* 01228 8096ACF8 00000000 */  nop
