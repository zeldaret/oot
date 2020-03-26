glabel EnRu2_Init
/* 018CC 80AF3E1C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 018D0 80AF3E20 AFB10028 */  sw      $s1, 0x0028($sp)
/* 018D4 80AF3E24 AFB00024 */  sw      $s0, 0x0024($sp)
/* 018D8 80AF3E28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 018DC 80AF3E2C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 018E0 80AF3E30 AFBF002C */  sw      $ra, 0x002C($sp)
/* 018E4 80AF3E34 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 018E8 80AF3E38 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 018EC 80AF3E3C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 018F0 80AF3E40 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 018F4 80AF3E44 0C00AC78 */  jal     ActorShape_Init

/* 018F8 80AF3E48 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 018FC 80AF3E4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01900 80AF3E50 0C2BC954 */  jal     func_80AF2550
/* 01904 80AF3E54 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01908 80AF3E58 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 0190C 80AF3E5C 260E0190 */  addiu   $t6, $s0, 0x0190           ## $t6 = 00000190
/* 01910 80AF3E60 260F021A */  addiu   $t7, $s0, 0x021A           ## $t7 = 0000021A
/* 01914 80AF3E64 24180017 */  addiu   $t8, $zero, 0x0017         ## $t8 = 00000017
/* 01918 80AF3E68 AFB80018 */  sw      $t8, 0x0018($sp)
/* 0191C 80AF3E6C AFAF0014 */  sw      $t7, 0x0014($sp)
/* 01920 80AF3E70 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 01924 80AF3E74 24C6C700 */  addiu   $a2, $a2, 0xC700           ## $a2 = 0600C700
/* 01928 80AF3E78 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0192C 80AF3E7C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 01930 80AF3E80 0C0291BE */  jal     SkelAnime_InitSV
/* 01934 80AF3E84 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01938 80AF3E88 0C2BC9A8 */  jal     func_80AF26A0
/* 0193C 80AF3E8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01940 80AF3E90 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01944 80AF3E94 10410009 */  beq     $v0, $at, .L80AF3EBC
/* 01948 80AF3E98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0194C 80AF3E9C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01950 80AF3EA0 1041000A */  beq     $v0, $at, .L80AF3ECC
/* 01954 80AF3EA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01958 80AF3EA8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0195C 80AF3EAC 1041000B */  beq     $v0, $at, .L80AF3EDC
/* 01960 80AF3EB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01964 80AF3EB4 1000000D */  beq     $zero, $zero, .L80AF3EEC
/* 01968 80AF3EB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AF3EBC:
/* 0196C 80AF3EBC 0C2BCB87 */  jal     func_80AF2E1C
/* 01970 80AF3EC0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01974 80AF3EC4 1000000C */  beq     $zero, $zero, .L80AF3EF8
/* 01978 80AF3EC8 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
.L80AF3ECC:
/* 0197C 80AF3ECC 0C2BCCE5 */  jal     func_80AF3394
/* 01980 80AF3ED0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01984 80AF3ED4 10000008 */  beq     $zero, $zero, .L80AF3EF8
/* 01988 80AF3ED8 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
.L80AF3EDC:
/* 0198C 80AF3EDC 0C2BCDD1 */  jal     func_80AF3744
/* 01990 80AF3EE0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01994 80AF3EE4 10000004 */  beq     $zero, $zero, .L80AF3EF8
/* 01998 80AF3EE8 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
.L80AF3EEC:
/* 0199C 80AF3EEC 0C2BCA65 */  jal     func_80AF2994
/* 019A0 80AF3EF0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 019A4 80AF3EF4 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
.L80AF3EF8:
/* 019A8 80AF3EF8 A20002C2 */  sb      $zero, 0x02C2($s0)         ## 000002C2
/* 019AC 80AF3EFC A21902C3 */  sb      $t9, 0x02C3($s0)           ## 000002C3
/* 019B0 80AF3F00 8FBF002C */  lw      $ra, 0x002C($sp)
/* 019B4 80AF3F04 8FB10028 */  lw      $s1, 0x0028($sp)
/* 019B8 80AF3F08 8FB00024 */  lw      $s0, 0x0024($sp)
/* 019BC 80AF3F0C 03E00008 */  jr      $ra
/* 019C0 80AF3F10 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


