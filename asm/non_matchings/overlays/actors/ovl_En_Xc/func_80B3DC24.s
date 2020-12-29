glabel func_80B3DC24
/* 01A44 80B3DC24 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01A48 80B3DC28 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01A4C 80B3DC2C 10C0001A */  beq     $a2, $zero, .L80B3DC98
/* 01A50 80B3DC30 AFA40038 */  sw      $a0, 0x0038($sp)
/* 01A54 80B3DC34 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01A58 80B3DC38 0C2CF536 */  jal     func_80B3D4D8
/* 01A5C 80B3DC3C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01A60 80B3DC40 AFA2002C */  sw      $v0, 0x002C($sp)
/* 01A64 80B3DC44 0C028800 */  jal     Animation_GetLastFrame

/* 01A68 80B3DC48 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 01A6C 80B3DC4C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01A70 80B3DC50 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01A74 80B3DC54 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 01A78 80B3DC58 468021A0 */  cvt.s.w $f6, $f4
/* 01A7C 80B3DC5C 8FA40038 */  lw      $a0, 0x0038($sp)
/* 01A80 80B3DC60 8FA5002C */  lw      $a1, 0x002C($sp)
/* 01A84 80B3DC64 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01A88 80B3DC68 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01A8C 80B3DC6C AFA00014 */  sw      $zero, 0x0014($sp)
/* 01A90 80B3DC70 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01A94 80B3DC74 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01A98 80B3DC78 0C029468 */  jal     Animation_Change

/* 01A9C 80B3DC7C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01AA0 80B3DC80 8FAF0038 */  lw      $t7, 0x0038($sp)
/* 01AA4 80B3DC84 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 01AA8 80B3DC88 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01AAC 80B3DC8C ADEE0260 */  sw      $t6, 0x0260($t7)           ## 00000260
/* 01AB0 80B3DC90 8FB90038 */  lw      $t9, 0x0038($sp)
/* 01AB4 80B3DC94 AF380264 */  sw      $t8, 0x0264($t9)           ## 00000264
.L80B3DC98:
/* 01AB8 80B3DC98 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01ABC 80B3DC9C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01AC0 80B3DCA0 03E00008 */  jr      $ra
/* 01AC4 80B3DCA4 00000000 */  nop
