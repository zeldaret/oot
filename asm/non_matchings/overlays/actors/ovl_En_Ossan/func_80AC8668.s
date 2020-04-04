glabel func_80AC8668
/* 059C8 80AC8668 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 059CC 80AC866C AFB10028 */  sw      $s1, 0x0028($sp)
/* 059D0 80AC8670 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 059D4 80AC8674 AFBF002C */  sw      $ra, 0x002C($sp)
/* 059D8 80AC8678 AFB00024 */  sw      $s0, 0x0024($sp)
/* 059DC 80AC867C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 059E0 80AC8680 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 059E4 80AC8684 3C0680AD */  lui     $a2, %hi(D_80AC94BC)       ## $a2 = 80AD0000
/* 059E8 80AC8688 24C694BC */  addiu   $a2, $a2, %lo(D_80AC94BC)  ## $a2 = 80AC94BC
/* 059EC 80AC868C 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 059F0 80AC8690 240711E2 */  addiu   $a3, $zero, 0x11E2         ## $a3 = 000011E2
/* 059F4 80AC8694 0C031AB1 */  jal     Graph_OpenDisp
/* 059F8 80AC8698 AFA5004C */  sw      $a1, 0x004C($sp)
/* 059FC 80AC869C 0C024F46 */  jal     func_80093D18
/* 05A00 80AC86A0 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 05A04 80AC86A4 8FA5004C */  lw      $a1, 0x004C($sp)
/* 05A08 80AC86A8 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 05A0C 80AC86AC 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 05A10 80AC86B0 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 05A14 80AC86B4 3C0480AD */  lui     $a0, %hi(D_80AC8EDC)       ## $a0 = 80AD0000
/* 05A18 80AC86B8 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 05A1C 80AC86BC 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 05A20 80AC86C0 ACAE02C0 */  sw      $t6, 0x02C0($a1)           ## 000002C0
/* 05A24 80AC86C4 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 05A28 80AC86C8 921801EC */  lbu     $t8, 0x01EC($s0)           ## 000001EC
/* 05A2C 80AC86CC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 05A30 80AC86D0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 05A34 80AC86D4 0018C880 */  sll     $t9, $t8,  2
/* 05A38 80AC86D8 00992021 */  addu    $a0, $a0, $t9
/* 05A3C 80AC86DC 8C848EDC */  lw      $a0, %lo(D_80AC8EDC)($a0)
/* 05A40 80AC86E0 00044900 */  sll     $t1, $a0,  4
/* 05A44 80AC86E4 00095702 */  srl     $t2, $t1, 28
/* 05A48 80AC86E8 000A5880 */  sll     $t3, $t2,  2
/* 05A4C 80AC86EC 018B6021 */  addu    $t4, $t4, $t3
/* 05A50 80AC86F0 8D8C6FA8 */  lw      $t4, 0x6FA8($t4)           ## 80166FA8
/* 05A54 80AC86F4 00814024 */  and     $t0, $a0, $at
/* 05A58 80AC86F8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05A5C 80AC86FC 010C6821 */  addu    $t5, $t0, $t4
/* 05A60 80AC8700 01A17021 */  addu    $t6, $t5, $at
/* 05A64 80AC8704 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 05A68 80AC8708 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 05A6C 80AC870C 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 05A70 80AC8710 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 05A74 80AC8714 AFB00018 */  sw      $s0, 0x0018($sp)
/* 05A78 80AC8718 AFA00014 */  sw      $zero, 0x0014($sp)
/* 05A7C 80AC871C AFA00010 */  sw      $zero, 0x0010($sp)
/* 05A80 80AC8720 0C0286B2 */  jal     SkelAnime_DrawSV
/* 05A84 80AC8724 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05A88 80AC8728 C6040238 */  lwc1    $f4, 0x0238($s0)           ## 00000238
/* 05A8C 80AC872C 8E060230 */  lw      $a2, 0x0230($s0)           ## 00000230
/* 05A90 80AC8730 8E070234 */  lw      $a3, 0x0234($s0)           ## 00000234
/* 05A94 80AC8734 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 05A98 80AC8738 920F0251 */  lbu     $t7, 0x0251($s0)           ## 00000251
/* 05A9C 80AC873C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05AA0 80AC8740 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05AA4 80AC8744 0C2B1D4A */  jal     func_80AC7528
/* 05AA8 80AC8748 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 05AAC 80AC874C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05AB0 80AC8750 0C2B1E72 */  jal     func_80AC79C8
/* 05AB4 80AC8754 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05AB8 80AC8758 3C0680AD */  lui     $a2, %hi(D_80AC94CC)       ## $a2 = 80AD0000
/* 05ABC 80AC875C 24C694CC */  addiu   $a2, $a2, %lo(D_80AC94CC)  ## $a2 = 80AC94CC
/* 05AC0 80AC8760 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 05AC4 80AC8764 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 05AC8 80AC8768 0C031AD5 */  jal     Graph_CloseDisp
/* 05ACC 80AC876C 240711F6 */  addiu   $a3, $zero, 0x11F6         ## $a3 = 000011F6
/* 05AD0 80AC8770 8FBF002C */  lw      $ra, 0x002C($sp)
/* 05AD4 80AC8774 8FB00024 */  lw      $s0, 0x0024($sp)
/* 05AD8 80AC8778 8FB10028 */  lw      $s1, 0x0028($sp)
/* 05ADC 80AC877C 03E00008 */  jr      $ra
/* 05AE0 80AC8780 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000


