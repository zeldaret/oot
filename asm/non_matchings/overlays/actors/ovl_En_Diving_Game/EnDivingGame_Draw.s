glabel EnDivingGame_Draw
/* 016D4 809EEF44 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 016D8 809EEF48 AFB20030 */  sw      $s2, 0x0030($sp)
/* 016DC 809EEF4C 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 016E0 809EEF50 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 016E4 809EEF54 AFB1002C */  sw      $s1, 0x002C($sp)
/* 016E8 809EEF58 AFB00028 */  sw      $s0, 0x0028($sp)
/* 016EC 809EEF5C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 016F0 809EEF60 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 016F4 809EEF64 3C06809F */  lui     $a2, %hi(D_809EF17C)       ## $a2 = 809F0000
/* 016F8 809EEF68 24C6F17C */  addiu   $a2, $a2, %lo(D_809EF17C)  ## $a2 = 809EF17C
/* 016FC 809EEF6C 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFE4
/* 01700 809EEF70 240704BC */  addiu   $a3, $zero, 0x04BC         ## $a3 = 000004BC
/* 01704 809EEF74 0C031AB1 */  jal     Graph_OpenDisps
/* 01708 809EEF78 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0170C 809EEF7C 0C024F46 */  jal     func_80093D18
/* 01710 809EEF80 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 01714 809EEF84 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01718 809EEF88 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 0171C 809EEF8C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01720 809EEF90 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 01724 809EEF94 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 01728 809EEF98 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0172C 809EEF9C AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 01730 809EEFA0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01734 809EEFA4 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 01738 809EEFA8 35080030 */  ori     $t0, $t0, 0x0030           ## $t0 = DB060030
/* 0173C 809EEFAC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01740 809EEFB0 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 01744 809EEFB4 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 01748 809EEFB8 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 0174C 809EEFBC 0C27BB6E */  jal     func_809EEDB8
/* 01750 809EEFC0 AFA20044 */  sw      $v0, 0x0044($sp)
/* 01754 809EEFC4 8FA30044 */  lw      $v1, 0x0044($sp)
/* 01758 809EEFC8 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 0175C 809EEFCC 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 01760 809EEFD0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01764 809EEFD4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01768 809EEFD8 3C04809F */  lui     $a0, %hi(D_809EF0E0)       ## $a0 = 809F0000
/* 0176C 809EEFDC 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 01770 809EEFE0 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 01774 809EEFE4 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 01778 809EEFE8 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0177C 809EEFEC 862B029E */  lh      $t3, 0x029E($s1)           ## 0000029E
/* 01780 809EEFF0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01784 809EEFF4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01788 809EEFF8 000B6080 */  sll     $t4, $t3,  2
/* 0178C 809EEFFC 008C2021 */  addu    $a0, $a0, $t4
/* 01790 809EF000 8C84F0E0 */  lw      $a0, %lo(D_809EF0E0)($a0)
/* 01794 809EF004 3C0A809F */  lui     $t2, %hi(func_809EEDE4)    ## $t2 = 809F0000
/* 01798 809EF008 254AEDE4 */  addiu   $t2, $t2, %lo(func_809EEDE4) ## $t2 = 809EEDE4
/* 0179C 809EF00C 00047100 */  sll     $t6, $a0,  4
/* 017A0 809EF010 000E7F02 */  srl     $t7, $t6, 28
/* 017A4 809EF014 000FC080 */  sll     $t8, $t7,  2
/* 017A8 809EF018 0338C821 */  addu    $t9, $t9, $t8
/* 017AC 809EF01C 8F396FA8 */  lw      $t9, 0x6FA8($t9)           ## 80166FA8
/* 017B0 809EF020 00816824 */  and     $t5, $a0, $at
/* 017B4 809EF024 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 017B8 809EF028 01B94021 */  addu    $t0, $t5, $t9
/* 017BC 809EF02C 01014821 */  addu    $t1, $t0, $at
/* 017C0 809EF030 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 017C4 809EF034 9227014E */  lbu     $a3, 0x014E($s1)           ## 0000014E
/* 017C8 809EF038 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 017CC 809EF03C 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 017D0 809EF040 AFB10018 */  sw      $s1, 0x0018($sp)
/* 017D4 809EF044 AFA00014 */  sw      $zero, 0x0014($sp)
/* 017D8 809EF048 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 017DC 809EF04C 0C0286B2 */  jal     SkelAnime_DrawSV
/* 017E0 809EF050 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 017E4 809EF054 3C06809F */  lui     $a2, %hi(D_809EF194)       ## $a2 = 809F0000
/* 017E8 809EF058 24C6F194 */  addiu   $a2, $a2, %lo(D_809EF194)  ## $a2 = 809EF194
/* 017EC 809EF05C 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFE4
/* 017F0 809EF060 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 017F4 809EF064 0C031AD5 */  jal     Graph_CloseDisps
/* 017F8 809EF068 240704D0 */  addiu   $a3, $zero, 0x04D0         ## $a3 = 000004D0
/* 017FC 809EF06C 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 01800 809EF070 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01804 809EF074 8FB1002C */  lw      $s1, 0x002C($sp)
/* 01808 809EF078 8FB20030 */  lw      $s2, 0x0030($sp)
/* 0180C 809EF07C 03E00008 */  jr      $ra
/* 01810 809EF080 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 01814 809EF084 00000000 */  nop
/* 01818 809EF088 00000000 */  nop
/* 0181C 809EF08C 00000000 */  nop

