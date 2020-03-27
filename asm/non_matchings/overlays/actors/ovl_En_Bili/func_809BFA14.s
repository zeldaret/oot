glabel func_809BFA14
/* 00174 809BFA14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00178 809BFA18 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0017C 809BFA1C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00180 809BFA20 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00184 809BFA24 24A500A4 */  addiu   $a1, $a1, 0x00A4           ## $a1 = 060000A4
/* 00188 809BFA28 AFA60018 */  sw      $a2, 0x0018($sp)
/* 0018C 809BFA2C 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 00190 809BFA30 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00194 809BFA34 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00198 809BFA38 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 0019C 809BFA3C 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 001A0 809BFA40 240E0019 */  addiu   $t6, $zero, 0x0019         ## $t6 = 00000019
/* 001A4 809BFA44 3C01809C */  lui     $at, %hi(D_809C1734)       ## $at = 809C0000
/* 001A8 809BFA48 A4CE0196 */  sh      $t6, 0x0196($a2)           ## 00000196
/* 001AC 809BFA4C E4C40060 */  swc1    $f4, 0x0060($a2)           ## 00000060
/* 001B0 809BFA50 C4261734 */  lwc1    $f6, %lo(D_809C1734)($at)
/* 001B4 809BFA54 90CF01E4 */  lbu     $t7, 0x01E4($a2)           ## 000001E4
/* 001B8 809BFA58 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 001BC 809BFA5C 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 001C0 809BFA60 3C19809C */  lui     $t9, %hi(func_809C0260)    ## $t9 = 809C0000
/* 001C4 809BFA64 27390260 */  addiu   $t9, $t9, %lo(func_809C0260) ## $t9 = 809C0260
/* 001C8 809BFA68 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 001CC 809BFA6C A0D801E4 */  sb      $t8, 0x01E4($a2)           ## 000001E4
/* 001D0 809BFA70 ACD90190 */  sw      $t9, 0x0190($a2)           ## 00000190
/* 001D4 809BFA74 E4C6006C */  swc1    $f6, 0x006C($a2)           ## 0000006C
/* 001D8 809BFA78 E4C80068 */  swc1    $f8, 0x0068($a2)           ## 00000068
/* 001DC 809BFA7C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 001E0 809BFA80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001E4 809BFA84 03E00008 */  jr      $ra
/* 001E8 809BFA88 00000000 */  nop


