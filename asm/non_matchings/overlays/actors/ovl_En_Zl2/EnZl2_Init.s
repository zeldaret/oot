glabel EnZl2_Init
/* 03910 80B522A0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 03914 80B522A4 AFA40040 */  sw      $a0, 0x0040($sp)
/* 03918 80B522A8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0391C 80B522AC AFA50044 */  sw      $a1, 0x0044($sp)
/* 03920 80B522B0 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 03924 80B522B4 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 03928 80B522B8 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0392C 80B522BC AFA4002C */  sw      $a0, 0x002C($sp)
/* 03930 80B522C0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 03934 80B522C4 0C00AC78 */  jal     ActorShape_Init

/* 03938 80B522C8 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 0393C 80B522CC 8FAE002C */  lw      $t6, 0x002C($sp)
/* 03940 80B522D0 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 03944 80B522D4 24C60D70 */  addiu   $a2, $a2, 0x0D70           ## $a2 = 06010D70
/* 03948 80B522D8 A1C00014 */  sb      $zero, 0x0014($t6)         ## 00000014
/* 0394C 80B522DC 8FA50040 */  lw      $a1, 0x0040($sp)
/* 03950 80B522E0 AFA00018 */  sw      $zero, 0x0018($sp)
/* 03954 80B522E4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 03958 80B522E8 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0395C 80B522EC 8FA40044 */  lw      $a0, 0x0044($sp)
/* 03960 80B522F0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 03964 80B522F4 0C0291BE */  jal     SkelAnime_InitSV
/* 03968 80B522F8 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 0396C 80B522FC 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 03970 80B52300 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03974 80B52304 85E2001C */  lh      $v0, 0x001C($t7)           ## 0000001C
/* 03978 80B52308 10410005 */  beq     $v0, $at, .L80B52320
/* 0397C 80B5230C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 03980 80B52310 10410007 */  beq     $v0, $at, .L80B52330
/* 03984 80B52314 00000000 */  nop
/* 03988 80B52318 10000008 */  beq     $zero, $zero, .L80B5233C
/* 0398C 80B5231C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80B52320:
/* 03990 80B52320 0C03DC98 */  jal     func_800F7260
/* 03994 80B52324 2404006F */  addiu   $a0, $zero, 0x006F         ## $a0 = 0000006F
/* 03998 80B52328 10000004 */  beq     $zero, $zero, .L80B5233C
/* 0399C 80B5232C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80B52330:
/* 039A0 80B52330 3C018016 */  lui     $at, %hi(gSaveContext+0x13d2)
/* 039A4 80B52334 A420FA32 */  sh      $zero, %lo(gSaveContext+0x13d2)($at)
/* 039A8 80B52338 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80B5233C:
/* 039AC 80B5233C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 039B0 80B52340 03E00008 */  jr      $ra
/* 039B4 80B52344 00000000 */  nop
