glabel func_8098F390
/* 00F30 8098F390 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00F34 8098F394 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00F38 8098F398 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00F3C 8098F39C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00F40 8098F3A0 8FA50028 */  lw      $a1, 0x0028($sp)
/* 00F44 8098F3A4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00F48 8098F3A8 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00F4C 8098F3AC 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00F50 8098F3B0 24E721D8 */  addiu   $a3, $a3, 0x21D8           ## $a3 = 060021D8
/* 00F54 8098F3B4 24C6B1A0 */  addiu   $a2, $a2, 0xB1A0           ## $a2 = 0600B1A0
/* 00F58 8098F3B8 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00F5C 8098F3BC AFA00014 */  sw      $zero, 0x0014($sp)
/* 00F60 8098F3C0 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00F64 8098F3C4 0C0291BE */  jal     SkelAnime_InitSV
/* 00F68 8098F3C8 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 00F6C 8098F3CC 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00F70 8098F3D0 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 00F74 8098F3D4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00F78 8098F3D8 AC4E0198 */  sw      $t6, 0x0198($v0)           ## 00000198
/* 00F7C 8098F3DC AC4F019C */  sw      $t7, 0x019C($v0)           ## 0000019C
/* 00F80 8098F3E0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00F84 8098F3E4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00F88 8098F3E8 03E00008 */  jr      $ra
/* 00F8C 8098F3EC 00000000 */  nop


