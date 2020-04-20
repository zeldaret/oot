.late_rodata
glabel jtbl_80A72A34
.word L80A71098
.word L80A710BC
.word L80A710BC
.word L80A7105C
.word L80A710BC
.word L80A710CC
.word L80A710BC
.word L80A71084
.word L80A710BC
.word L80A710CC
.word L80A710CC
.word L80A710CC
.word L80A710CC
.word L80A710BC
.word L80A710BC
.word L80A710BC
.word L80A710BC
.word L80A710BC
.word L80A710BC
.word L80A710BC
.word L80A710BC

.text
glabel func_80A70E34
/* 01884 80A70E34 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01888 80A70E38 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0188C 80A70E3C AFB00028 */  sw      $s0, 0x0028($sp)
/* 01890 80A70E40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01894 80A70E44 0C29BDE4 */  jal     func_80A6F790
/* 01898 80A70E48 AFA5003C */  sw      $a1, 0x003C($sp)
/* 0189C 80A70E4C 104000A5 */  beq     $v0, $zero, .L80A710E4
/* 018A0 80A70E50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018A4 80A70E54 0C29BDB0 */  jal     func_80A6F6C0
/* 018A8 80A70E58 8FA5003C */  lw      $a1, 0x003C($sp)
/* 018AC 80A70E5C 104000A1 */  beq     $v0, $zero, .L80A710E4
/* 018B0 80A70E60 8FA4003C */  lw      $a0, 0x003C($sp)
/* 018B4 80A70E64 820E0198 */  lb      $t6, 0x0198($s0)           ## 00000198
/* 018B8 80A70E68 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 018BC 80A70E6C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 018C0 80A70E70 A20E001E */  sb      $t6, 0x001E($s0)           ## 0000001E
/* 018C4 80A70E74 820F001E */  lb      $t7, 0x001E($s0)           ## 0000001E
/* 018C8 80A70E78 3C0D80A7 */  lui     $t5, %hi(D_80A722DE)       ## $t5 = 80A70000
/* 018CC 80A70E7C 3C0680A7 */  lui     $a2, %hi(D_80A72014)       ## $a2 = 80A70000
/* 018D0 80A70E80 000FC100 */  sll     $t8, $t7,  4
/* 018D4 80A70E84 030FC021 */  addu    $t8, $t8, $t7
/* 018D8 80A70E88 0018C080 */  sll     $t8, $t8,  2
/* 018DC 80A70E8C 0098C821 */  addu    $t9, $a0, $t8
/* 018E0 80A70E90 01194021 */  addu    $t0, $t0, $t9
/* 018E4 80A70E94 8D0817B4 */  lw      $t0, 0x17B4($t0)           ## 000117B4
/* 018E8 80A70E98 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 018EC 80A70E9C 261802D0 */  addiu   $t8, $s0, 0x02D0           ## $t8 = 000002D0
/* 018F0 80A70EA0 01014821 */  addu    $t1, $t0, $at
/* 018F4 80A70EA4 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 018F8 80A70EA8 AC296FC0 */  sw      $t1, %lo(gSegments+0x18)($at)
/* 018FC 80A70EAC 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 01900 80A70EB0 260F0270 */  addiu   $t7, $s0, 0x0270           ## $t7 = 00000270
/* 01904 80A70EB4 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 01908 80A70EB8 314B007F */  andi    $t3, $t2, 0x007F           ## $t3 = 00000000
/* 0190C 80A70EBC 000B6080 */  sll     $t4, $t3,  2
/* 01910 80A70EC0 018B6023 */  subu    $t4, $t4, $t3
/* 01914 80A70EC4 000C6080 */  sll     $t4, $t4,  2
/* 01918 80A70EC8 01AC6821 */  addu    $t5, $t5, $t4
/* 0191C 80A70ECC 91AD22DE */  lbu     $t5, %lo(D_80A722DE)($t5)
/* 01920 80A70ED0 AFA50034 */  sw      $a1, 0x0034($sp)
/* 01924 80A70ED4 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 01928 80A70ED8 000D70C0 */  sll     $t6, $t5,  3
/* 0192C 80A70EDC 00CE3021 */  addu    $a2, $a2, $t6
/* 01930 80A70EE0 8CC62014 */  lw      $a2, %lo(D_80A72014)($a2)
/* 01934 80A70EE4 AFB90018 */  sw      $t9, 0x0018($sp)
/* 01938 80A70EE8 AFB80014 */  sw      $t8, 0x0014($sp)
/* 0193C 80A70EEC 0C0291BE */  jal     SkelAnime_InitSV
/* 01940 80A70EF0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01944 80A70EF4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01948 80A70EF8 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 0194C 80A70EFC 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 01950 80A70F00 44050000 */  mfc1    $a1, $f0
/* 01954 80A70F04 44070000 */  mfc1    $a3, $f0
/* 01958 80A70F08 0C00AC78 */  jal     ActorShape_Init

