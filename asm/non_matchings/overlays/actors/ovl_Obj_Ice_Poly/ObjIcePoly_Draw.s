.rdata
glabel D_80B94BB0
    .asciz "../z_obj_ice_poly.c"
    .balign 4

glabel D_80B94BC4
    .asciz "../z_obj_ice_poly.c"
    .balign 4

glabel D_80B94BD8
    .asciz "../z_obj_ice_poly.c"
    .balign 4

.text
glabel ObjIcePoly_Draw
/* 0071C 80B9497C 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 00720 80B94980 AFB10038 */  sw      $s1, 0x0038($sp)
/* 00724 80B94984 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00728 80B94988 AFBF003C */  sw      $ra, 0x003C($sp)
/* 0072C 80B9498C AFB00034 */  sw      $s0, 0x0034($sp)
/* 00730 80B94990 AFA40070 */  sw      $a0, 0x0070($sp)
/* 00734 80B94994 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00738 80B94998 3C0680B9 */  lui     $a2, %hi(D_80B94BB0)       ## $a2 = 80B90000
/* 0073C 80B9499C 24C64BB0 */  addiu   $a2, $a2, %lo(D_80B94BB0)  ## $a2 = 80B94BB0
/* 00740 80B949A0 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFE4
/* 00744 80B949A4 240701A5 */  addiu   $a3, $zero, 0x01A5         ## $a3 = 000001A5
/* 00748 80B949A8 0C031AB1 */  jal     Graph_OpenDisps
/* 0074C 80B949AC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00750 80B949B0 0C024F61 */  jal     func_80093D84
/* 00754 80B949B4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00758 80B949B8 8FA40070 */  lw      $a0, 0x0070($sp)
/* 0075C 80B949BC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00760 80B949C0 0C00BB60 */  jal     func_8002ED80
/* 00764 80B949C4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00768 80B949C8 24040500 */  addiu   $a0, $zero, 0x0500         ## $a0 = 00000500
/* 0076C 80B949CC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00770 80B949D0 2406FB00 */  addiu   $a2, $zero, 0xFB00         ## $a2 = FFFFFB00
/* 00774 80B949D4 0C034421 */  jal     Matrix_RotateZYX
/* 00778 80B949D8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0077C 80B949DC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00780 80B949E0 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 00784 80B949E4 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 00788 80B949E8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0078C 80B949EC AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 00790 80B949F0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00794 80B949F4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00798 80B949F8 3C0580B9 */  lui     $a1, %hi(D_80B94BC4)       ## $a1 = 80B90000
/* 0079C 80B949FC 24A54BC4 */  addiu   $a1, $a1, %lo(D_80B94BC4)  ## $a1 = 80B94BC4
/* 007A0 80B94A00 240601AC */  addiu   $a2, $zero, 0x01AC         ## $a2 = 000001AC
/* 007A4 80B94A04 0C0346A2 */  jal     Matrix_NewMtx
/* 007A8 80B94A08 AFA20050 */  sw      $v0, 0x0050($sp)
/* 007AC 80B94A0C 8FA30050 */  lw      $v1, 0x0050($sp)
/* 007B0 80B94A10 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 007B4 80B94A14 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 007B8 80B94A18 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 007BC 80B94A1C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 007C0 80B94A20 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 007C4 80B94A24 00711821 */  addu    $v1, $v1, $s1
/* 007C8 80B94A28 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 007CC 80B94A2C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 007D0 80B94A30 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 007D4 80B94A34 8C631DE4 */  lw      $v1, 0x1DE4($v1)           ## 00011DE4
/* 007D8 80B94A38 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 007DC 80B94A3C 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 007E0 80B94A40 00036040 */  sll     $t4, $v1,  1
/* 007E4 80B94A44 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000000
/* 007E8 80B94A48 240A0010 */  addiu   $t2, $zero, 0x0010         ## $t2 = 00000010
/* 007EC 80B94A4C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 007F0 80B94A50 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 007F4 80B94A54 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 007F8 80B94A58 AFAF0028 */  sw      $t7, 0x0028($sp)
/* 007FC 80B94A5C AFAE0024 */  sw      $t6, 0x0024($sp)
/* 00800 80B94A60 AFAB0018 */  sw      $t3, 0x0018($sp)
/* 00804 80B94A64 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 00808 80B94A68 AFAD0020 */  sw      $t5, 0x0020($sp)
/* 0080C 80B94A6C AFA90010 */  sw      $t1, 0x0010($sp)
/* 00810 80B94A70 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00814 80B94A74 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00818 80B94A78 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0081C 80B94A7C AFA2004C */  sw      $v0, 0x004C($sp)
/* 00820 80B94A80 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 00824 80B94A84 306700FF */  andi    $a3, $v1, 0x00FF           ## $a3 = 00000000
/* 00828 80B94A88 8FA8004C */  lw      $t0, 0x004C($sp)
/* 0082C 80B94A8C 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 00830 80B94A90 3C010032 */  lui     $at, 0x0032                ## $at = 00320000
/* 00834 80B94A94 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 00838 80B94A98 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0083C 80B94A9C 34216400 */  ori     $at, $at, 0x6400           ## $at = 00326400
/* 00840 80B94AA0 3C0F0403 */  lui     $t7, 0x0403                ## $t7 = 04030000
/* 00844 80B94AA4 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00848 80B94AA8 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 0084C 80B94AAC AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00850 80B94AB0 8FA90070 */  lw      $t1, 0x0070($sp)
/* 00854 80B94AB4 25EF3EE0 */  addiu   $t7, $t7, 0x3EE0           ## $t7 = 04033EE0
/* 00858 80B94AB8 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 0085C 80B94ABC 912B0150 */  lbu     $t3, 0x0150($t1)           ## 00000150
/* 00860 80B94AC0 3C0680B9 */  lui     $a2, %hi(D_80B94BD8)       ## $a2 = 80B90000
/* 00864 80B94AC4 24C64BD8 */  addiu   $a2, $a2, %lo(D_80B94BD8)  ## $a2 = 80B94BD8
/* 00868 80B94AC8 01616025 */  or      $t4, $t3, $at              ## $t4 = 00326400
/* 0086C 80B94ACC AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00870 80B94AD0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00874 80B94AD4 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFE4
/* 00878 80B94AD8 240701BC */  addiu   $a3, $zero, 0x01BC         ## $a3 = 000001BC
/* 0087C 80B94ADC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00880 80B94AE0 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 00884 80B94AE4 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 00888 80B94AE8 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0088C 80B94AEC 0C031AD5 */  jal     Graph_CloseDisps
/* 00890 80B94AF0 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00894 80B94AF4 8FBF003C */  lw      $ra, 0x003C($sp)
/* 00898 80B94AF8 8FB00034 */  lw      $s0, 0x0034($sp)
/* 0089C 80B94AFC 8FB10038 */  lw      $s1, 0x0038($sp)
/* 008A0 80B94B00 03E00008 */  jr      $ra
/* 008A4 80B94B04 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 008A8 80B94B08 00000000 */  nop
/* 008AC 80B94B0C 00000000 */  nop
