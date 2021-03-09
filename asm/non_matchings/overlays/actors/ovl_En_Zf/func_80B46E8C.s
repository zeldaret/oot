glabel func_80B46E8C
/* 02E3C 80B46E8C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02E40 80B46E90 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 02E44 80B46E94 44813000 */  mtc1    $at, $f6                   ## $f6 = -3.00
/* 02E48 80B46E98 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02E4C 80B46E9C AFB00028 */  sw      $s0, 0x0028($sp)
/* 02E50 80B46EA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02E54 80B46EA4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02E58 80B46EA8 3C050601 */  lui     $a1, %hi(D_06009530)                ## $a1 = 06010000
/* 02E5C 80B46EAC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 02E60 80B46EB0 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 02E64 80B46EB4 24A59530 */  addiu   $a1, $a1, %lo(D_06009530)           ## $a1 = 06009530
/* 02E68 80B46EB8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02E6C 80B46EBC 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 02E70 80B46EC0 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 02E74 80B46EC4 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 02E78 80B46EC8 0C029468 */  jal     Animation_Change

/* 02E7C 80B46ECC E7A40010 */  swc1    $f4, 0x0010($sp)
/* 02E80 80B46ED0 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 02E84 80B46ED4 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 02E88 80B46ED8 3C01C170 */  lui     $at, 0xC170                ## $at = C1700000
/* 02E8C 80B46EDC 44815000 */  mtc1    $at, $f10                  ## $f10 = -15.00
/* 02E90 80B46EE0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02E94 80B46EE4 2418000B */  addiu   $t8, $zero, 0x000B         ## $t8 = 0000000B
/* 02E98 80B46EE8 AE0003F0 */  sw      $zero, 0x03F0($s0)         ## 000003F0
/* 02E9C 80B46EEC AE0F03E4 */  sw      $t7, 0x03E4($s0)           ## 000003E4
/* 02EA0 80B46EF0 AE1803DC */  sw      $t8, 0x03DC($s0)           ## 000003DC
/* 02EA4 80B46EF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EA8 80B46EF8 2405382F */  addiu   $a1, $zero, 0x382F         ## $a1 = 0000382F
/* 02EAC 80B46EFC E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 02EB0 80B46F00 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02EB4 80B46F04 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 02EB8 80B46F08 3C0580B4 */  lui     $a1, %hi(func_80B46F2C)    ## $a1 = 80B40000
/* 02EBC 80B46F0C 24A56F2C */  addiu   $a1, $a1, %lo(func_80B46F2C) ## $a1 = 80B46F2C
/* 02EC0 80B46F10 0C2D1014 */  jal     func_80B44050
/* 02EC4 80B46F14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EC8 80B46F18 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02ECC 80B46F1C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02ED0 80B46F20 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02ED4 80B46F24 03E00008 */  jr      $ra
/* 02ED8 80B46F28 00000000 */  nop
