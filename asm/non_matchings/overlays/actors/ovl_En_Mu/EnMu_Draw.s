glabel EnMu_Draw
/* 005F4 80AB0A14 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 005F8 80AB0A18 AFB70044 */  sw      $s7, 0x0044($sp)
/* 005FC 80AB0A1C 3C0E80AB */  lui     $t6, %hi(D_80AB0C38)       ## $t6 = 80AB0000
/* 00600 80AB0A20 27B70084 */  addiu   $s7, $sp, 0x0084           ## $s7 = FFFFFFD4
/* 00604 80AB0A24 AFBE0048 */  sw      $s8, 0x0048($sp)
/* 00608 80AB0A28 AFB60040 */  sw      $s6, 0x0040($sp)
/* 0060C 80AB0A2C 25CE0C38 */  addiu   $t6, $t6, %lo(D_80AB0C38)  ## $t6 = 80AB0C38
/* 00610 80AB0A30 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 00614 80AB0A34 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 00618 80AB0A38 AFBF004C */  sw      $ra, 0x004C($sp)
/* 0061C 80AB0A3C AFB5003C */  sw      $s5, 0x003C($sp)
/* 00620 80AB0A40 AFB40038 */  sw      $s4, 0x0038($sp)
/* 00624 80AB0A44 AFB30034 */  sw      $s3, 0x0034($sp)
/* 00628 80AB0A48 AFB20030 */  sw      $s2, 0x0030($sp)
/* 0062C 80AB0A4C AFB1002C */  sw      $s1, 0x002C($sp)
/* 00630 80AB0A50 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00634 80AB0A54 25C80024 */  addiu   $t0, $t6, 0x0024           ## $t0 = 80AB0C5C
/* 00638 80AB0A58 02E0C825 */  or      $t9, $s7, $zero            ## $t9 = FFFFFFD4
.L80AB0A5C:
/* 0063C 80AB0A5C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80AB0C38
/* 00640 80AB0A60 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = 80AB0C44
/* 00644 80AB0A64 2739000C */  addiu   $t9, $t9, 0x000C           ## $t9 = FFFFFFE0
/* 00648 80AB0A68 AF38FFF4 */  sw      $t8, -0x000C($t9)          ## FFFFFFD4
/* 0064C 80AB0A6C 8DCFFFF8 */  lw      $t7, -0x0008($t6)          ## 80AB0C3C
/* 00650 80AB0A70 AF2FFFF8 */  sw      $t7, -0x0008($t9)          ## FFFFFFD8
/* 00654 80AB0A74 8DD8FFFC */  lw      $t8, -0x0004($t6)          ## 80AB0C40
/* 00658 80AB0A78 15C8FFF8 */  bne     $t6, $t0, .L80AB0A5C
/* 0065C 80AB0A7C AF38FFFC */  sw      $t8, -0x0004($t9)          ## FFFFFFDC
/* 00660 80AB0A80 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80AB0C44
/* 00664 80AB0A84 3C0A80AB */  lui     $t2, %hi(D_80AB0C60)       ## $t2 = 80AB0000
/* 00668 80AB0A88 254A0C60 */  addiu   $t2, $t2, %lo(D_80AB0C60)  ## $t2 = 80AB0C60
/* 0066C 80AB0A8C AF380000 */  sw      $t8, 0x0000($t9)           ## FFFFFFE0
/* 00670 80AB0A90 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 80AB0C60
/* 00674 80AB0A94 27A9007C */  addiu   $t1, $sp, 0x007C           ## $t1 = FFFFFFCC
/* 00678 80AB0A98 3C0680AB */  lui     $a2, %hi(D_80AB0C70)       ## $a2 = 80AB0000
/* 0067C 80AB0A9C AD2C0000 */  sw      $t4, 0x0000($t1)           ## FFFFFFCC
/* 00680 80AB0AA0 914C0004 */  lbu     $t4, 0x0004($t2)           ## 80AB0C64
/* 00684 80AB0AA4 24C60C70 */  addiu   $a2, $a2, %lo(D_80AB0C70)  ## $a2 = 80AB0C70
/* 00688 80AB0AA8 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFB4
/* 0068C 80AB0AAC A12C0004 */  sb      $t4, 0x0004($t1)           ## FFFFFFD0
/* 00690 80AB0AB0 8FC50000 */  lw      $a1, 0x0000($s8)           ## 00000000
/* 00694 80AB0AB4 24070202 */  addiu   $a3, $zero, 0x0202         ## $a3 = 00000202
/* 00698 80AB0AB8 0C031AB1 */  jal     func_800C6AC4
/* 0069C 80AB0ABC 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 006A0 80AB0AC0 3C01C496 */  lui     $at, 0xC496                ## $at = C4960000
/* 006A4 80AB0AC4 44816000 */  mtc1    $at, $f12                  ## $f12 = -1200.00
/* 006A8 80AB0AC8 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 006AC 80AB0ACC 3C06C4AF */  lui     $a2, 0xC4AF                ## $a2 = C4AF0000
/* 006B0 80AB0AD0 0C034261 */  jal     Matrix_Translate
/* 006B4 80AB0AD4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 006B8 80AB0AD8 27B1007C */  addiu   $s1, $sp, 0x007C           ## $s1 = FFFFFFCC
/* 006BC 80AB0ADC 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 006C0 80AB0AE0 24150014 */  addiu   $s5, $zero, 0x0014         ## $s5 = 00000014
/* 006C4 80AB0AE4 3C14DB06 */  lui     $s4, 0xDB06                ## $s4 = DB060000
.L80AB0AE8:
/* 006C8 80AB0AE8 8E7202C0 */  lw      $s2, 0x02C0($s3)           ## 000002C0
/* 006CC 80AB0AEC 264D0008 */  addiu   $t5, $s2, 0x0008           ## $t5 = 00000008
/* 006D0 80AB0AF0 AE6D02C0 */  sw      $t5, 0x02C0($s3)           ## 000002C0
/* 006D4 80AB0AF4 92280000 */  lbu     $t0, 0x0000($s1)           ## FFFFFFCC
/* 006D8 80AB0AF8 00087080 */  sll     $t6, $t0,  2
/* 006DC 80AB0AFC 31D9FFFF */  andi    $t9, $t6, 0xFFFF           ## $t9 = 00000000
/* 006E0 80AB0B00 03347825 */  or      $t7, $t9, $s4              ## $t7 = DB060000
/* 006E4 80AB0B04 AE4F0000 */  sw      $t7, 0x0000($s2)           ## 00000000
/* 006E8 80AB0B08 86D8001C */  lh      $t8, 0x001C($s6)           ## 0000001C
/* 006EC 80AB0B0C 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 006F0 80AB0B10 00184880 */  sll     $t1, $t8,  2
/* 006F4 80AB0B14 01384821 */  addu    $t1, $t1, $t8
/* 006F8 80AB0B18 00094880 */  sll     $t1, $t1,  2
/* 006FC 80AB0B1C 02E95021 */  addu    $t2, $s7, $t1
/* 00700 80AB0B20 01501021 */  addu    $v0, $t2, $s0
/* 00704 80AB0B24 904B0003 */  lbu     $t3, 0x0003($v0)           ## 00000003
/* 00708 80AB0B28 90450000 */  lbu     $a1, 0x0000($v0)           ## 00000000
/* 0070C 80AB0B2C 90460001 */  lbu     $a2, 0x0001($v0)           ## 00000001
/* 00710 80AB0B30 90470002 */  lbu     $a3, 0x0002($v0)           ## 00000002
/* 00714 80AB0B34 0C2AC26A */  jal     func_80AB09A8
/* 00718 80AB0B38 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 0071C 80AB0B3C 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = 00000004
/* 00720 80AB0B40 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = FFFFFFCD
/* 00724 80AB0B44 1615FFE8 */  bne     $s0, $s5, .L80AB0AE8
/* 00728 80AB0B48 AE420004 */  sw      $v0, 0x0004($s2)           ## 00000004
/* 0072C 80AB0B4C 8EC50150 */  lw      $a1, 0x0150($s6)           ## 00000150
/* 00730 80AB0B50 8EC6016C */  lw      $a2, 0x016C($s6)           ## 0000016C
/* 00734 80AB0B54 92C7014E */  lbu     $a3, 0x014E($s6)           ## 0000014E
/* 00738 80AB0B58 3C0C80AB */  lui     $t4, %hi(func_80AB08A4)    ## $t4 = 80AB0000
/* 0073C 80AB0B5C 3C0D80AB */  lui     $t5, %hi(func_80AB0994)    ## $t5 = 80AB0000
/* 00740 80AB0B60 25AD0994 */  addiu   $t5, $t5, %lo(func_80AB0994) ## $t5 = 80AB0994
/* 00744 80AB0B64 258C08A4 */  addiu   $t4, $t4, %lo(func_80AB08A4) ## $t4 = 80AB08A4
/* 00748 80AB0B68 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 0074C 80AB0B6C AFAD0014 */  sw      $t5, 0x0014($sp)
/* 00750 80AB0B70 AFB60018 */  sw      $s6, 0x0018($sp)
/* 00754 80AB0B74 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00758 80AB0B78 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 0075C 80AB0B7C 3C0680AB */  lui     $a2, %hi(D_80AB0C80)       ## $a2 = 80AB0000
/* 00760 80AB0B80 24C60C80 */  addiu   $a2, $a2, %lo(D_80AB0C80)  ## $a2 = 80AB0C80
/* 00764 80AB0B84 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFB4
/* 00768 80AB0B88 8FC50000 */  lw      $a1, 0x0000($s8)           ## 00000000
/* 0076C 80AB0B8C 0C031AD5 */  jal     func_800C6B54
/* 00770 80AB0B90 24070216 */  addiu   $a3, $zero, 0x0216         ## $a3 = 00000216
/* 00774 80AB0B94 8FBF004C */  lw      $ra, 0x004C($sp)
/* 00778 80AB0B98 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0077C 80AB0B9C 8FB1002C */  lw      $s1, 0x002C($sp)
/* 00780 80AB0BA0 8FB20030 */  lw      $s2, 0x0030($sp)
/* 00784 80AB0BA4 8FB30034 */  lw      $s3, 0x0034($sp)
/* 00788 80AB0BA8 8FB40038 */  lw      $s4, 0x0038($sp)
/* 0078C 80AB0BAC 8FB5003C */  lw      $s5, 0x003C($sp)
/* 00790 80AB0BB0 8FB60040 */  lw      $s6, 0x0040($sp)
/* 00794 80AB0BB4 8FB70044 */  lw      $s7, 0x0044($sp)
/* 00798 80AB0BB8 8FBE0048 */  lw      $s8, 0x0048($sp)
/* 0079C 80AB0BBC 03E00008 */  jr      $ra
/* 007A0 80AB0BC0 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000
/* 007A4 80AB0BC4 00000000 */  nop
/* 007A8 80AB0BC8 00000000 */  nop
/* 007AC 80AB0BCC 00000000 */  nop

