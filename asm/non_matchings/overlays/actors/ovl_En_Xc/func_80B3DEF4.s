glabel func_80B3DEF4
/* 01D14 80B3DEF4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01D18 80B3DEF8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01D1C 80B3DEFC AFB00028 */  sw      $s0, 0x0028($sp)
/* 01D20 80B3DF00 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 01D24 80B3DF04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D28 80B3DF08 51C00022 */  beql    $t6, $zero, .L80B3DF94
/* 01D2C 80B3DF0C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01D30 80B3DF10 8CA21D9C */  lw      $v0, 0x1D9C($a1)           ## 00001D9C
/* 01D34 80B3DF14 5040001F */  beql    $v0, $zero, .L80B3DF94
/* 01D38 80B3DF18 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01D3C 80B3DF1C 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 01D40 80B3DF20 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01D44 80B3DF24 3C040601 */  lui     $a0, %hi(D_06012FD0)                ## $a0 = 06010000
/* 01D48 80B3DF28 55E1001A */  bnel    $t7, $at, .L80B3DF94
/* 01D4C 80B3DF2C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01D50 80B3DF30 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01D54 80B3DF34 24842FD0 */  addiu   $a0, $a0, %lo(D_06012FD0)           ## $a0 = 06012FD0
/* 01D58 80B3DF38 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01D5C 80B3DF3C 3C01C140 */  lui     $at, 0xC140                ## $at = C1400000
/* 01D60 80B3DF40 44814000 */  mtc1    $at, $f8                   ## $f8 = -12.00
/* 01D64 80B3DF44 46802120 */  cvt.s.w $f4, $f4
/* 01D68 80B3DF48 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01D6C 80B3DF4C 3C050601 */  lui     $a1, %hi(D_06012FD0)                ## $a1 = 06010000
/* 01D70 80B3DF50 24A52FD0 */  addiu   $a1, $a1, %lo(D_06012FD0)           ## $a1 = 06012FD0
/* 01D74 80B3DF54 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01D78 80B3DF58 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 01D7C 80B3DF5C 44072000 */  mfc1    $a3, $f4
/* 01D80 80B3DF60 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01D84 80B3DF64 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01D88 80B3DF68 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01D8C 80B3DF6C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01D90 80B3DF70 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
/* 01D94 80B3DF74 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01D98 80B3DF78 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01D9C 80B3DF7C 2418000E */  addiu   $t8, $zero, 0x000E         ## $t8 = 0000000E
/* 01DA0 80B3DF80 03214021 */  addu    $t0, $t9, $at
/* 01DA4 80B3DF84 AE180260 */  sw      $t8, 0x0260($s0)           ## 00000260
/* 01DA8 80B3DF88 A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
/* 01DAC 80B3DF8C E60A0268 */  swc1    $f10, 0x0268($s0)          ## 00000268
/* 01DB0 80B3DF90 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B3DF94:
/* 01DB4 80B3DF94 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01DB8 80B3DF98 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01DBC 80B3DF9C 03E00008 */  jr      $ra
/* 01DC0 80B3DFA0 00000000 */  nop
