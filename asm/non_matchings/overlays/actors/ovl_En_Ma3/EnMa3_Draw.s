.rdata
glabel D_80AA38E0
    .asciz "../z_en_ma3.c"
    .balign 4

glabel D_80AA38F0
    .asciz "../z_en_ma3.c"
    .balign 4

.text
glabel EnMa3_Draw
/* 00BCC 80AA366C 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00BD0 80AA3670 AFB20030 */  sw      $s2, 0x0030($sp)
/* 00BD4 80AA3674 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00BD8 80AA3678 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 00BDC 80AA367C AFB1002C */  sw      $s1, 0x002C($sp)
/* 00BE0 80AA3680 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00BE4 80AA3684 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00BE8 80AA3688 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BEC 80AA368C 3C0680AA */  lui     $a2, %hi(D_80AA38E0)       ## $a2 = 80AA0000
/* 00BF0 80AA3690 24C638E0 */  addiu   $a2, $a2, %lo(D_80AA38E0)  ## $a2 = 80AA38E0
/* 00BF4 80AA3694 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 00BF8 80AA3698 240703D2 */  addiu   $a3, $zero, 0x03D2         ## $a3 = 000003D2
/* 00BFC 80AA369C 0C031AB1 */  jal     Graph_OpenDisps
/* 00C00 80AA36A0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00C04 80AA36A4 864E07A0 */  lh      $t6, 0x07A0($s2)           ## 000007A0
/* 00C08 80AA36A8 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00C0C 80AA36AC 000E7880 */  sll     $t7, $t6,  2
/* 00C10 80AA36B0 024FC021 */  addu    $t8, $s2, $t7
/* 00C14 80AA36B4 8F020790 */  lw      $v0, 0x0790($t8)           ## 00000790
/* 00C18 80AA36B8 0C01E00A */  jal     Math_Vec3f_DistXZ

