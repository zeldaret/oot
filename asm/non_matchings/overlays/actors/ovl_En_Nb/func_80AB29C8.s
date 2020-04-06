glabel func_80AB29C8
/* 01C38 80AB29C8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01C3C 80AB29CC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01C40 80AB29D0 10A00011 */  beq     $a1, $zero, .L80AB2A18
/* 01C44 80AB29D4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01C48 80AB29D8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01C4C 80AB29DC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01C50 80AB29E0 248435A8 */  addiu   $a0, $a0, 0x35A8           ## $a0 = 060035A8
/* 01C54 80AB29E4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01C58 80AB29E8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01C5C 80AB29EC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01C60 80AB29F0 468021A0 */  cvt.s.w $f6, $f4
/* 01C64 80AB29F4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01C68 80AB29F8 44070000 */  mfc1    $a3, $f0
/* 01C6C 80AB29FC 24A535A8 */  addiu   $a1, $a1, 0x35A8           ## $a1 = 060035A8
/* 01C70 80AB2A00 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01C74 80AB2A04 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01C78 80AB2A08 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01C7C 80AB2A0C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01C80 80AB2A10 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01C84 80AB2A14 E7A00018 */  swc1    $f0, 0x0018($sp)
.L80AB2A18:
/* 01C88 80AB2A18 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01C8C 80AB2A1C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01C90 80AB2A20 03E00008 */  jr      $ra
/* 01C94 80AB2A24 00000000 */  nop


