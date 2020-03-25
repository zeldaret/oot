glabel func_8098F420
/* 00FC0 8098F420 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00FC4 8098F424 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00FC8 8098F428 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00FCC 8098F42C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00FD0 8098F430 8FA50028 */  lw      $a1, 0x0028($sp)
/* 00FD4 8098F434 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00FD8 8098F438 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00FDC 8098F43C 3C070601 */  lui     $a3, 0x0601                ## $a3 = 06010000
/* 00FE0 8098F440 24E7FFD4 */  addiu   $a3, $a3, 0xFFD4           ## $a3 = 0600FFD4
/* 00FE4 8098F444 24C6B1A0 */  addiu   $a2, $a2, 0xB1A0           ## $a2 = 0600B1A0
/* 00FE8 8098F448 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00FEC 8098F44C AFA00014 */  sw      $zero, 0x0014($sp)
/* 00FF0 8098F450 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00FF4 8098F454 0C0291BE */  jal     SkelAnime_InitSV
/* 00FF8 8098F458 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 00FFC 8098F45C 8FA20028 */  lw      $v0, 0x0028($sp)
/* 01000 8098F460 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 01004 8098F464 AC4E0198 */  sw      $t6, 0x0198($v0)           ## 00000198
/* 01008 8098F468 AC40019C */  sw      $zero, 0x019C($v0)         ## 0000019C
/* 0100C 8098F46C A04000C8 */  sb      $zero, 0x00C8($v0)         ## 000000C8
/* 01010 8098F470 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01014 8098F474 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01018 8098F478 03E00008 */  jr      $ra
/* 0101C 8098F47C 00000000 */  nop


