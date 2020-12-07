glabel func_8096A360
/* 00890 8096A360 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00894 8096A364 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00898 8096A368 AFA5002C */  sw      $a1, 0x002C($sp)
/* 0089C 8096A36C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 008A0 8096A370 8FA50028 */  lw      $a1, 0x0028($sp)
/* 008A4 8096A374 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 008A8 8096A378 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 008AC 8096A37C 24C61CA8 */  addiu   $a2, $a2, 0x1CA8           ## $a2 = 06011CA8
/* 008B0 8096A380 AFA00010 */  sw      $zero, 0x0010($sp)
/* 008B4 8096A384 AFA00014 */  sw      $zero, 0x0014($sp)
/* 008B8 8096A388 AFA00018 */  sw      $zero, 0x0018($sp)
/* 008BC 8096A38C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 008C0 8096A390 0C0291BE */  jal     SkelAnime_InitFlex
/* 008C4 8096A394 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 008C8 8096A398 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 008CC 8096A39C 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 008D0 8096A3A0 ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
/* 008D4 8096A3A4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 008D8 8096A3A8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 008DC 8096A3AC 03E00008 */  jr      $ra
/* 008E0 8096A3B0 00000000 */  nop
