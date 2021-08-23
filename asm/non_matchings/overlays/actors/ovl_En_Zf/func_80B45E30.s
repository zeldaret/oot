glabel func_80B45E30
/* 01DE0 80B45E30 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01DE4 80B45E34 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 01DE8 80B45E38 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01DEC 80B45E3C 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 01DF0 80B45E40 44813000 */  mtc1    $at, $f6                   ## $f6 = -3.00
/* 01DF4 80B45E44 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01DF8 80B45E48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01DFC 80B45E4C AFBF002C */  sw      $ra, 0x002C($sp)
/* 01E00 80B45E50 3C050601 */  lui     $a1, %hi(D_06009530)                ## $a1 = 06010000
/* 01E04 80B45E54 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01E08 80B45E58 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01E0C 80B45E5C 24A59530 */  addiu   $a1, $a1, %lo(D_06009530)           ## $a1 = 06009530
/* 01E10 80B45E60 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01E14 80B45E64 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01E18 80B45E68 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01E1C 80B45E6C E7A40010 */  swc1    $f4, 0x0010($sp)
/* 01E20 80B45E70 0C029468 */  jal     Animation_Change

/* 01E24 80B45E74 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 01E28 80B45E78 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 01E2C 80B45E7C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 01E30 80B45E80 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 01E34 80B45E84 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01E38 80B45E88 AE0003F0 */  sw      $zero, 0x03F0($s0)         ## 000003F0
/* 01E3C 80B45E8C AE0F03E4 */  sw      $t7, 0x03E4($s0)           ## 000003E4
/* 01E40 80B45E90 07000005 */  bltz    $t8, .L80B45EA8
/* 01E44 80B45E94 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 01E48 80B45E98 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 01E4C 80B45E9C 44815000 */  mtc1    $at, $f10                  ## $f10 = 16.00
/* 01E50 80B45EA0 10000005 */  beq     $zero, $zero, .L80B45EB8
/* 01E54 80B45EA4 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
.L80B45EA8:
/* 01E58 80B45EA8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01E5C 80B45EAC 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 01E60 80B45EB0 00000000 */  nop
/* 01E64 80B45EB4 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
.L80B45EB8:
/* 01E68 80B45EB8 2419000D */  addiu   $t9, $zero, 0x000D         ## $t9 = 0000000D
/* 01E6C 80B45EBC AE1903DC */  sw      $t9, 0x03DC($s0)           ## 000003DC
/* 01E70 80B45EC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E74 80B45EC4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01E78 80B45EC8 2405382F */  addiu   $a1, $zero, 0x382F         ## $a1 = 0000382F
/* 01E7C 80B45ECC 3C0580B4 */  lui     $a1, %hi(func_80B45EF0)    ## $a1 = 80B40000
/* 01E80 80B45ED0 24A55EF0 */  addiu   $a1, $a1, %lo(func_80B45EF0) ## $a1 = 80B45EF0
/* 01E84 80B45ED4 0C2D1014 */  jal     func_80B44050
/* 01E88 80B45ED8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E8C 80B45EDC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01E90 80B45EE0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01E94 80B45EE4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01E98 80B45EE8 03E00008 */  jr      $ra
/* 01E9C 80B45EEC 00000000 */  nop
