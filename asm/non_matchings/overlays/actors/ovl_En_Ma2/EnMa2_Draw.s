.rdata
glabel D_80AA28F0
    .asciz "../z_en_ma2.c"
    .balign 4

glabel D_80AA2900
    .asciz "../z_en_ma2.c"
    .balign 4

.text
glabel EnMa2_Draw
/* 00CDC 80AA267C 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00CE0 80AA2680 AFB20030 */  sw      $s2, 0x0030($sp)
/* 00CE4 80AA2684 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00CE8 80AA2688 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 00CEC 80AA268C AFB1002C */  sw      $s1, 0x002C($sp)
/* 00CF0 80AA2690 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00CF4 80AA2694 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00CF8 80AA2698 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CFC 80AA269C 3C0680AA */  lui     $a2, %hi(D_80AA28F0)       ## $a2 = 80AA0000
/* 00D00 80AA26A0 24C628F0 */  addiu   $a2, $a2, %lo(D_80AA28F0)  ## $a2 = 80AA28F0
/* 00D04 80AA26A4 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 00D08 80AA26A8 240703BB */  addiu   $a3, $zero, 0x03BB         ## $a3 = 000003BB
/* 00D0C 80AA26AC 0C031AB1 */  jal     Graph_OpenDisps
/* 00D10 80AA26B0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00D14 80AA26B4 864E07A0 */  lh      $t6, 0x07A0($s2)           ## 000007A0
/* 00D18 80AA26B8 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00D1C 80AA26BC 000E7880 */  sll     $t7, $t6,  2
/* 00D20 80AA26C0 024FC021 */  addu    $t8, $s2, $t7
/* 00D24 80AA26C4 8F020790 */  lw      $v0, 0x0790($t8)           ## 00000790
/* 00D28 80AA26C8 0C01E00A */  jal     Math_Vec3f_DistXZ

