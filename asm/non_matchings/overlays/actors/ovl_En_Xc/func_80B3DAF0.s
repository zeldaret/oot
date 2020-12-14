glabel func_80B3DAF0
/* 01910 80B3DAF0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01914 80B3DAF4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01918 80B3DAF8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0191C 80B3DAFC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01920 80B3DB00 0C2CF134 */  jal     func_80B3C4D0
/* 01924 80B3DB04 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01928 80B3DB08 50400025 */  beql    $v0, $zero, .L80B3DBA0
/* 0192C 80B3DB0C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01930 80B3DB10 94440000 */  lhu     $a0, 0x0000($v0)           ## 00000000
/* 01934 80B3DB14 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01938 80B3DB18 10810008 */  beq     $a0, $at, .L80B3DB3C
/* 0193C 80B3DB1C 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 01940 80B3DB20 10810006 */  beq     $a0, $at, .L80B3DB3C
/* 01944 80B3DB24 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 01948 80B3DB28 10810004 */  beq     $a0, $at, .L80B3DB3C
/* 0194C 80B3DB2C 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 01950 80B3DB30 10810002 */  beq     $a0, $at, .L80B3DB3C
/* 01954 80B3DB34 24010017 */  addiu   $at, $zero, 0x0017         ## $at = 00000017
/* 01958 80B3DB38 14810018 */  bne     $a0, $at, .L80B3DB9C
.L80B3DB3C:
/* 0195C 80B3DB3C 3C040602 */  lui     $a0, %hi(D_0601B19C)                ## $a0 = 06020000
/* 01960 80B3DB40 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01964 80B3DB44 2484B19C */  addiu   $a0, $a0, %lo(D_0601B19C)           ## $a0 = 0601B19C
/* 01968 80B3DB48 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0196C 80B3DB4C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 01970 80B3DB50 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 01974 80B3DB54 468021A0 */  cvt.s.w $f6, $f4
/* 01978 80B3DB58 8FA40028 */  lw      $a0, 0x0028($sp)
/* 0197C 80B3DB5C 3C050602 */  lui     $a1, %hi(D_0601B19C)                ## $a1 = 06020000
/* 01980 80B3DB60 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01984 80B3DB64 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01988 80B3DB68 24A5B19C */  addiu   $a1, $a1, %lo(D_0601B19C)           ## $a1 = 0601B19C
/* 0198C 80B3DB6C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01990 80B3DB70 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01994 80B3DB74 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01998 80B3DB78 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 0199C 80B3DB7C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 019A0 80B3DB80 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 019A4 80B3DB84 8FB80028 */  lw      $t8, 0x0028($sp)
/* 019A8 80B3DB88 240F0007 */  addiu   $t7, $zero, 0x0007         ## $t7 = 00000007
/* 019AC 80B3DB8C 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 019B0 80B3DB90 AF0F0260 */  sw      $t7, 0x0260($t8)           ## 00000260
/* 019B4 80B3DB94 8FA80028 */  lw      $t0, 0x0028($sp)
/* 019B8 80B3DB98 AD190264 */  sw      $t9, 0x0264($t0)           ## 00000264
.L80B3DB9C:
/* 019BC 80B3DB9C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80B3DBA0:
/* 019C0 80B3DBA0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 019C4 80B3DBA4 03E00008 */  jr      $ra
/* 019C8 80B3DBA8 00000000 */  nop
