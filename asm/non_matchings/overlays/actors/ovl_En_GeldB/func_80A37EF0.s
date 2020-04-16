glabel func_80A37EF0
/* 02BE0 80A37EF0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02BE4 80A37EF4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 02BE8 80A37EF8 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 02BEC 80A37EFC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02BF0 80A37F00 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 02BF4 80A37F04 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 02BF8 80A37F08 11E00004 */  beq     $t7, $zero, .L80A37F1C
/* 02BFC 80A37F0C 24A52280 */  addiu   $a1, $a1, 0x2280           ## $a1 = 06002280
/* 02C00 80A37F10 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02C04 80A37F14 00000000 */  nop
/* 02C08 80A37F18 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
.L80A37F1C:
/* 02C0C 80A37F1C 90E202FE */  lbu     $v0, 0x02FE($a3)           ## 000002FE
/* 02C10 80A37F20 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 02C14 80A37F24 24E40188 */  addiu   $a0, $a3, 0x0188           ## $a0 = 00000188
/* 02C18 80A37F28 14410005 */  bne     $v0, $at, .L80A37F40
/* 02C1C 80A37F2C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 02C20 80A37F30 8CF802EC */  lw      $t8, 0x02EC($a3)           ## 000002EC
/* 02C24 80A37F34 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 02C28 80A37F38 57010006 */  bnel    $t8, $at, .L80A37F54
/* 02C2C 80A37F3C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
.L80A37F40:
/* 02C30 80A37F40 0C0294A7 */  jal     SkelAnime_ChangeAnimPlaybackStop
/* 02C34 80A37F44 AFA70018 */  sw      $a3, 0x0018($sp)
/* 02C38 80A37F48 8FA70018 */  lw      $a3, 0x0018($sp)
/* 02C3C 80A37F4C 90E202FE */  lbu     $v0, 0x02FE($a3)           ## 000002FE
/* 02C40 80A37F50 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
.L80A37F54:
/* 02C44 80A37F54 14410003 */  bne     $v0, $at, .L80A37F64
/* 02C48 80A37F58 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 02C4C 80A37F5C 24190024 */  addiu   $t9, $zero, 0x0024         ## $t9 = 00000024
/* 02C50 80A37F60 A4F902FC */  sh      $t9, 0x02FC($a3)           ## 000002FC
.L80A37F64:
/* 02C54 80A37F64 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 02C58 80A37F68 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02C5C 80A37F6C AFA70018 */  sw      $a3, 0x0018($sp)
/* 02C60 80A37F70 8FA40018 */  lw      $a0, 0x0018($sp)
/* 02C64 80A37F74 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 02C68 80A37F78 3C0580A3 */  lui     $a1, %hi(func_80A37F98)    ## $a1 = 80A30000
/* 02C6C 80A37F7C 24A57F98 */  addiu   $a1, $a1, %lo(func_80A37F98) ## $a1 = 80A37F98
/* 02C70 80A37F80 0C28D4C4 */  jal     func_80A35310
/* 02C74 80A37F84 AC8802EC */  sw      $t0, 0x02EC($a0)           ## 000002EC
/* 02C78 80A37F88 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 02C7C 80A37F8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02C80 80A37F90 03E00008 */  jr      $ra
/* 02C84 80A37F94 00000000 */  nop