/* 00D2C 80AA26CC 2445005C */  addiu   $a1, $v0, 0x005C           ## $a1 = 0000005C
/* 00D30 80AA26D0 46000306 */  mov.s   $f12, $f0
/* 00D34 80AA26D4 0C03D89A */  jal     func_800F6268
/* 00D38 80AA26D8 2405002F */  addiu   $a1, $zero, 0x002F         ## $a1 = 0000002F
/* 00D3C 80AA26DC 0C024F46 */  jal     func_80093D18
/* 00D40 80AA26E0 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 00D44 80AA26E4 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 00D48 80AA26E8 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 00D4C 80AA26EC 35080024 */  ori     $t0, $t0, 0x0024           ## $t0 = DB060024
/* 00D50 80AA26F0 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 00D54 80AA26F4 AE3902C0 */  sw      $t9, 0x02C0($s1)           ## 000002C0
/* 00D58 80AA26F8 AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 00D5C 80AA26FC 86090210 */  lh      $t1, 0x0210($s0)           ## 00000210
/* 00D60 80AA2700 3C0480AA */  lui     $a0, %hi(D_80AA28B4)       ## $a0 = 80AA0000
/* 00D64 80AA2704 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 00D68 80AA2708 00095080 */  sll     $t2, $t1,  2
/* 00D6C 80AA270C 008A2021 */  addu    $a0, $a0, $t2
/* 00D70 80AA2710 8C8428B4 */  lw      $a0, %lo(D_80AA28B4)($a0)
/* 00D74 80AA2714 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 00D78 80AA2718 3C0500FF */  lui     $a1, 0x00FF                ## $a1 = 00FF0000
/* 00D7C 80AA271C 00046100 */  sll     $t4, $a0,  4
/* 00D80 80AA2720 000C6F02 */  srl     $t5, $t4, 28
/* 00D84 80AA2724 000D7080 */  sll     $t6, $t5,  2
/* 00D88 80AA2728 00CE7821 */  addu    $t7, $a2, $t6
/* 00D8C 80AA272C 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 00D90 80AA2730 34A5FFFF */  ori     $a1, $a1, 0xFFFF           ## $a1 = 00FFFFFF
/* 00D94 80AA2734 00855824 */  and     $t3, $a0, $a1
/* 00D98 80AA2738 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 00D9C 80AA273C 0178C821 */  addu    $t9, $t3, $t8
/* 00DA0 80AA2740 03274021 */  addu    $t0, $t9, $a3
/* 00DA4 80AA2744 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
/* 00DA8 80AA2748 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 00DAC 80AA274C 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00DB0 80AA2750 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 00DB4 80AA2754 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 00DB8 80AA2758 AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 00DBC 80AA275C AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 00DC0 80AA2760 860C020E */  lh      $t4, 0x020E($s0)           ## 0000020E
/* 00DC4 80AA2764 3C0480AA */  lui     $a0, %hi(D_80AA28C0)       ## $a0 = 80AA0000
/* 00DC8 80AA2768 000C6880 */  sll     $t5, $t4,  2
/* 00DCC 80AA276C 008D2021 */  addu    $a0, $a0, $t5
/* 00DD0 80AA2770 8C8428C0 */  lw      $a0, %lo(D_80AA28C0)($a0)
/* 00DD4 80AA2774 3C0D80AA */  lui     $t5, %hi(func_80AA2590)    ## $t5 = 80AA0000
/* 00DD8 80AA2778 3C0C80AA */  lui     $t4, %hi(func_80AA2354)    ## $t4 = 80AA0000
/* 00DDC 80AA277C 00047900 */  sll     $t7, $a0,  4
/* 00DE0 80AA2780 000F5F02 */  srl     $t3, $t7, 28
/* 00DE4 80AA2784 000BC080 */  sll     $t8, $t3,  2
/* 00DE8 80AA2788 00D8C821 */  addu    $t9, $a2, $t8
/* 00DEC 80AA278C 8F280000 */  lw      $t0, 0x0000($t9)           ## 00000008
/* 00DF0 80AA2790 00857024 */  and     $t6, $a0, $a1
/* 00DF4 80AA2794 258C2354 */  addiu   $t4, $t4, %lo(func_80AA2354) ## $t4 = 80AA2354
/* 00DF8 80AA2798 01C84821 */  addu    $t1, $t6, $t0
/* 00DFC 80AA279C 01275021 */  addu    $t2, $t1, $a3
/* 00E00 80AA27A0 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 00E04 80AA27A4 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 00E08 80AA27A8 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 00E0C 80AA27AC 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 00E10 80AA27B0 25AD2590 */  addiu   $t5, $t5, %lo(func_80AA2590) ## $t5 = 80AA2590
/* 00E14 80AA27B4 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 00E18 80AA27B8 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00E1C 80AA27BC AFAC0010 */  sw      $t4, 0x0010($sp)
/* 00E20 80AA27C0 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00E24 80AA27C4 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00E28 80AA27C8 3C0680AA */  lui     $a2, %hi(D_80AA2900)       ## $a2 = 80AA0000
/* 00E2C 80AA27CC 24C62900 */  addiu   $a2, $a2, %lo(D_80AA2900)  ## $a2 = 80AA2900
/* 00E30 80AA27D0 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 00E34 80AA27D4 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 00E38 80AA27D8 0C031AD5 */  jal     Graph_CloseDisps
/* 00E3C 80AA27DC 240703DE */  addiu   $a3, $zero, 0x03DE         ## $a3 = 000003DE
/* 00E40 80AA27E0 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 00E44 80AA27E4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00E48 80AA27E8 8FB1002C */  lw      $s1, 0x002C($sp)
/* 00E4C 80AA27EC 8FB20030 */  lw      $s2, 0x0030($sp)
/* 00E50 80AA27F0 03E00008 */  jr      $ra
/* 00E54 80AA27F4 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 00E58 80AA27F8 00000000 */  nop
/* 00E5C 80AA27FC 00000000 */  nop
