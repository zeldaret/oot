.rdata
glabel D_80AAEC00
    .asciz "../z_en_mm.c"
    .balign 4

glabel D_80AAEC10
    .asciz "../z_en_mm.c"
    .balign 4

glabel D_80AAEC20
    .asciz "../z_en_mm.c"
    .balign 4

glabel D_80AAEC30
    .asciz "../z_en_mm.c"
    .balign 4

glabel D_80AAEC40
    .asciz "../z_en_mm.c"
    .balign 4

.late_rodata
glabel D_80AAEC88
 .word 0xC4966000
glabel D_80AAEC8C
 .word 0xC4966000

.text
glabel EnMm_Draw
/* 00F3C 80AAE6AC 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00F40 80AAE6B0 AFB10028 */  sw      $s1, 0x0028($sp)
/* 00F44 80AAE6B4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00F48 80AAE6B8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00F4C 80AAE6BC AFB00024 */  sw      $s0, 0x0024($sp)
/* 00F50 80AAE6C0 AFA40080 */  sw      $a0, 0x0080($sp)
/* 00F54 80AAE6C4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00F58 80AAE6C8 3C0680AB */  lui     $a2, %hi(D_80AAEC00)       ## $a2 = 80AB0000
/* 00F5C 80AAE6CC 24C6EC00 */  addiu   $a2, $a2, %lo(D_80AAEC00)  ## $a2 = 80AAEC00
/* 00F60 80AAE6D0 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFE4
/* 00F64 80AAE6D4 24070429 */  addiu   $a3, $zero, 0x0429         ## $a3 = 00000429
/* 00F68 80AAE6D8 0C031AB1 */  jal     Graph_OpenDisps
/* 00F6C 80AAE6DC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00F70 80AAE6E0 0C024F46 */  jal     func_80093D18
/* 00F74 80AAE6E4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00F78 80AAE6E8 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 00F7C 80AAE6EC 8FA80080 */  lw      $t0, 0x0080($sp)
/* 00F80 80AAE6F0 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 00F84 80AAE6F4 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 00F88 80AAE6F8 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 00F8C 80AAE6FC 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 00F90 80AAE700 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 00F94 80AAE704 8D1801E4 */  lw      $t8, 0x01E4($t0)           ## 000001E4
/* 00F98 80AAE708 3C0480AB */  lui     $a0, %hi(D_80AAEBEC)       ## $a0 = 80AB0000
/* 00F9C 80AAE70C 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 00FA0 80AAE710 0018C880 */  sll     $t9, $t8,  2
/* 00FA4 80AAE714 00992021 */  addu    $a0, $a0, $t9
/* 00FA8 80AAE718 8C84EBEC */  lw      $a0, %lo(D_80AAEBEC)($a0)
/* 00FAC 80AAE71C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00FB0 80AAE720 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00FB4 80AAE724 00045100 */  sll     $t2, $a0,  4
/* 00FB8 80AAE728 000A5F02 */  srl     $t3, $t2, 28
/* 00FBC 80AAE72C 000B6080 */  sll     $t4, $t3,  2
/* 00FC0 80AAE730 01AC6821 */  addu    $t5, $t5, $t4
/* 00FC4 80AAE734 8DAD6FA8 */  lw      $t5, 0x6FA8($t5)           ## 80166FA8
/* 00FC8 80AAE738 00814824 */  and     $t1, $a0, $at
/* 00FCC 80AAE73C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00FD0 80AAE740 012D7021 */  addu    $t6, $t1, $t5
/* 00FD4 80AAE744 01C17821 */  addu    $t7, $t6, $at
/* 00FD8 80AAE748 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 00FDC 80AAE74C 3C1980AB */  lui     $t9, %hi(func_80AAEA10)    ## $t9 = 80AB0000
/* 00FE0 80AAE750 3C1880AB */  lui     $t8, %hi(func_80AAE97C)    ## $t8 = 80AB0000
/* 00FE4 80AAE754 9107014E */  lbu     $a3, 0x014E($t0)           ## 0000014E
/* 00FE8 80AAE758 8D06016C */  lw      $a2, 0x016C($t0)           ## 0000016C
/* 00FEC 80AAE75C 8D050150 */  lw      $a1, 0x0150($t0)           ## 00000150
/* 00FF0 80AAE760 2718E97C */  addiu   $t8, $t8, %lo(func_80AAE97C) ## $t8 = 80AAE97C
/* 00FF4 80AAE764 2739EA10 */  addiu   $t9, $t9, %lo(func_80AAEA10) ## $t9 = 80AAEA10
/* 00FF8 80AAE768 AFB90014 */  sw      $t9, 0x0014($sp)
/* 00FFC 80AAE76C AFB80010 */  sw      $t8, 0x0010($sp)
/* 01000 80AAE770 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01004 80AAE774 0C0286B2 */  jal     SkelAnime_DrawSV
/* 01008 80AAE778 AFA80018 */  sw      $t0, 0x0018($sp)
/* 0100C 80AAE77C 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 01010 80AAE780 954AF556 */  lhu     $t2, -0x0AAA($t2)          ## 8015F556
/* 01014 80AAE784 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01018 80AAE788 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 0101C 80AAE78C 314B0800 */  andi    $t3, $t2, 0x0800           ## $t3 = 00000000
/* 01020 80AAE790 1160006F */  beq     $t3, $zero, .L80AAE950
/* 01024 80AAE794 02212021 */  addu    $a0, $s1, $at
/* 01028 80AAE798 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 0102C 80AAE79C 24050015 */  addiu   $a1, $zero, 0x0015         ## $a1 = 00000015
/* 01030 80AAE7A0 0440006B */  bltz    $v0, .L80AAE950
/* 01034 80AAE7A4 AFA2005C */  sw      $v0, 0x005C($sp)
/* 01038 80AAE7A8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0103C 80AAE7AC 0C031A73 */  jal     Graph_Alloc

