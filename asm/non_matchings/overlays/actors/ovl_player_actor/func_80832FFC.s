glabel func_80832FFC
/* 00DEC 80832FFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DF0 80833000 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00DF4 80833004 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00DF8 80833008 AFA70024 */  sw      $a3, 0x0024($sp)
/* 00DFC 8083300C AFA40018 */  sw      $a0, 0x0018($sp)
/* 00E00 80833010 8FA70028 */  lw      $a3, 0x0028($sp)
/* 00E04 80833014 0C029037 */  jal     SkelAnime_ChangeLinkAnimPlaybackStop
/* 00E08 80833018 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 00E0C 8083301C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00E10 80833020 8FA5001C */  lw      $a1, 0x001C($sp)
/* 00E14 80833024 0C20CBD5 */  jal     func_80832F54
/* 00E18 80833028 8FA60024 */  lw      $a2, 0x0024($sp)
/* 00E1C 8083302C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00E20 80833030 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E24 80833034 03E00008 */  jr      $ra
/* 00E28 80833038 00000000 */  nop
