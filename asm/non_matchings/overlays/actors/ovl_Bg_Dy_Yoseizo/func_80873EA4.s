glabel func_80873EA4
/* 01674 80873EA4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01678 80873EA8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0167C 80873EAC AFB00028 */  sw      $s0, 0x0028($sp)
/* 01680 80873EB0 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 01684 80873EB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01688 80873EB8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 0168C 80873EBC 51C00042 */  beql    $t6, $zero, .L80873FC8
/* 01690 80873EC0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01694 80873EC4 8CA21D8C */  lw      $v0, 0x1D8C($a1)           ## 00001D8C
/* 01698 80873EC8 5040003F */  beql    $v0, $zero, .L80873FC8
/* 0169C 80873ECC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 016A0 80873ED0 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 016A4 80873ED4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 016A8 80873ED8 3C188087 */  lui     $t8, %hi(func_80874BE0)    ## $t8 = 80870000
/* 016AC 80873EDC 15E10039 */  bne     $t7, $at, .L80873FC4
/* 016B0 80873EE0 27184BE0 */  addiu   $t8, $t8, %lo(func_80874BE0) ## $t8 = 80874BE0
/* 016B4 80873EE4 AC980134 */  sw      $t8, 0x0134($a0)           ## 00000134
/* 016B8 80873EE8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 016BC 80873EEC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 016C0 80873EF0 AFA70034 */  sw      $a3, 0x0034($sp)
/* 016C4 80873EF4 0C00B7D5 */  jal     func_8002DF54
/* 016C8 80873EF8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 016CC 80873EFC 8FA70034 */  lw      $a3, 0x0034($sp)
/* 016D0 80873F00 A60002FE */  sh      $zero, 0x02FE($s0)         ## 000002FE
/* 016D4 80873F04 2401003B */  addiu   $at, $zero, 0x003B         ## $at = 0000003B
/* 016D8 80873F08 84F900A4 */  lh      $t9, 0x00A4($a3)           ## 000000A4
/* 016DC 80873F0C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 016E0 80873F10 17210015 */  bne     $t9, $at, .L80873F68
/* 016E4 80873F14 00000000 */  nop
/* 016E8 80873F18 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 016EC 80873F1C 0C028800 */  jal     SkelAnime_GetLastFrame

/* 016F0 80873F20 24848698 */  addiu   $a0, $a0, 0x8698           ## $a0 = 06008698
/* 016F4 80873F24 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 016F8 80873F28 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 016FC 80873F2C 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 01700 80873F30 46802020 */  cvt.s.w $f0, $f4
/* 01704 80873F34 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01708 80873F38 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 0170C 80873F3C 24A58698 */  addiu   $a1, $a1, 0x8698           ## $a1 = 06008698
/* 01710 80873F40 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 01714 80873F44 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01718 80873F48 E600032C */  swc1    $f0, 0x032C($s0)           ## 0000032C
/* 0171C 80873F4C AFA80014 */  sw      $t0, 0x0014($sp)
/* 01720 80873F50 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 01724 80873F54 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01728 80873F58 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0172C 80873F5C E7A60018 */  swc1    $f6, 0x0018($sp)
/* 01730 80873F60 10000013 */  beq     $zero, $zero, .L80873FB0
/* 01734 80873F64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80873F68:
/* 01738 80873F68 0C028800 */  jal     SkelAnime_GetLastFrame

/* 0173C 80873F6C 248431C0 */  addiu   $a0, $a0, 0x31C0           ## $a0 = 000031C0
/* 01740 80873F70 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 01744 80873F74 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01748 80873F78 44815000 */  mtc1    $at, $f10                  ## $f10 = -10.00
/* 0174C 80873F7C 46804020 */  cvt.s.w $f0, $f8
/* 01750 80873F80 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01754 80873F84 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 01758 80873F88 24A531C0 */  addiu   $a1, $a1, 0x31C0           ## $a1 = 060031C0
/* 0175C 80873F8C 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 01760 80873F90 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01764 80873F94 E600032C */  swc1    $f0, 0x032C($s0)           ## 0000032C
/* 01768 80873F98 AFA90014 */  sw      $t1, 0x0014($sp)
/* 0176C 80873F9C E7A00010 */  swc1    $f0, 0x0010($sp)
/* 01770 80873FA0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01774 80873FA4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01778 80873FA8 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 0177C 80873FAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80873FB0:
/* 01780 80873FB0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01784 80873FB4 2405287F */  addiu   $a1, $zero, 0x287F         ## $a1 = 0000287F
/* 01788 80873FB8 3C0A8087 */  lui     $t2, %hi(func_80873FD8)    ## $t2 = 80870000
/* 0178C 80873FBC 254A3FD8 */  addiu   $t2, $t2, %lo(func_80873FD8) ## $t2 = 80873FD8
/* 01790 80873FC0 AE0A014C */  sw      $t2, 0x014C($s0)           ## 0000014C
.L80873FC4:
/* 01794 80873FC4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80873FC8:
/* 01798 80873FC8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0179C 80873FCC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 017A0 80873FD0 03E00008 */  jr      $ra
/* 017A4 80873FD4 00000000 */  nop
