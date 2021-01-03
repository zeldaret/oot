glabel func_808C1C80
/* 00AF0 808C1C80 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00AF4 808C1C84 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00AF8 808C1C88 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00AFC 808C1C8C 3C040601 */  lui     $a0, %hi(D_0600F0D8)                ## $a0 = 06010000
/* 00B00 808C1C90 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00B04 808C1C94 0C028800 */  jal     Animation_GetLastFrame

/* 00B08 808C1C98 2484F0D8 */  addiu   $a0, $a0, %lo(D_0600F0D8)           ## $a0 = 0600F0D8
/* 00B0C 808C1C9C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00B10 808C1CA0 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00B14 808C1CA4 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00B18 808C1CA8 468021A0 */  cvt.s.w $f6, $f4
/* 00B1C 808C1CAC 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 00B20 808C1CB0 3C050601 */  lui     $a1, %hi(D_0600F0D8)                ## $a1 = 06010000
/* 00B24 808C1CB4 24A5F0D8 */  addiu   $a1, $a1, %lo(D_0600F0D8)           ## $a1 = 0600F0D8
/* 00B28 808C1CB8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B2C 808C1CBC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00B30 808C1CC0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00B34 808C1CC4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00B38 808C1CC8 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 00B3C 808C1CCC 0C029468 */  jal     Animation_Change

/* 00B40 808C1CD0 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00B44 808C1CD4 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00B48 808C1CD8 3C0E808C */  lui     $t6, %hi(func_808C1D00)    ## $t6 = 808C0000
/* 00B4C 808C1CDC 25CE1D00 */  addiu   $t6, $t6, %lo(func_808C1D00) ## $t6 = 808C1D00
/* 00B50 808C1CE0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00B54 808C1CE4 AC6E0190 */  sw      $t6, 0x0190($v1)           ## 00000190
/* 00B58 808C1CE8 A460019C */  sh      $zero, 0x019C($v1)         ## 0000019C
/* 00B5C 808C1CEC A46F01BC */  sh      $t7, 0x01BC($v1)           ## 000001BC
/* 00B60 808C1CF0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00B64 808C1CF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B68 808C1CF8 03E00008 */  jr      $ra
/* 00B6C 808C1CFC 00000000 */  nop
