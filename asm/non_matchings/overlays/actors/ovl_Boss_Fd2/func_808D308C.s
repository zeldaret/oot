glabel func_808D308C
/* 00A1C 808D308C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A20 808D3090 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00A24 808D3094 AFA40020 */  sw      $a0, 0x0020($sp)
/* 00A28 808D3098 AFA50024 */  sw      $a1, 0x0024($sp)
/* 00A2C 808D309C 8C8F0118 */  lw      $t7, 0x0118($a0)           ## 00000118
/* 00A30 808D30A0 3C04808D */  lui     $a0, %hi(D_808D6358)       ## $a0 = 808D0000
/* 00A34 808D30A4 24846358 */  addiu   $a0, $a0, %lo(D_808D6358)  ## $a0 = 808D6358
/* 00A38 808D30A8 0C00084C */  jal     osSyncPrintf

/* 00A3C 808D30AC AFAF001C */  sw      $t7, 0x001C($sp)
/* 00A40 808D30B0 8FA40020 */  lw      $a0, 0x0020($sp)
/* 00A44 808D30B4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00A48 808D30B8 24A5AE90 */  addiu   $a1, $a1, 0xAE90           ## $a1 = 0600AE90
/* 00A4C 808D30BC 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 00A50 808D30C0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A54 808D30C4 8FA30020 */  lw      $v1, 0x0020($sp)
/* 00A58 808D30C8 3C18808D */  lui     $t8, %hi(func_808D3140)    ## $t8 = 808D0000
/* 00A5C 808D30CC 27183140 */  addiu   $t8, $t8, %lo(func_808D3140) ## $t8 = 808D3140
/* 00A60 808D30D0 AC780190 */  sw      $t8, 0x0190($v1)           ## 00000190
/* 00A64 808D30D4 8FB9001C */  lw      $t9, 0x001C($sp)
/* 00A68 808D30D8 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 00A6C 808D30DC 832200AF */  lb      $v0, 0x00AF($t9)           ## 000000AF
/* 00A70 808D30E0 54410004 */  bnel    $v0, $at, .L808D30F4
/* 00A74 808D30E4 28410012 */  slti    $at, $v0, 0x0012
/* 00A78 808D30E8 10000010 */  beq     $zero, $zero, .L808D312C
/* 00A7C 808D30EC 24020032 */  addiu   $v0, $zero, 0x0032         ## $v0 = 00000032
/* 00A80 808D30F0 28410012 */  slti    $at, $v0, 0x0012
.L808D30F4:
/* 00A84 808D30F4 54200004 */  bnel    $at, $zero, .L808D3108
/* 00A88 808D30F8 2841000C */  slti    $at, $v0, 0x000C
/* 00A8C 808D30FC 1000000B */  beq     $zero, $zero, .L808D312C
/* 00A90 808D3100 24020028 */  addiu   $v0, $zero, 0x0028         ## $v0 = 00000028
/* 00A94 808D3104 2841000C */  slti    $at, $v0, 0x000C
.L808D3108:
/* 00A98 808D3108 54200004 */  bnel    $at, $zero, .L808D311C
/* 00A9C 808D310C 28410006 */  slti    $at, $v0, 0x0006
/* 00AA0 808D3110 10000006 */  beq     $zero, $zero, .L808D312C
/* 00AA4 808D3114 24020028 */  addiu   $v0, $zero, 0x0028         ## $v0 = 00000028
/* 00AA8 808D3118 28410006 */  slti    $at, $v0, 0x0006
.L808D311C:
/* 00AAC 808D311C 14200003 */  bne     $at, $zero, .L808D312C
/* 00AB0 808D3120 24020014 */  addiu   $v0, $zero, 0x0014         ## $v0 = 00000014
/* 00AB4 808D3124 10000001 */  beq     $zero, $zero, .L808D312C
/* 00AB8 808D3128 2402001E */  addiu   $v0, $zero, 0x001E         ## $v0 = 0000001E
.L808D312C:
/* 00ABC 808D312C A46201BC */  sh      $v0, 0x01BC($v1)           ## 000001BC
/* 00AC0 808D3130 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00AC4 808D3134 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00AC8 808D3138 03E00008 */  jr      $ra
/* 00ACC 808D313C 00000000 */  nop