/* 0195C 80A70F0C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 01960 80A70F10 82080199 */  lb      $t0, 0x0199($s0)           ## 00000199
/* 01964 80A70F14 8FA4003C */  lw      $a0, 0x003C($sp)
/* 01968 80A70F18 3C0B0001 */  lui     $t3, 0x0001                ## $t3 = 00010000
/* 0196C 80A70F1C 00084900 */  sll     $t1, $t0,  4
/* 01970 80A70F20 01284821 */  addu    $t1, $t1, $t0
/* 01974 80A70F24 00094880 */  sll     $t1, $t1,  2
/* 01978 80A70F28 00895021 */  addu    $t2, $a0, $t1
/* 0197C 80A70F2C 016A5821 */  addu    $t3, $t3, $t2
/* 01980 80A70F30 8D6B17B4 */  lw      $t3, 0x17B4($t3)           ## 000117B4
/* 01984 80A70F34 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01988 80A70F38 2605019C */  addiu   $a1, $s0, 0x019C           ## $a1 = 0000019C
/* 0198C 80A70F3C 01616021 */  addu    $t4, $t3, $at
/* 01990 80A70F40 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 01994 80A70F44 AC2C6FC0 */  sw      $t4, %lo(gSegments+0x18)($at)
/* 01998 80A70F48 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 0199C 80A70F4C AFA50030 */  sw      $a1, 0x0030($sp)
/* 019A0 80A70F50 3C0780A7 */  lui     $a3, %hi(D_80A71EC0)       ## $a3 = 80A70000
/* 019A4 80A70F54 8FA50030 */  lw      $a1, 0x0030($sp)
/* 019A8 80A70F58 24E71EC0 */  addiu   $a3, $a3, %lo(D_80A71EC0)  ## $a3 = 80A71EC0
/* 019AC 80A70F5C 8FA4003C */  lw      $a0, 0x003C($sp)
/* 019B0 80A70F60 0C01712B */  jal     ActorCollider_InitCylinder

