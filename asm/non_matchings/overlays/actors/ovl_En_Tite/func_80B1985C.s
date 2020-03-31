glabel func_80B1985C
/* 00DDC 80B1985C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DE0 80B19860 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00DE4 80B19864 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DE8 80B19868 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00DEC 80B1986C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00DF0 80B19870 24A50C70 */  addiu   $a1, $a1, 0x0C70           ## $a1 = 06000C70
/* 00DF4 80B19874 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 00DF8 80B19878 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00DFC 80B1987C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00E00 80B19880 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00E04 80B19884 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00E08 80B19888 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 00E0C 80B1988C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00E10 80B19890 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 00E14 80B19894 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 00E18 80B19898 A20E02BC */  sb      $t6, 0x02BC($s0)           ## 000002BC
/* 00E1C 80B1989C 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00E20 80B198A0 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00E24 80B198A4 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 00E28 80B198A8 E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 00E2C 80B198AC 0C01DF64 */  jal     Math_Rand_S16Offset

/* 00E30 80B198B0 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 00E34 80B198B4 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00E38 80B198B8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00E3C 80B198BC A20202E2 */  sb      $v0, 0x02E2($s0)           ## 000002E2
/* 00E40 80B198C0 15E1000A */  bne     $t7, $at, .L80B198EC
/* 00E44 80B198C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E48 80B198C8 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 00E4C 80B198CC 2405388E */  addiu   $a1, $zero, 0x388E         ## $a1 = 0000388E
/* 00E50 80B198D0 33190020 */  andi    $t9, $t8, 0x0020           ## $t9 = 00000000
/* 00E54 80B198D4 13200005 */  beq     $t9, $zero, .L80B198EC
/* 00E58 80B198D8 00000000 */  nop
/* 00E5C 80B198DC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00E60 80B198E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E64 80B198E4 10000003 */  beq     $zero, $zero, .L80B198F4
/* 00E68 80B198E8 00000000 */  nop
.L80B198EC:
/* 00E6C 80B198EC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00E70 80B198F0 2405386C */  addiu   $a1, $zero, 0x386C         ## $a1 = 0000386C
.L80B198F4:
/* 00E74 80B198F4 3C0580B2 */  lui     $a1, %hi(func_80B19918)    ## $a1 = 80B20000
/* 00E78 80B198F8 24A59918 */  addiu   $a1, $a1, %lo(func_80B19918) ## $a1 = 80B19918
/* 00E7C 80B198FC 0C2C62A0 */  jal     func_80B18A80
/* 00E80 80B19900 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E84 80B19904 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00E88 80B19908 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00E8C 80B1990C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E90 80B19910 03E00008 */  jr      $ra
/* 00E94 80B19914 00000000 */  nop


