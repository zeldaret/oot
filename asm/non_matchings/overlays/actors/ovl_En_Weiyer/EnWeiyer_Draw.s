.rdata
glabel D_80B33AF0
    .asciz "../z_en_weiyer.c"
    .balign 4

glabel D_80B33B04
    .asciz "../z_en_weiyer.c"
    .balign 4

.text
glabel EnWeiyer_Draw
/* 01670 80B33900 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 01674 80B33904 AFB20030 */  sw      $s2, 0x0030($sp)
/* 01678 80B33908 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 0167C 80B3390C AFBF0034 */  sw      $ra, 0x0034($sp)
/* 01680 80B33910 AFB1002C */  sw      $s1, 0x002C($sp)
/* 01684 80B33914 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01688 80B33918 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0168C 80B3391C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01690 80B33920 3C0680B3 */  lui     $a2, %hi(D_80B33AF0)       ## $a2 = 80B30000
/* 01694 80B33924 24C63AF0 */  addiu   $a2, $a2, %lo(D_80B33AF0)  ## $a2 = 80B33AF0
/* 01698 80B33928 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE8
/* 0169C 80B3392C 240704A9 */  addiu   $a3, $zero, 0x04A9         ## $a3 = 000004A9
/* 016A0 80B33930 0C031AB1 */  jal     Graph_OpenDisps
/* 016A4 80B33934 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 016A8 80B33938 8E2F0190 */  lw      $t7, 0x0190($s1)           ## 00000190
/* 016AC 80B3393C 3C0E80B3 */  lui     $t6, %hi(func_80B33338)    ## $t6 = 80B30000
/* 016B0 80B33940 25CE3338 */  addiu   $t6, $t6, %lo(func_80B33338) ## $t6 = 80B33338
/* 016B4 80B33944 11CF001F */  beq     $t6, $t7, .L80B339C4
/* 016B8 80B33948 00000000 */  nop
/* 016BC 80B3394C 0C024F46 */  jal     func_80093D18
/* 016C0 80B33950 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 016C4 80B33954 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 016C8 80B33958 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 016CC 80B3395C 3C088011 */  lui     $t0, %hi(D_80116280+0x10)
/* 016D0 80B33960 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 016D4 80B33964 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 016D8 80B33968 25086290 */  addiu   $t0, %lo(D_80116280+0x10)
/* 016DC 80B3396C 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 016E0 80B33970 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 016E4 80B33974 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
/* 016E8 80B33978 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 016EC 80B3397C 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 016F0 80B33980 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 016F4 80B33984 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 016F8 80B33988 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 016FC 80B3398C AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 01700 80B33990 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 01704 80B33994 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 01708 80B33998 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 0170C 80B3399C AFB10014 */  sw      $s1, 0x0014($sp)
/* 01710 80B339A0 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01714 80B339A4 8E0C02C0 */  lw      $t4, 0x02C0($s0)           ## 000002C0
/* 01718 80B339A8 3C0780B3 */  lui     $a3, %hi(func_80B338D4)    ## $a3 = 80B30000
/* 0171C 80B339AC 24E738D4 */  addiu   $a3, $a3, %lo(func_80B338D4) ## $a3 = 80B338D4
/* 01720 80B339B0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01724 80B339B4 0C0288A2 */  jal     Skeleton_Draw
/* 01728 80B339B8 AFAC0018 */  sw      $t4, 0x0018($sp)
/* 0172C 80B339BC 10000020 */  beq     $zero, $zero, .L80B33A40
/* 01730 80B339C0 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
.L80B339C4:
/* 01734 80B339C4 0C024F61 */  jal     func_80093D84
/* 01738 80B339C8 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 0173C 80B339CC 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 01740 80B339D0 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 01744 80B339D4 3C0F8011 */  lui     $t7, %hi(D_80116280)
/* 01748 80B339D8 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 0174C 80B339DC AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 01750 80B339E0 25EF6280 */  addiu   $t7, %lo(D_80116280)
/* 01754 80B339E4 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 01758 80B339E8 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 0175C 80B339EC AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 01760 80B339F0 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 01764 80B339F4 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 01768 80B339F8 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 0176C 80B339FC 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 01770 80B33A00 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 01774 80B33A04 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 01778 80B33A08 922900C8 */  lbu     $t1, 0x00C8($s1)           ## 000000C8
/* 0177C 80B33A0C 3C0780B3 */  lui     $a3, %hi(func_80B338D4)    ## $a3 = 80B30000
/* 01780 80B33A10 24E738D4 */  addiu   $a3, $a3, %lo(func_80B338D4) ## $a3 = 80B338D4
/* 01784 80B33A14 01215025 */  or      $t2, $t1, $at              ## $t2 = FFFFFF00
/* 01788 80B33A18 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 0178C 80B33A1C 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 01790 80B33A20 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 01794 80B33A24 AFB10014 */  sw      $s1, 0x0014($sp)
/* 01798 80B33A28 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0179C 80B33A2C 8E0B02D0 */  lw      $t3, 0x02D0($s0)           ## 000002D0
/* 017A0 80B33A30 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 017A4 80B33A34 0C0288A2 */  jal     Skeleton_Draw
/* 017A8 80B33A38 AFAB0018 */  sw      $t3, 0x0018($sp)
/* 017AC 80B33A3C AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
.L80B33A40:
/* 017B0 80B33A40 3C0680B3 */  lui     $a2, %hi(D_80B33B04)       ## $a2 = 80B30000
/* 017B4 80B33A44 24C63B04 */  addiu   $a2, $a2, %lo(D_80B33B04)  ## $a2 = 80B33B04
/* 017B8 80B33A48 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE8
/* 017BC 80B33A4C 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 017C0 80B33A50 0C031AD5 */  jal     Graph_CloseDisps
/* 017C4 80B33A54 240704D8 */  addiu   $a3, $zero, 0x04D8         ## $a3 = 000004D8
/* 017C8 80B33A58 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 017CC 80B33A5C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 017D0 80B33A60 8FB1002C */  lw      $s1, 0x002C($sp)
/* 017D4 80B33A64 8FB20030 */  lw      $s2, 0x0030($sp)
/* 017D8 80B33A68 03E00008 */  jr      $ra
/* 017DC 80B33A6C 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