/* 019B4 80A70F64 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 019B8 80A70F68 0C29C198 */  jal     func_80A70660
/* 019BC 80A70F6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 019C0 80A70F70 3C0680A7 */  lui     $a2, %hi(D_80A71EEC)       ## $a2 = 80A70000
/* 019C4 80A70F74 24C61EEC */  addiu   $a2, $a2, %lo(D_80A71EEC)  ## $a2 = 80A71EEC
/* 019C8 80A70F78 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 019CC 80A70F7C 0C0187BF */  jal     func_80061EFC
/* 019D0 80A70F80 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 019D4 80A70F84 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 019D8 80A70F88 3C0680A7 */  lui     $a2, %hi(D_80A722E3)       ## $a2 = 80A70000
/* 019DC 80A70F8C 3C0580A7 */  lui     $a1, %hi(D_80A72050)       ## $a1 = 80A70000
/* 019E0 80A70F90 31AE007F */  andi    $t6, $t5, 0x007F           ## $t6 = 00000000
/* 019E4 80A70F94 000E7880 */  sll     $t7, $t6,  2
/* 019E8 80A70F98 01EE7823 */  subu    $t7, $t7, $t6
/* 019EC 80A70F9C 000F7880 */  sll     $t7, $t7,  2
/* 019F0 80A70FA0 00CF3021 */  addu    $a2, $a2, $t7
/* 019F4 80A70FA4 90C622E3 */  lbu     $a2, %lo(D_80A722E3)($a2)
/* 019F8 80A70FA8 24A52050 */  addiu   $a1, $a1, %lo(D_80A72050)  ## $a1 = 80A72050
/* 019FC 80A70FAC 0C00D3B0 */  jal     func_80034EC0
/* 01A00 80A70FB0 8FA40034 */  lw      $a0, 0x0034($sp)
/* 01A04 80A70FB4 8FB8003C */  lw      $t8, 0x003C($sp)
/* 01A08 80A70FB8 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 01A0C 80A70FBC 3C0A8016 */  lui     $t2, %hi(gSaveContext+0xee0)
/* 01A10 80A70FC0 870200A4 */  lh      $v0, 0x00A4($t8)           ## 000000A4
/* 01A14 80A70FC4 10410003 */  beq     $v0, $at, .L80A70FD4
/* 01A18 80A70FC8 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 01A1C 80A70FCC 5441000A */  bnel    $v0, $at, .L80A70FF8
/* 01A20 80A70FD0 2401002A */  addiu   $at, $zero, 0x002A         ## $at = 0000002A
.L80A70FD4:
/* 01A24 80A70FD4 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 01A28 80A70FD8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01A2C 80A70FDC 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 01A30 80A70FE0 03214024 */  and     $t0, $t9, $at
/* 01A34 80A70FE4 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 01A38 80A70FE8 E60400F8 */  swc1    $f4, 0x00F8($s0)           ## 000000F8
/* 01A3C 80A70FEC 8FA9003C */  lw      $t1, 0x003C($sp)
/* 01A40 80A70FF0 852200A4 */  lh      $v0, 0x00A4($t1)           ## 000000A4
/* 01A44 80A70FF4 2401002A */  addiu   $at, $zero, 0x002A         ## $at = 0000002A
.L80A70FF8:
/* 01A48 80A70FF8 14410003 */  bne     $v0, $at, .L80A71008
/* 01A4C 80A70FFC 00000000 */  nop
/* 01A50 80A71000 954AF540 */  lhu     $t2, %lo(gSaveContext+0xee0)($t2)
/* 01A54 80A71004 A60A0330 */  sh      $t2, 0x0330($s0)           ## 00000330
.L80A71008:
/* 01A58 80A71008 0C29C1A6 */  jal     func_80A70698
/* 01A5C 80A7100C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A60 80A71010 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 01A64 80A71014 8FA4003C */  lw      $a0, 0x003C($sp)
/* 01A68 80A71018 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 01A6C 80A7101C 30A50780 */  andi    $a1, $a1, 0x0780           ## $a1 = 00000000
/* 01A70 80A71020 000529C3 */  sra     $a1, $a1,  7
/* 01A74 80A71024 00052C00 */  sll     $a1, $a1, 16
/* 01A78 80A71028 0C023938 */  jal     Path_GetByIndex
/* 01A7C 80A7102C 00052C03 */  sra     $a1, $a1, 16
/* 01A80 80A71030 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 01A84 80A71034 AE020210 */  sw      $v0, 0x0210($s0)           ## 00000210
/* 01A88 80A71038 316C007F */  andi    $t4, $t3, 0x007F           ## $t4 = 00000000
/* 01A8C 80A7103C 2D810015 */  sltiu   $at, $t4, 0x0015
/* 01A90 80A71040 10200026 */  beq     $at, $zero, .L80A710DC
/* 01A94 80A71044 000C6080 */  sll     $t4, $t4,  2
/* 01A98 80A71048 3C0180A7 */  lui     $at, %hi(jtbl_80A72A34)       ## $at = 80A70000
/* 01A9C 80A7104C 002C0821 */  addu    $at, $at, $t4
/* 01AA0 80A71050 8C2C2A34 */  lw      $t4, %lo(jtbl_80A72A34)($at)
/* 01AA4 80A71054 01800008 */  jr      $t4
/* 01AA8 80A71058 00000000 */  nop
glabel L80A7105C
/* 01AAC 80A7105C 8E0D0210 */  lw      $t5, 0x0210($s0)           ## 00000210
/* 01AB0 80A71060 3C0E80A7 */  lui     $t6, %hi(func_80A711B4)    ## $t6 = 80A70000
/* 01AB4 80A71064 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01AB8 80A71068 11A00004 */  beq     $t5, $zero, .L80A7107C
/* 01ABC 80A7106C 25CE11B4 */  addiu   $t6, $t6, %lo(func_80A711B4) ## $t6 = 80A711B4
/* 01AC0 80A71070 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 01AC4 80A71074 00000000 */  nop
/* 01AC8 80A71078 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80A7107C:
/* 01ACC 80A7107C 10000019 */  beq     $zero, $zero, .L80A710E4
/* 01AD0 80A71080 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
glabel L80A71084
/* 01AD4 80A71084 3C0F80A7 */  lui     $t7, %hi(func_80A712C0)    ## $t7 = 80A70000
/* 01AD8 80A71088 25EF12C0 */  addiu   $t7, $t7, %lo(func_80A712C0) ## $t7 = 80A712C0
/* 01ADC 80A7108C A2000195 */  sb      $zero, 0x0195($s0)         ## 00000195
/* 01AE0 80A71090 10000014 */  beq     $zero, $zero, .L80A710E4
/* 01AE4 80A71094 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
glabel L80A71098
/* 01AE8 80A71098 8FB8003C */  lw      $t8, 0x003C($sp)
/* 01AEC 80A7109C 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 01AF0 80A710A0 3C0880A7 */  lui     $t0, %hi(func_80A710F8)    ## $t0 = 80A70000
/* 01AF4 80A710A4 871900A4 */  lh      $t9, 0x00A4($t8)           ## 000000A4
/* 01AF8 80A710A8 250810F8 */  addiu   $t0, $t0, %lo(func_80A710F8) ## $t0 = 80A710F8
/* 01AFC 80A710AC 17210003 */  bne     $t9, $at, .L80A710BC
/* 01B00 80A710B0 00000000 */  nop
/* 01B04 80A710B4 1000000B */  beq     $zero, $zero, .L80A710E4
/* 01B08 80A710B8 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
glabel L80A710BC
.L80A710BC:
/* 01B0C 80A710BC 3C0980A7 */  lui     $t1, %hi(func_80A7127C)    ## $t1 = 80A70000
/* 01B10 80A710C0 2529127C */  addiu   $t1, $t1, %lo(func_80A7127C) ## $t1 = 80A7127C
/* 01B14 80A710C4 10000007 */  beq     $zero, $zero, .L80A710E4
/* 01B18 80A710C8 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
glabel L80A710CC
/* 01B1C 80A710CC 3C0A80A7 */  lui     $t2, %hi(func_80A712B4)    ## $t2 = 80A70000
/* 01B20 80A710D0 254A12B4 */  addiu   $t2, $t2, %lo(func_80A712B4) ## $t2 = 80A712B4
/* 01B24 80A710D4 10000003 */  beq     $zero, $zero, .L80A710E4
/* 01B28 80A710D8 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
.L80A710DC:
/* 01B2C 80A710DC 0C00B55C */  jal     Actor_Kill

/* 01B30 80A710E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A710E4:
/* 01B34 80A710E4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01B38 80A710E8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01B3C 80A710EC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01B40 80A710F0 03E00008 */  jr      $ra
/* 01B44 80A710F4 00000000 */  nop
