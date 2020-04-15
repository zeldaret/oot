glabel func_80AE7BF8
/* 00948 80AE7BF8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0094C 80AE7BFC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00950 80AE7C00 10A00014 */  beq     $a1, $zero, .L80AE7C54
/* 00954 80AE7C04 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00958 80AE7C08 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0095C 80AE7C0C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00960 80AE7C10 24840830 */  addiu   $a0, $a0, 0x0830           ## $a0 = 06000830
/* 00964 80AE7C14 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00968 80AE7C18 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0096C 80AE7C1C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00970 80AE7C20 468021A0 */  cvt.s.w $f6, $f4
/* 00974 80AE7C24 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00978 80AE7C28 44070000 */  mfc1    $a3, $f0
/* 0097C 80AE7C2C 24A50830 */  addiu   $a1, $a1, 0x0830           ## $a1 = 06000830
/* 00980 80AE7C30 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00984 80AE7C34 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00988 80AE7C38 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0098C 80AE7C3C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00990 80AE7C40 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00994 80AE7C44 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00998 80AE7C48 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 0099C 80AE7C4C 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 009A0 80AE7C50 ADEE0194 */  sw      $t6, 0x0194($t7)           ## 00000194
.L80AE7C54:
/* 009A4 80AE7C54 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 009A8 80AE7C58 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 009AC 80AE7C5C 03E00008 */  jr      $ra
/* 009B0 80AE7C60 00000000 */  nop
