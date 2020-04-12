glabel func_808330AC
/* 00E9C 808330AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EA0 808330B0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00EA4 808330B4 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00EA8 808330B8 AFA70024 */  sw      $a3, 0x0024($sp)
/* 00EAC 808330BC AFA40018 */  sw      $a0, 0x0018($sp)
/* 00EB0 808330C0 8FA70028 */  lw      $a3, 0x0028($sp)
/* 00EB4 808330C4 0C029067 */  jal     SkelAnime_ChangeLinkAnimPlaybackRepeat
/* 00EB8 808330C8 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 00EBC 808330CC 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00EC0 808330D0 8FA5001C */  lw      $a1, 0x001C($sp)
/* 00EC4 808330D4 0C20CBD5 */  jal     func_80832F54
/* 00EC8 808330D8 8FA60024 */  lw      $a2, 0x0024($sp)
/* 00ECC 808330DC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00ED0 808330E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00ED4 808330E4 03E00008 */  jr      $ra
/* 00ED8 808330E8 00000000 */  nop
