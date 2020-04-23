glabel func_80B5BB38
/* 00388 80B5BB38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0038C 80B5BB3C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00390 80B5BB40 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00394 80B5BB44 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00398 80B5BB48 908E0181 */  lbu     $t6, 0x0181($a0)           ## 00000181
/* 0039C 80B5BB4C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 003A0 80B5BB50 24A6014C */  addiu   $a2, $a1, 0x014C           ## $a2 = 0000014C
/* 003A4 80B5BB54 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 003A8 80B5BB58 A08F0181 */  sb      $t7, 0x0181($a0)           ## 00000181
/* 003AC 80B5BB5C 8FA4001C */  lw      $a0, 0x001C($sp)
/* 003B0 80B5BB60 0C028D88 */  jal     SkelAnime_LoadAnimationType5
/* 003B4 80B5BB64 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 003B8 80B5BB68 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 003BC 80B5BB6C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003C0 80B5BB70 03E00008 */  jr      $ra
/* 003C4 80B5BB74 00000000 */  nop