/* 00C1C 80AA36BC 2445005C */  addiu   $a1, $v0, 0x005C           ## $a1 = 0000005C
/* 00C20 80AA36C0 46000306 */  mov.s   $f12, $f0
/* 00C24 80AA36C4 0C03D89A */  jal     func_800F6268
/* 00C28 80AA36C8 2405002F */  addiu   $a1, $zero, 0x002F         ## $a1 = 0000002F
/* 00C2C 80AA36CC 0C024F46 */  jal     func_80093D18
/* 00C30 80AA36D0 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 00C34 80AA36D4 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 00C38 80AA36D8 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 00C3C 80AA36DC 35080024 */  ori     $t0, $t0, 0x0024           ## $t0 = DB060024
/* 00C40 80AA36E0 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 00C44 80AA36E4 AE3902C0 */  sw      $t9, 0x02C0($s1)           ## 000002C0
/* 00C48 80AA36E8 AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 00C4C 80AA36EC 86090210 */  lh      $t1, 0x0210($s0)           ## 00000210
/* 00C50 80AA36F0 3C0480AA */  lui     $a0, %hi(D_80AA38A4)       ## $a0 = 80AA0000
/* 00C54 80AA36F4 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 00C58 80AA36F8 00095080 */  sll     $t2, $t1,  2
/* 00C5C 80AA36FC 008A2021 */  addu    $a0, $a0, $t2
/* 00C60 80AA3700 8C8438A4 */  lw      $a0, %lo(D_80AA38A4)($a0)
/* 00C64 80AA3704 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 00C68 80AA3708 3C0500FF */  lui     $a1, 0x00FF                ## $a1 = 00FF0000
/* 00C6C 80AA370C 00046100 */  sll     $t4, $a0,  4
/* 00C70 80AA3710 000C6F02 */  srl     $t5, $t4, 28
/* 00C74 80AA3714 000D7080 */  sll     $t6, $t5,  2
/* 00C78 80AA3718 00CE7821 */  addu    $t7, $a2, $t6
/* 00C7C 80AA371C 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 00C80 80AA3720 34A5FFFF */  ori     $a1, $a1, 0xFFFF           ## $a1 = 00FFFFFF
/* 00C84 80AA3724 00855824 */  and     $t3, $a0, $a1
/* 00C88 80AA3728 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 00C8C 80AA372C 0178C821 */  addu    $t9, $t3, $t8
/* 00C90 80AA3730 03274021 */  addu    $t0, $t9, $a3
/* 00C94 80AA3734 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
/* 00C98 80AA3738 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 00C9C 80AA373C 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00CA0 80AA3740 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 00CA4 80AA3744 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 00CA8 80AA3748 AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 00CAC 80AA374C AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 00CB0 80AA3750 860C020E */  lh      $t4, 0x020E($s0)           ## 0000020E
/* 00CB4 80AA3754 3C0480AA */  lui     $a0, %hi(D_80AA38B0)       ## $a0 = 80AA0000
/* 00CB8 80AA3758 000C6880 */  sll     $t5, $t4,  2
/* 00CBC 80AA375C 008D2021 */  addu    $a0, $a0, $t5
/* 00CC0 80AA3760 8C8438B0 */  lw      $a0, %lo(D_80AA38B0)($a0)
/* 00CC4 80AA3764 3C0D80AA */  lui     $t5, %hi(func_80AA3580)    ## $t5 = 80AA0000
/* 00CC8 80AA3768 3C0C80AA */  lui     $t4, %hi(func_80AA3344)    ## $t4 = 80AA0000
/* 00CCC 80AA376C 00047900 */  sll     $t7, $a0,  4
/* 00CD0 80AA3770 000F5F02 */  srl     $t3, $t7, 28
/* 00CD4 80AA3774 000BC080 */  sll     $t8, $t3,  2
/* 00CD8 80AA3778 00D8C821 */  addu    $t9, $a2, $t8
/* 00CDC 80AA377C 8F280000 */  lw      $t0, 0x0000($t9)           ## 00000008
/* 00CE0 80AA3780 00857024 */  and     $t6, $a0, $a1
/* 00CE4 80AA3784 258C3344 */  addiu   $t4, $t4, %lo(func_80AA3344) ## $t4 = 80AA3344
/* 00CE8 80AA3788 01C84821 */  addu    $t1, $t6, $t0
/* 00CEC 80AA378C 01275021 */  addu    $t2, $t1, $a3
/* 00CF0 80AA3790 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 00CF4 80AA3794 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 00CF8 80AA3798 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 00CFC 80AA379C 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 00D00 80AA37A0 25AD3580 */  addiu   $t5, $t5, %lo(func_80AA3580) ## $t5 = 80AA3580
/* 00D04 80AA37A4 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 00D08 80AA37A8 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00D0C 80AA37AC AFAC0010 */  sw      $t4, 0x0010($sp)
/* 00D10 80AA37B0 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00D14 80AA37B4 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00D18 80AA37B8 3C0680AA */  lui     $a2, %hi(D_80AA38F0)       ## $a2 = 80AA0000
/* 00D1C 80AA37BC 24C638F0 */  addiu   $a2, $a2, %lo(D_80AA38F0)  ## $a2 = 80AA38F0
/* 00D20 80AA37C0 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 00D24 80AA37C4 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 00D28 80AA37C8 0C031AD5 */  jal     Graph_CloseDisps
/* 00D2C 80AA37CC 240703F5 */  addiu   $a3, $zero, 0x03F5         ## $a3 = 000003F5
/* 00D30 80AA37D0 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 00D34 80AA37D4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00D38 80AA37D8 8FB1002C */  lw      $s1, 0x002C($sp)
/* 00D3C 80AA37DC 8FB20030 */  lw      $s2, 0x0030($sp)
/* 00D40 80AA37E0 03E00008 */  jr      $ra
/* 00D44 80AA37E4 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 00D48 80AA37E8 00000000 */  nop
/* 00D4C 80AA37EC 00000000 */  nop
