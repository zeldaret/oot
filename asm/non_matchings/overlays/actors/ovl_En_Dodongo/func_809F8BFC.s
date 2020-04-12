glabel func_809F8BFC
/* 009AC 809F8BFC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 009B0 809F8C00 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 009B4 809F8C04 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 009B8 809F8C08 44812000 */  mtc1    $at, $f4                   ## $f4 = -4.00
/* 009BC 809F8C0C AFB00028 */  sw      $s0, 0x0028($sp)
/* 009C0 809F8C10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009C4 809F8C14 AFBF002C */  sw      $ra, 0x002C($sp)
/* 009C8 809F8C18 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 009CC 809F8C1C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 009D0 809F8C20 44060000 */  mfc1    $a2, $f0
/* 009D4 809F8C24 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 009D8 809F8C28 24A528F0 */  addiu   $a1, $a1, 0x28F0           ## $a1 = 060028F0
/* 009DC 809F8C2C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 009E0 809F8C30 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 009E4 809F8C34 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 009E8 809F8C38 0C029468 */  jal     SkelAnime_ChangeAnim

/* 009EC 809F8C3C E7A40018 */  swc1    $f4, 0x0018($sp)
/* 009F0 809F8C40 921803CC */  lbu     $t8, 0x03CC($s0)           ## 000003CC
/* 009F4 809F8C44 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 009F8 809F8C48 240F0007 */  addiu   $t7, $zero, 0x0007         ## $t7 = 00000007
/* 009FC 809F8C4C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00A00 809F8C50 AE0F0304 */  sw      $t7, 0x0304($s0)           ## 00000304
/* 00A04 809F8C54 17010003 */  bne     $t8, $at, .L809F8C64
/* 00A08 809F8C58 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 00A0C 809F8C5C 24190024 */  addiu   $t9, $zero, 0x0024         ## $t9 = 00000024
/* 00A10 809F8C60 A6190312 */  sh      $t9, 0x0312($s0)           ## 00000312
.L809F8C64:
/* 00A14 809F8C64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A18 809F8C68 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00A1C 809F8C6C 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 00A20 809F8C70 3C0580A0 */  lui     $a1, %hi(func_809F9C3C)    ## $a1 = 80A00000
/* 00A24 809F8C74 24A59C3C */  addiu   $a1, $a1, %lo(func_809F9C3C) ## $a1 = 809F9C3C
/* 00A28 809F8C78 0C27E094 */  jal     func_809F8250
/* 00A2C 809F8C7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A30 809F8C80 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00A34 809F8C84 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00A38 809F8C88 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00A3C 809F8C8C 03E00008 */  jr      $ra
/* 00A40 809F8C90 00000000 */  nop