/* 01040 80AAE7B0 24050080 */  addiu   $a1, $zero, 0x0080         ## $a1 = 00000080
/* 01044 80AAE7B4 8FA40080 */  lw      $a0, 0x0080($sp)
/* 01048 80AAE7B8 AFA20058 */  sw      $v0, 0x0058($sp)
/* 0104C 80AAE7BC 0C03423F */  jal     Matrix_Put
/* 01050 80AAE7C0 24840208 */  addiu   $a0, $a0, 0x0208           ## $a0 = 00000208
/* 01054 80AAE7C4 3C0580AB */  lui     $a1, %hi(D_80AAEC10)       ## $a1 = 80AB0000
/* 01058 80AAE7C8 24A5EC10 */  addiu   $a1, $a1, %lo(D_80AAEC10)  ## $a1 = 80AAEC10
/* 0105C 80AAE7CC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01060 80AAE7D0 0C0346A2 */  jal     Matrix_NewMtx
/* 01064 80AAE7D4 24060457 */  addiu   $a2, $zero, 0x0457         ## $a2 = 00000457
/* 01068 80AAE7D8 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 0106C 80AAE7DC 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 01070 80AAE7E0 35290018 */  ori     $t1, $t1, 0x0018           ## $t1 = DB060018
/* 01074 80AAE7E4 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 01078 80AAE7E8 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 0107C 80AAE7EC AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 01080 80AAE7F0 8FAD005C */  lw      $t5, 0x005C($sp)
/* 01084 80AAE7F4 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 01088 80AAE7F8 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 0108C 80AAE7FC 000D7100 */  sll     $t6, $t5,  4
/* 01090 80AAE800 01CD7021 */  addu    $t6, $t6, $t5
/* 01094 80AAE804 000E7080 */  sll     $t6, $t6,  2
/* 01098 80AAE808 022E7821 */  addu    $t7, $s1, $t6
/* 0109C 80AAE80C 030FC021 */  addu    $t8, $t8, $t7
/* 010A0 80AAE810 8F1817B4 */  lw      $t8, 0x17B4($t8)           ## 000117B4
/* 010A4 80AAE814 354A002C */  ori     $t2, $t2, 0x002C           ## $t2 = DB06002C
/* 010A8 80AAE818 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 010AC 80AAE81C AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 010B0 80AAE820 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 010B4 80AAE824 35290034 */  ori     $t1, $t1, 0x0034           ## $t1 = DB060034
/* 010B8 80AAE828 244DFE40 */  addiu   $t5, $v0, 0xFE40           ## $t5 = FFFFFE40
/* 010BC 80AAE82C 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 010C0 80AAE830 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 010C4 80AAE834 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 010C8 80AAE838 8FAB0058 */  lw      $t3, 0x0058($sp)
/* 010CC 80AAE83C 3C0142C2 */  lui     $at, 0x42C2                ## $at = 42C20000
/* 010D0 80AAE840 44816000 */  mtc1    $at, $f12                  ## $f12 = 97.00
/* 010D4 80AAE844 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 010D8 80AAE848 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 010DC 80AAE84C 240E03E2 */  addiu   $t6, $zero, 0x03E2         ## $t6 = 000003E2
/* 010E0 80AAE850 240F0DBE */  addiu   $t7, $zero, 0x0DBE         ## $t7 = 00000DBE
/* 010E4 80AAE854 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 010E8 80AAE858 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 010EC 80AAE85C AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 010F0 80AAE860 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 010F4 80AAE864 2418CB76 */  addiu   $t8, $zero, 0xCB76         ## $t8 = FFFFCB76
/* 010F8 80AAE868 3C0180AB */  lui     $at, %hi(D_80AAEC88)       ## $at = 80AB0000
/* 010FC 80AAE86C A7AE0050 */  sh      $t6, 0x0050($sp)
/* 01100 80AAE870 A7AF0052 */  sh      $t7, 0x0052($sp)
/* 01104 80AAE874 A7B80054 */  sh      $t8, 0x0054($sp)
/* 01108 80AAE878 C42EEC88 */  lwc1    $f14, %lo(D_80AAEC88)($at)
/* 0110C 80AAE87C 3C06C370 */  lui     $a2, 0xC370                ## $a2 = C3700000
/* 01110 80AAE880 0C0345A5 */  jal     func_800D1694
/* 01114 80AAE884 27A70050 */  addiu   $a3, $sp, 0x0050           ## $a3 = FFFFFFD0
/* 01118 80AAE888 8FA20058 */  lw      $v0, 0x0058($sp)
/* 0111C 80AAE88C 3C0580AB */  lui     $a1, %hi(D_80AAEC20)       ## $a1 = 80AB0000
/* 01120 80AAE890 24A5EC20 */  addiu   $a1, $a1, %lo(D_80AAEC20)  ## $a1 = 80AAEC20
/* 01124 80AAE894 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 01128 80AAE898 24420040 */  addiu   $v0, $v0, 0x0040           ## $v0 = 00000040
/* 0112C 80AAE89C AFA20058 */  sw      $v0, 0x0058($sp)
/* 01130 80AAE8A0 0C034695 */  jal     Matrix_ToMtx
/* 01134 80AAE8A4 24060464 */  addiu   $a2, $zero, 0x0464         ## $a2 = 00000464
/* 01138 80AAE8A8 3C0142C2 */  lui     $at, 0x42C2                ## $at = 42C20000
/* 0113C 80AAE8AC 44816000 */  mtc1    $at, $f12                  ## $f12 = 97.00
/* 01140 80AAE8B0 2419FC1E */  addiu   $t9, $zero, 0xFC1E         ## $t9 = FFFFFC1E
/* 01144 80AAE8B4 240AF242 */  addiu   $t2, $zero, 0xF242         ## $t2 = FFFFF242
/* 01148 80AAE8B8 240BCB76 */  addiu   $t3, $zero, 0xCB76         ## $t3 = FFFFCB76
/* 0114C 80AAE8BC 3C0180AB */  lui     $at, %hi(D_80AAEC8C)       ## $at = 80AB0000
/* 01150 80AAE8C0 A7B90050 */  sh      $t9, 0x0050($sp)
/* 01154 80AAE8C4 A7AA0052 */  sh      $t2, 0x0052($sp)
/* 01158 80AAE8C8 A7AB0054 */  sh      $t3, 0x0054($sp)
/* 0115C 80AAE8CC C42EEC8C */  lwc1    $f14, %lo(D_80AAEC8C)($at)
/* 01160 80AAE8D0 3C064370 */  lui     $a2, 0x4370                ## $a2 = 43700000
/* 01164 80AAE8D4 0C0345A5 */  jal     func_800D1694
/* 01168 80AAE8D8 27A70050 */  addiu   $a3, $sp, 0x0050           ## $a3 = FFFFFFD0
/* 0116C 80AAE8DC 3C0580AB */  lui     $a1, %hi(D_80AAEC30)       ## $a1 = 80AB0000
/* 01170 80AAE8E0 24A5EC30 */  addiu   $a1, $a1, %lo(D_80AAEC30)  ## $a1 = 80AAEC30
/* 01174 80AAE8E4 8FA40058 */  lw      $a0, 0x0058($sp)
/* 01178 80AAE8E8 0C034695 */  jal     Matrix_ToMtx
/* 0117C 80AAE8EC 2406046B */  addiu   $a2, $zero, 0x046B         ## $a2 = 0000046B
/* 01180 80AAE8F0 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 01184 80AAE8F4 3C0D0603 */  lui     $t5, 0x0603                ## $t5 = 06030000
/* 01188 80AAE8F8 25ADCA38 */  addiu   $t5, $t5, 0xCA38           ## $t5 = 0602CA38
/* 0118C 80AAE8FC 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 01190 80AAE900 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 01194 80AAE904 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 01198 80AAE908 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 0119C 80AAE90C AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 011A0 80AAE910 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 011A4 80AAE914 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 011A8 80AAE918 35EF0018 */  ori     $t7, $t7, 0x0018           ## $t7 = DB060018
/* 011AC 80AAE91C 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 011B0 80AAE920 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 011B4 80AAE924 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 011B8 80AAE928 8FB80080 */  lw      $t8, 0x0080($sp)
/* 011BC 80AAE92C 3C0C0001 */  lui     $t4, 0x0001                ## $t4 = 00010000
/* 011C0 80AAE930 8319001E */  lb      $t9, 0x001E($t8)           ## 0000001E
/* 011C4 80AAE934 00195100 */  sll     $t2, $t9,  4
/* 011C8 80AAE938 01595021 */  addu    $t2, $t2, $t9
/* 011CC 80AAE93C 000A5080 */  sll     $t2, $t2,  2
/* 011D0 80AAE940 022A5821 */  addu    $t3, $s1, $t2
/* 011D4 80AAE944 018B6021 */  addu    $t4, $t4, $t3
/* 011D8 80AAE948 8D8C17B4 */  lw      $t4, 0x17B4($t4)           ## 000117B4
/* 011DC 80AAE94C AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
.L80AAE950:
/* 011E0 80AAE950 3C0680AB */  lui     $a2, %hi(D_80AAEC40)       ## $a2 = 80AB0000
/* 011E4 80AAE954 24C6EC40 */  addiu   $a2, $a2, %lo(D_80AAEC40)  ## $a2 = 80AAEC40
/* 011E8 80AAE958 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFE4
/* 011EC 80AAE95C 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 011F0 80AAE960 0C031AD5 */  jal     Graph_CloseDisps
/* 011F4 80AAE964 24070475 */  addiu   $a3, $zero, 0x0475         ## $a3 = 00000475
/* 011F8 80AAE968 8FBF002C */  lw      $ra, 0x002C($sp)
/* 011FC 80AAE96C 8FB00024 */  lw      $s0, 0x0024($sp)
/* 01200 80AAE970 8FB10028 */  lw      $s1, 0x0028($sp)
/* 01204 80AAE974 03E00008 */  jr      $ra
/* 01208 80AAE978 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
