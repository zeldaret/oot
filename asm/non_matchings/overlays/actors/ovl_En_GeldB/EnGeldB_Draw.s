.rdata
glabel D_80A3A200
    .asciz "../z_en_geldB.c"
    .balign 4

glabel D_80A3A210
    .asciz "../z_en_geldB.c"
    .balign 4

.text
glabel EnGeldB_Draw
/* 04788 80A39A98 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 0478C 80A39A9C AFBF004C */  sw      $ra, 0x004C($sp)
/* 04790 80A39AA0 AFB40048 */  sw      $s4, 0x0048($sp)
/* 04794 80A39AA4 AFB30044 */  sw      $s3, 0x0044($sp)
/* 04798 80A39AA8 AFB20040 */  sw      $s2, 0x0040($sp)
/* 0479C 80A39AAC AFB1003C */  sw      $s1, 0x003C($sp)
/* 047A0 80A39AB0 AFB00038 */  sw      $s0, 0x0038($sp)
/* 047A4 80A39AB4 AFA500DC */  sw      $a1, 0x00DC($sp)
/* 047A8 80A39AB8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 047AC 80A39ABC 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 047B0 80A39AC0 3C0680A4 */  lui     $a2, %hi(D_80A3A200)       ## $a2 = 80A40000
/* 047B4 80A39AC4 24C6A200 */  addiu   $a2, $a2, %lo(D_80A3A200)  ## $a2 = 80A3A200
/* 047B8 80A39AC8 27A400BC */  addiu   $a0, $sp, 0x00BC           ## $a0 = FFFFFFE4
/* 047BC 80A39ACC 24070A70 */  addiu   $a3, $zero, 0x0A70         ## $a3 = 00000A70
/* 047C0 80A39AD0 0C031AB1 */  jal     Graph_OpenDisps
/* 047C4 80A39AD4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 047C8 80A39AD8 868F0312 */  lh      $t7, 0x0312($s4)           ## 00000312
/* 047CC 80A39ADC 26900188 */  addiu   $s0, $s4, 0x0188           ## $s0 = 00000188
/* 047D0 80A39AE0 29E10002 */  slti    $at, $t7, 0x0002
/* 047D4 80A39AE4 5420004D */  bnel    $at, $zero, .L80A39C1C
/* 047D8 80A39AE8 8E8B02EC */  lw      $t3, 0x02EC($s4)           ## 000002EC
/* 047DC 80A39AEC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 047E0 80A39AF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000188
/* 047E4 80A39AF4 50400049 */  beql    $v0, $zero, .L80A39C1C
/* 047E8 80A39AF8 8E8B02EC */  lw      $t3, 0x02EC($s4)           ## 000002EC
/* 047EC 80A39AFC 86980312 */  lh      $t8, 0x0312($s4)           ## 00000312
/* 047F0 80A39B00 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 047F4 80A39B04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000188
/* 047F8 80A39B08 17010014 */  bne     $t8, $at, .L80A39B5C
/* 047FC 80A39B0C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04800 80A39B10 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 04804 80A39B14 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 04808 80A39B18 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0480C 80A39B1C 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 04810 80A39B20 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 04814 80A39B24 AFB90014 */  sw      $t9, 0x0014($sp)
/* 04818 80A39B28 24A50F5C */  addiu   $a1, $a1, 0x0F5C           ## $a1 = 06000F5C
/* 0481C 80A39B2C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 04820 80A39B30 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 04824 80A39B34 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 04828 80A39B38 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0482C 80A39B3C E7A60018 */  swc1    $f6, 0x0018($sp)
/* 04830 80A39B40 86880312 */  lh      $t0, 0x0312($s4)           ## 00000312
/* 04834 80A39B44 8682008A */  lh      $v0, 0x008A($s4)           ## 0000008A
/* 04838 80A39B48 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 0483C 80A39B4C A6890312 */  sh      $t1, 0x0312($s4)           ## 00000312
/* 04840 80A39B50 A68200B6 */  sh      $v0, 0x00B6($s4)           ## 000000B6
/* 04844 80A39B54 10000030 */  beq     $zero, $zero, .L80A39C18
/* 04848 80A39B58 A6820032 */  sh      $v0, 0x0032($s4)           ## 00000032
.L80A39B5C:
/* 0484C 80A39B5C 8E8A0300 */  lw      $t2, 0x0300($s4)           ## 00000300
/* 04850 80A39B60 3C048012 */  lui     $a0, %hi(gItemSlots)
/* 04854 80A39B64 24847464 */  addiu   $a0, %lo(gItemSlots)
/* 04858 80A39B68 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFF
/* 0485C 80A39B6C 1560002A */  bne     $t3, $zero, .L80A39C18
/* 04860 80A39B70 AE8B0300 */  sw      $t3, 0x0300($s4)           ## 00000300
/* 04864 80A39B74 908D000A */  lbu     $t5, 0x000A($a0)           ## 8012746E
/* 04868 80A39B78 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0486C 80A39B7C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 04870 80A39B80 004D7021 */  addu    $t6, $v0, $t5
/* 04874 80A39B84 91CF0074 */  lbu     $t7, 0x0074($t6)           ## 00000074
/* 04878 80A39B88 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
/* 0487C 80A39B8C 8FAA00DC */  lw      $t2, 0x00DC($sp)
/* 04880 80A39B90 106F0005 */  beq     $v1, $t7, .L80A39BA8
/* 04884 80A39B94 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 04888 80A39B98 9098000B */  lbu     $t8, 0x000B($a0)           ## 8012746F
/* 0488C 80A39B9C 0058C821 */  addu    $t9, $v0, $t8
/* 04890 80A39BA0 93280074 */  lbu     $t0, 0x0074($t9)           ## 00000074
/* 04894 80A39BA4 14680004 */  bne     $v1, $t0, .L80A39BB8
.L80A39BA8:
/* 04898 80A39BA8 240901A5 */  addiu   $t1, $zero, 0x01A5         ## $t1 = 000001A5
/* 0489C 80A39BAC 002A0821 */  addu    $at, $at, $t2
/* 048A0 80A39BB0 1000000F */  beq     $zero, $zero, .L80A39BF0
/* 048A4 80A39BB4 A4291E1A */  sh      $t1, 0x1E1A($at)           ## 00011E1A
.L80A39BB8:
/* 048A8 80A39BB8 944B0EEC */  lhu     $t3, 0x0EEC($v0)           ## 8015F54C
/* 048AC 80A39BBC 8FB800DC */  lw      $t8, 0x00DC($sp)
/* 048B0 80A39BC0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 048B4 80A39BC4 316C0080 */  andi    $t4, $t3, 0x0080           ## $t4 = 00000080
/* 048B8 80A39BC8 11800007 */  beq     $t4, $zero, .L80A39BE8
/* 048BC 80A39BCC 00380821 */  addu    $at, $at, $t8
/* 048C0 80A39BD0 8FAE00DC */  lw      $t6, 0x00DC($sp)
/* 048C4 80A39BD4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 048C8 80A39BD8 240D05F8 */  addiu   $t5, $zero, 0x05F8         ## $t5 = 000005F8
/* 048CC 80A39BDC 002E0821 */  addu    $at, $at, $t6
/* 048D0 80A39BE0 10000003 */  beq     $zero, $zero, .L80A39BF0
/* 048D4 80A39BE4 A42D1E1A */  sh      $t5, 0x1E1A($at)           ## 00011E1A
.L80A39BE8:
/* 048D8 80A39BE8 240F03B4 */  addiu   $t7, $zero, 0x03B4         ## $t7 = 000003B4
/* 048DC 80A39BEC A42F1E1A */  sh      $t7, 0x1E1A($at)           ## 00011E1A
.L80A39BF0:
/* 048E0 80A39BF0 8FA800DC */  lw      $t0, 0x00DC($sp)
/* 048E4 80A39BF4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 048E8 80A39BF8 24190026 */  addiu   $t9, $zero, 0x0026         ## $t9 = 00000026
/* 048EC 80A39BFC 00280821 */  addu    $at, $at, $t0
/* 048F0 80A39C00 A0391E5E */  sb      $t9, 0x1E5E($at)           ## 00011E5E
/* 048F4 80A39C04 8FAA00DC */  lw      $t2, 0x00DC($sp)
/* 048F8 80A39C08 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 048FC 80A39C0C 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 04900 80A39C10 002A0821 */  addu    $at, $at, $t2
/* 04904 80A39C14 A0291E15 */  sb      $t1, 0x1E15($at)           ## 00011E15
.L80A39C18:
/* 04908 80A39C18 8E8B02EC */  lw      $t3, 0x02EC($s4)           ## 000002EC
.L80A39C1C:
/* 0490C 80A39C1C 8FAD00DC */  lw      $t5, 0x00DC($sp)
/* 04910 80A39C20 15600004 */  bne     $t3, $zero, .L80A39C34
/* 04914 80A39C24 00000000 */  nop
/* 04918 80A39C28 868C0318 */  lh      $t4, 0x0318($s4)           ## 00000318
/* 0491C 80A39C2C 55800071 */  bnel    $t4, $zero, .L80A39DF4
/* 04920 80A39C30 8FAE00DC */  lw      $t6, 0x00DC($sp)
.L80A39C34:
/* 04924 80A39C34 0C024F46 */  jal     func_80093D18
/* 04928 80A39C38 8DA40000 */  lw      $a0, 0x0000($t5)           ## 000005F8
/* 0492C 80A39C3C 8E2302C0 */  lw      $v1, 0x02C0($s1)           ## 000002C0
/* 04930 80A39C40 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 04934 80A39C44 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 04938 80A39C48 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 0493C 80A39C4C AE2E02C0 */  sw      $t6, 0x02C0($s1)           ## 000002C0
/* 04940 80A39C50 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 04944 80A39C54 9298031A */  lbu     $t8, 0x031A($s4)           ## 0000031A
/* 04948 80A39C58 3C0480A4 */  lui     $a0, %hi(D_80A3A1C4)       ## $a0 = 80A40000
/* 0494C 80A39C5C 3C0C8016 */  lui     $t4, %hi(gSegments)
/* 04950 80A39C60 0018C880 */  sll     $t9, $t8,  2
/* 04954 80A39C64 00992021 */  addu    $a0, $a0, $t9
/* 04958 80A39C68 8C84A1C4 */  lw      $a0, %lo(D_80A3A1C4)($a0)
/* 0495C 80A39C6C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 04960 80A39C70 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 04964 80A39C74 00044900 */  sll     $t1, $a0,  4
/* 04968 80A39C78 00095702 */  srl     $t2, $t1, 28
/* 0496C 80A39C7C 000A5880 */  sll     $t3, $t2,  2
/* 04970 80A39C80 018B6021 */  addu    $t4, $t4, $t3
/* 04974 80A39C84 8D8C6FA8 */  lw      $t4, %lo(gSegments)($t4)
/* 04978 80A39C88 00814024 */  and     $t0, $a0, $at
/* 0497C 80A39C8C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 04980 80A39C90 010C6821 */  addu    $t5, $t0, $t4
/* 04984 80A39C94 01A17021 */  addu    $t6, $t5, $at
/* 04988 80A39C98 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 0498C 80A39C9C 9287018A */  lbu     $a3, 0x018A($s4)           ## 0000018A
/* 04990 80A39CA0 8E8601A8 */  lw      $a2, 0x01A8($s4)           ## 000001A8
/* 04994 80A39CA4 8E85018C */  lw      $a1, 0x018C($s4)           ## 0000018C
/* 04998 80A39CA8 3C1880A4 */  lui     $t8, %hi(func_80A39824)    ## $t8 = 80A40000
/* 0499C 80A39CAC 3C0F80A4 */  lui     $t7, %hi(func_80A39688)    ## $t7 = 80A40000
/* 049A0 80A39CB0 25EF9688 */  addiu   $t7, $t7, %lo(func_80A39688) ## $t7 = 80A39688
/* 049A4 80A39CB4 27189824 */  addiu   $t8, $t8, %lo(func_80A39824) ## $t8 = 80A39824
/* 049A8 80A39CB8 AFB80014 */  sw      $t8, 0x0014($sp)
/* 049AC 80A39CBC AFAF0010 */  sw      $t7, 0x0010($sp)
/* 049B0 80A39CC0 AFB40018 */  sw      $s4, 0x0018($sp)
/* 049B4 80A39CC4 0C0286B2 */  jal     SkelAnime_DrawSV
/* 049B8 80A39CC8 8FA400DC */  lw      $a0, 0x00DC($sp)
/* 049BC 80A39CCC 8E9902EC */  lw      $t9, 0x02EC($s4)           ## 000002EC
/* 049C0 80A39CD0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 049C4 80A39CD4 3C1180A4 */  lui     $s1, %hi(D_80A3A17C)       ## $s1 = 80A40000
/* 049C8 80A39CD8 17210020 */  bne     $t9, $at, .L80A39D5C
/* 049CC 80A39CDC 2631A17C */  addiu   $s1, $s1, %lo(D_80A3A17C)  ## $s1 = 80A3A17C
/* 049D0 80A39CE0 3C1380A4 */  lui     $s3, %hi(D_80A3A1A0)       ## $s3 = 80A40000
/* 049D4 80A39CE4 2673A1A0 */  addiu   $s3, $s3, %lo(D_80A3A1A0)  ## $s3 = 80A3A1A0
/* 049D8 80A39CE8 27B20090 */  addiu   $s2, $sp, 0x0090           ## $s2 = FFFFFFB8
/* 049DC 80A39CEC 27B0006C */  addiu   $s0, $sp, 0x006C           ## $s0 = FFFFFF94
.L80A39CF0:
/* 049E0 80A39CF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80A3A17C
/* 049E4 80A39CF4 0C0346BD */  jal     Matrix_MultVec3f
/* 049E8 80A39CF8 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFB8
/* 049EC 80A39CFC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 80A3A1A0
/* 049F0 80A39D00 0C0346BD */  jal     Matrix_MultVec3f
/* 049F4 80A39D04 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF94
/* 049F8 80A39D08 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFFA0
/* 049FC 80A39D0C 27A90090 */  addiu   $t1, $sp, 0x0090           ## $t1 = FFFFFFB8
/* 04A00 80A39D10 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 80A3A188
/* 04A04 80A39D14 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = FFFFFFC4
/* 04A08 80A39D18 1609FFF5 */  bne     $s0, $t1, .L80A39CF0
/* 04A0C 80A39D1C 2673000C */  addiu   $s3, $s3, 0x000C           ## $s3 = 80A3A1AC
/* 04A10 80A39D20 269003EC */  addiu   $s0, $s4, 0x03EC           ## $s0 = 000003EC
/* 04A14 80A39D24 27AA00A8 */  addiu   $t2, $sp, 0x00A8           ## $t2 = FFFFFFD0
/* 04A18 80A39D28 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 04A1C 80A39D2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000003EC
/* 04A20 80A39D30 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 04A24 80A39D34 27A60090 */  addiu   $a2, $sp, 0x0090           ## $a2 = FFFFFFB8
/* 04A28 80A39D38 0C0189E8 */  jal     func_800627A0
/* 04A2C 80A39D3C 27A7009C */  addiu   $a3, $sp, 0x009C           ## $a3 = FFFFFFC4
/* 04A30 80A39D40 27AB0084 */  addiu   $t3, $sp, 0x0084           ## $t3 = FFFFFFAC
/* 04A34 80A39D44 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 04A38 80A39D48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000003EC
/* 04A3C 80A39D4C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04A40 80A39D50 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFF94
/* 04A44 80A39D54 0C0189E8 */  jal     func_800627A0
/* 04A48 80A39D58 27A70078 */  addiu   $a3, $sp, 0x0078           ## $a3 = FFFFFFA0
.L80A39D5C:
/* 04A4C 80A39D5C 868802FC */  lh      $t0, 0x02FC($s4)           ## 000002FC
/* 04A50 80A39D60 51000024 */  beql    $t0, $zero, .L80A39DF4
/* 04A54 80A39D64 8FAE00DC */  lw      $t6, 0x00DC($sp)
/* 04A58 80A39D68 868E02FC */  lh      $t6, 0x02FC($s4)           ## 000002FC
/* 04A5C 80A39D6C 928C0114 */  lbu     $t4, 0x0114($s4)           ## 00000114
/* 04A60 80A39D70 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 04A64 80A39D74 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 04A68 80A39D78 A68F02FC */  sh      $t7, 0x02FC($s4)           ## 000002FC
/* 04A6C 80A39D7C 868302FC */  lh      $v1, 0x02FC($s4)           ## 000002FC
/* 04A70 80A39D80 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 04A74 80A39D84 A28D0114 */  sb      $t5, 0x0114($s4)           ## 00000114
/* 04A78 80A39D88 30780003 */  andi    $t8, $v1, 0x0003           ## $t8 = 00000000
/* 04A7C 80A39D8C 17000018 */  bne     $t8, $zero, .L80A39DF0
/* 04A80 80A39D90 00031083 */  sra     $v0, $v1,  2
/* 04A84 80A39D94 0002C880 */  sll     $t9, $v0,  2
/* 04A88 80A39D98 0322C823 */  subu    $t9, $t9, $v0
/* 04A8C 80A39D9C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 04A90 80A39DA0 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.50
/* 04A94 80A39DA4 0019C840 */  sll     $t9, $t9,  1
/* 04A98 80A39DA8 02993021 */  addu    $a2, $s4, $t9
/* 04A9C 80A39DAC 24090096 */  addiu   $t1, $zero, 0x0096         ## $t1 = 00000096
/* 04AA0 80A39DB0 240A0096 */  addiu   $t2, $zero, 0x0096         ## $t2 = 00000096
/* 04AA4 80A39DB4 240B00FA */  addiu   $t3, $zero, 0x00FA         ## $t3 = 000000FA
/* 04AA8 80A39DB8 240800EB */  addiu   $t0, $zero, 0x00EB         ## $t0 = 000000EB
/* 04AAC 80A39DBC 240C00F5 */  addiu   $t4, $zero, 0x00F5         ## $t4 = 000000F5
/* 04AB0 80A39DC0 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 04AB4 80A39DC4 AFAD0024 */  sw      $t5, 0x0024($sp)
/* 04AB8 80A39DC8 AFAC0020 */  sw      $t4, 0x0020($sp)
/* 04ABC 80A39DCC AFA8001C */  sw      $t0, 0x001C($sp)
/* 04AC0 80A39DD0 AFAB0018 */  sw      $t3, 0x0018($sp)
/* 04AC4 80A39DD4 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 04AC8 80A39DD8 AFA90010 */  sw      $t1, 0x0010($sp)
/* 04ACC 80A39DDC 24C6014C */  addiu   $a2, $a2, 0x014C           ## $a2 = 0000014C
/* 04AD0 80A39DE0 8FA400DC */  lw      $a0, 0x00DC($sp)
/* 04AD4 80A39DE4 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 04AD8 80A39DE8 0C00A877 */  jal     EffectSsEnIce_SpawnFlyingVec3s
/* 04ADC 80A39DEC E7A80028 */  swc1    $f8, 0x0028($sp)
.L80A39DF0:
/* 04AE0 80A39DF0 8FAE00DC */  lw      $t6, 0x00DC($sp)
.L80A39DF4:
/* 04AE4 80A39DF4 3C0680A4 */  lui     $a2, %hi(D_80A3A210)       ## $a2 = 80A40000
/* 04AE8 80A39DF8 24C6A210 */  addiu   $a2, $a2, %lo(D_80A3A210)  ## $a2 = 80A3A210
/* 04AEC 80A39DFC 27A400BC */  addiu   $a0, $sp, 0x00BC           ## $a0 = FFFFFFE4
/* 04AF0 80A39E00 24070AB8 */  addiu   $a3, $zero, 0x0AB8         ## $a3 = 00000AB8
/* 04AF4 80A39E04 0C031AD5 */  jal     Graph_CloseDisps
/* 04AF8 80A39E08 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 04AFC 80A39E0C 8FBF004C */  lw      $ra, 0x004C($sp)
/* 04B00 80A39E10 8FB00038 */  lw      $s0, 0x0038($sp)
/* 04B04 80A39E14 8FB1003C */  lw      $s1, 0x003C($sp)
/* 04B08 80A39E18 8FB20040 */  lw      $s2, 0x0040($sp)
/* 04B0C 80A39E1C 8FB30044 */  lw      $s3, 0x0044($sp)
/* 04B10 80A39E20 8FB40048 */  lw      $s4, 0x0048($sp)
/* 04B14 80A39E24 03E00008 */  jr      $ra
/* 04B18 80A39E28 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000
