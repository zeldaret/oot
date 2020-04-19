glabel func_80AB2180
/* 013F0 80AB2180 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 013F4 80AB2184 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 013F8 80AB2188 10A00011 */  beq     $a1, $zero, .L80AB21D0
/* 013FC 80AB218C AFA40028 */  sw      $a0, 0x0028($sp)
/* 01400 80AB2190 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01404 80AB2194 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01408 80AB2198 24841350 */  addiu   $a0, $a0, 0x1350           ## $a0 = 06001350
/* 0140C 80AB219C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01410 80AB21A0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01414 80AB21A4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01418 80AB21A8 468021A0 */  cvt.s.w $f6, $f4
/* 0141C 80AB21AC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01420 80AB21B0 44070000 */  mfc1    $a3, $f0
/* 01424 80AB21B4 24A51350 */  addiu   $a1, $a1, 0x1350           ## $a1 = 06001350
/* 01428 80AB21B8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0142C 80AB21BC AFA00014 */  sw      $zero, 0x0014($sp)
/* 01430 80AB21C0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01434 80AB21C4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01438 80AB21C8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0143C 80AB21CC E7A00018 */  swc1    $f0, 0x0018($sp)
.L80AB21D0:
/* 01440 80AB21D0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01444 80AB21D4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01448 80AB21D8 03E00008 */  jr      $ra
/* 0144C 80AB21DC 00000000 */  nop
