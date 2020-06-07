glabel func_80AE7878
/* 005C8 80AE7878 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 005CC 80AE787C AFA40028 */  sw      $a0, 0x0028($sp)
/* 005D0 80AE7880 AFA5002C */  sw      $a1, 0x002C($sp)
/* 005D4 80AE7884 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005D8 80AE7888 8FA50028 */  lw      $a1, 0x0028($sp)
/* 005DC 80AE788C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 005E0 80AE7890 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 005E4 80AE7894 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 005E8 80AE7898 24E70A3C */  addiu   $a3, $a3, 0x0A3C           ## $a3 = 06000A3C
/* 005EC 80AE789C 24C67B38 */  addiu   $a2, $a2, 0x7B38           ## $a2 = 06007B38
/* 005F0 80AE78A0 AFA00010 */  sw      $zero, 0x0010($sp)
/* 005F4 80AE78A4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 005F8 80AE78A8 AFA00018 */  sw      $zero, 0x0018($sp)
/* 005FC 80AE78AC 0C0291BE */  jal     SkelAnime_InitSV
/* 00600 80AE78B0 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 00604 80AE78B4 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00608 80AE78B8 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 0060C 80AE78BC AC4E0194 */  sw      $t6, 0x0194($v0)           ## 00000194
/* 00610 80AE78C0 A04000C8 */  sb      $zero, 0x00C8($v0)         ## 000000C8
/* 00614 80AE78C4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00618 80AE78C8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0061C 80AE78CC 03E00008 */  jr      $ra
/* 00620 80AE78D0 00000000 */  nop
