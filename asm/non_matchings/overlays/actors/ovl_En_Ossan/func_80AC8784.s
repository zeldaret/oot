.rdata
glabel D_80AC94DC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC94EC
    .asciz "../z_en_oB1.c"
    .balign 4

.text
glabel func_80AC8784
/* 05AE4 80AC8784 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 05AE8 80AC8788 AFB10028 */  sw      $s1, 0x0028($sp)
/* 05AEC 80AC878C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 05AF0 80AC8790 AFBF002C */  sw      $ra, 0x002C($sp)
/* 05AF4 80AC8794 AFB00024 */  sw      $s0, 0x0024($sp)
/* 05AF8 80AC8798 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 05AFC 80AC879C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05B00 80AC87A0 3C0680AD */  lui     $a2, %hi(D_80AC94DC)       ## $a2 = 80AD0000
/* 05B04 80AC87A4 24C694DC */  addiu   $a2, $a2, %lo(D_80AC94DC)  ## $a2 = 80AC94DC
/* 05B08 80AC87A8 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 05B0C 80AC87AC 24071203 */  addiu   $a3, $zero, 0x1203         ## $a3 = 00001203
/* 05B10 80AC87B0 0C031AB1 */  jal     Graph_OpenDisps
/* 05B14 80AC87B4 AFA5004C */  sw      $a1, 0x004C($sp)
/* 05B18 80AC87B8 0C024F46 */  jal     func_80093D18
/* 05B1C 80AC87BC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 05B20 80AC87C0 8FA5004C */  lw      $a1, 0x004C($sp)
/* 05B24 80AC87C4 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 05B28 80AC87C8 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 05B2C 80AC87CC 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 05B30 80AC87D0 3C0480AD */  lui     $a0, %hi(D_80AC8EE4)       ## $a0 = 80AD0000
/* 05B34 80AC87D4 3C0C8016 */  lui     $t4, %hi(gSegments)
/* 05B38 80AC87D8 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 05B3C 80AC87DC ACAE02C0 */  sw      $t6, 0x02C0($a1)           ## 000002C0
/* 05B40 80AC87E0 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 05B44 80AC87E4 861801F2 */  lh      $t8, 0x01F2($s0)           ## 000001F2
/* 05B48 80AC87E8 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 05B4C 80AC87EC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 05B50 80AC87F0 0018C880 */  sll     $t9, $t8,  2
/* 05B54 80AC87F4 00992021 */  addu    $a0, $a0, $t9
/* 05B58 80AC87F8 8C848EE4 */  lw      $a0, %lo(D_80AC8EE4)($a0)
/* 05B5C 80AC87FC 00044900 */  sll     $t1, $a0,  4
/* 05B60 80AC8800 00095702 */  srl     $t2, $t1, 28
/* 05B64 80AC8804 000A5880 */  sll     $t3, $t2,  2
/* 05B68 80AC8808 018B6021 */  addu    $t4, $t4, $t3
/* 05B6C 80AC880C 8D8C6FA8 */  lw      $t4, %lo(gSegments)($t4)
/* 05B70 80AC8810 00814024 */  and     $t0, $a0, $at
/* 05B74 80AC8814 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05B78 80AC8818 010C6821 */  addu    $t5, $t0, $t4
/* 05B7C 80AC881C 01A17021 */  addu    $t6, $t5, $at
/* 05B80 80AC8820 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 05B84 80AC8824 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 05B88 80AC8828 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 05B8C 80AC882C 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 05B90 80AC8830 AFB00018 */  sw      $s0, 0x0018($sp)
/* 05B94 80AC8834 AFA00014 */  sw      $zero, 0x0014($sp)
/* 05B98 80AC8838 AFA00010 */  sw      $zero, 0x0010($sp)
/* 05B9C 80AC883C 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 05BA0 80AC8840 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05BA4 80AC8844 C6040238 */  lwc1    $f4, 0x0238($s0)           ## 00000238
/* 05BA8 80AC8848 8E060230 */  lw      $a2, 0x0230($s0)           ## 00000230
/* 05BAC 80AC884C 8E070234 */  lw      $a3, 0x0234($s0)           ## 00000234
/* 05BB0 80AC8850 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 05BB4 80AC8854 920F0251 */  lbu     $t7, 0x0251($s0)           ## 00000251
/* 05BB8 80AC8858 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05BBC 80AC885C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05BC0 80AC8860 0C2B1D4A */  jal     func_80AC7528
/* 05BC4 80AC8864 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 05BC8 80AC8868 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05BCC 80AC886C 0C2B1E72 */  jal     func_80AC79C8
/* 05BD0 80AC8870 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05BD4 80AC8874 3C0680AD */  lui     $a2, %hi(D_80AC94EC)       ## $a2 = 80AD0000
/* 05BD8 80AC8878 24C694EC */  addiu   $a2, $a2, %lo(D_80AC94EC)  ## $a2 = 80AC94EC
/* 05BDC 80AC887C 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 05BE0 80AC8880 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 05BE4 80AC8884 0C031AD5 */  jal     Graph_CloseDisps
/* 05BE8 80AC8888 24071217 */  addiu   $a3, $zero, 0x1217         ## $a3 = 00001217
/* 05BEC 80AC888C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 05BF0 80AC8890 8FB00024 */  lw      $s0, 0x0024($sp)
/* 05BF4 80AC8894 8FB10028 */  lw      $s1, 0x0028($sp)
/* 05BF8 80AC8898 03E00008 */  jr      $ra
/* 05BFC 80AC889C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
