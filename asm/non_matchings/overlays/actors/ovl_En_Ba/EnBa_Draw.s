glabel EnBa_Draw
/* 018D8 809B7C28 27BDFF40 */  addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
/* 018DC 809B7C2C AFB20048 */  sw      $s2, 0x0048($sp)
/* 018E0 809B7C30 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 018E4 809B7C34 AFBF005C */  sw      $ra, 0x005C($sp)
/* 018E8 809B7C38 AFB60058 */  sw      $s6, 0x0058($sp)
/* 018EC 809B7C3C AFB50054 */  sw      $s5, 0x0054($sp)
/* 018F0 809B7C40 AFB40050 */  sw      $s4, 0x0050($sp)
/* 018F4 809B7C44 AFB3004C */  sw      $s3, 0x004C($sp)
/* 018F8 809B7C48 AFB10044 */  sw      $s1, 0x0044($sp)
/* 018FC 809B7C4C AFB00040 */  sw      $s0, 0x0040($sp)
/* 01900 809B7C50 F7B40038 */  sdc1    $f20, 0x0038($sp)
/* 01904 809B7C54 AFA500C4 */  sw      $a1, 0x00C4($sp)
/* 01908 809B7C58 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 0190C 809B7C5C 0C031A73 */  jal     Graph_Alloc

/* 01910 809B7C60 24050380 */  addiu   $a1, $zero, 0x0380         ## $a1 = 00000380
/* 01914 809B7C64 3C18809C */  lui     $t8, %hi(D_809B8124)       ## $t8 = 809C0000
/* 01918 809B7C68 27188124 */  addiu   $t8, $t8, %lo(D_809B8124)  ## $t8 = 809B8124
/* 0191C 809B7C6C 8F090000 */  lw      $t1, 0x0000($t8)           ## 809B8124
/* 01920 809B7C70 27AF00A4 */  addiu   $t7, $sp, 0x00A4           ## $t7 = FFFFFFE4
/* 01924 809B7C74 8F190004 */  lw      $t9, 0x0004($t8)           ## 809B8128
/* 01928 809B7C78 ADE90000 */  sw      $t1, 0x0000($t7)           ## FFFFFFE4
/* 0192C 809B7C7C 8F090008 */  lw      $t1, 0x0008($t8)           ## 809B812C
/* 01930 809B7C80 ADF90004 */  sw      $t9, 0x0004($t7)           ## FFFFFFE8
/* 01934 809B7C84 3C06809C */  lui     $a2, %hi(D_809B8130)       ## $a2 = 809C0000
/* 01938 809B7C88 ADE90008 */  sw      $t1, 0x0008($t7)           ## FFFFFFEC
/* 0193C 809B7C8C 8FAA00C4 */  lw      $t2, 0x00C4($sp)
/* 01940 809B7C90 00409825 */  or      $s3, $v0, $zero            ## $s3 = 00000000
/* 01944 809B7C94 24C68130 */  addiu   $a2, $a2, %lo(D_809B8130)  ## $a2 = 809B8130
/* 01948 809B7C98 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 0194C 809B7C9C 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFFD0
/* 01950 809B7CA0 240703A5 */  addiu   $a3, $zero, 0x03A5         ## $a3 = 000003A5
/* 01954 809B7CA4 0C031AB1 */  jal     Graph_OpenDisps
/* 01958 809B7CA8 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 0195C 809B7CAC 8FAB00C4 */  lw      $t3, 0x00C4($sp)
/* 01960 809B7CB0 0C024F46 */  jal     func_80093D18
/* 01964 809B7CB4 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 01968 809B7CB8 864C001C */  lh      $t4, 0x001C($s2)           ## 0000001C
/* 0196C 809B7CBC 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 01970 809B7CC0 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 01974 809B7CC4 29810003 */  slti    $at, $t4, 0x0003
/* 01978 809B7CC8 10200096 */  beq     $at, $zero, .L809B7F24
/* 0197C 809B7CCC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01980 809B7CD0 0C034213 */  jal     Matrix_Push
/* 01984 809B7CD4 00000000 */  nop
/* 01988 809B7CD8 8EC202C0 */  lw      $v0, 0x02C0($s6)           ## 000002C0
/* 0198C 809B7CDC 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 01990 809B7CE0 35CE0030 */  ori     $t6, $t6, 0x0030           ## $t6 = DB060030
/* 01994 809B7CE4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01998 809B7CE8 AECD02C0 */  sw      $t5, 0x02C0($s6)           ## 000002C0
/* 0199C 809B7CEC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 019A0 809B7CF0 AC530004 */  sw      $s3, 0x0004($v0)           ## 00000004
/* 019A4 809B7CF4 8EC202C0 */  lw      $v0, 0x02C0($s6)           ## 000002C0
/* 019A8 809B7CF8 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 019AC 809B7CFC 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 019B0 809B7D00 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 019B4 809B7D04 AECF02C0 */  sw      $t7, 0x02C0($s6)           ## 000002C0
/* 019B8 809B7D08 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 019BC 809B7D0C 8659001C */  lh      $t9, 0x001C($s2)           ## 0000001C
/* 019C0 809B7D10 3C04809C */  lui     $a0, %hi(D_809B8118)       ## $a0 = 809C0000
/* 019C4 809B7D14 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 019C8 809B7D18 00194880 */  sll     $t1, $t9,  2
/* 019CC 809B7D1C 00892021 */  addu    $a0, $a0, $t1
/* 019D0 809B7D20 8C848118 */  lw      $a0, %lo(D_809B8118)($a0)
/* 019D4 809B7D24 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 019D8 809B7D28 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 019DC 809B7D2C 00045900 */  sll     $t3, $a0,  4
/* 019E0 809B7D30 000B6702 */  srl     $t4, $t3, 28
/* 019E4 809B7D34 000C6880 */  sll     $t5, $t4,  2
/* 019E8 809B7D38 01CD7021 */  addu    $t6, $t6, $t5
/* 019EC 809B7D3C 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 019F0 809B7D40 00815024 */  and     $t2, $a0, $at
/* 019F4 809B7D44 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 019F8 809B7D48 014E7821 */  addu    $t7, $t2, $t6
/* 019FC 809B7D4C 01E1C021 */  addu    $t8, $t7, $at
/* 01A00 809B7D50 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 01A04 809B7D54 8EC202C0 */  lw      $v0, 0x02C0($s6)           ## 000002C0
/* 01A08 809B7D58 8FA300C4 */  lw      $v1, 0x00C4($sp)
/* 01A0C 809B7D5C 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 01A10 809B7D60 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01A14 809B7D64 AED902C0 */  sw      $t9, 0x02C0($s6)           ## 000002C0
/* 01A18 809B7D68 35290024 */  ori     $t1, $t1, 0x0024           ## $t1 = DB060024
/* 01A1C 809B7D6C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 01A20 809B7D70 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 01A24 809B7D74 3C0A0001 */  lui     $t2, 0x0001                ## $t2 = 00010000
/* 01A28 809B7D78 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 01A2C 809B7D7C 240C0010 */  addiu   $t4, $zero, 0x0010         ## $t4 = 00000010
/* 01A30 809B7D80 240B0010 */  addiu   $t3, $zero, 0x0010         ## $t3 = 00000010
/* 01A34 809B7D84 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 01A38 809B7D88 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 01A3C 809B7D8C AFAD0018 */  sw      $t5, 0x0018($sp)
/* 01A40 809B7D90 AFA0001C */  sw      $zero, 0x001C($sp)
/* 01A44 809B7D94 01435021 */  addu    $t2, $t2, $v1
/* 01A48 809B7D98 8D4A1DE4 */  lw      $t2, 0x1DE4($t2)           ## 00011DE4
/* 01A4C 809B7D9C 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 01A50 809B7DA0 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 01A54 809B7DA4 000A0823 */  subu    $at, $zero, $t2
/* 01A58 809B7DA8 00017080 */  sll     $t6, $at,  2
/* 01A5C 809B7DAC 01C17021 */  addu    $t6, $t6, $at
/* 01A60 809B7DB0 000E7040 */  sll     $t6, $t6,  1
/* 01A64 809B7DB4 31CF007F */  andi    $t7, $t6, 0x007F           ## $t7 = 00000000
/* 01A68 809B7DB8 AFAF0020 */  sw      $t7, 0x0020($sp)
/* 01A6C 809B7DBC AFB80024 */  sw      $t8, 0x0024($sp)
/* 01A70 809B7DC0 AFB90028 */  sw      $t9, 0x0028($sp)
/* 01A74 809B7DC4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01A78 809B7DC8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01A7C 809B7DCC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01A80 809B7DD0 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 01A84 809B7DD4 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01A88 809B7DD8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01A8C 809B7DDC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 01A90 809B7DE0 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 01A94 809B7DE4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 01A98 809B7DE8 2415000D */  addiu   $s5, $zero, 0x000D         ## $s5 = 0000000D
/* 01A9C 809B7DEC 24140006 */  addiu   $s4, $zero, 0x0006         ## $s4 = 00000006
.L809B7DF0:
/* 01AA0 809B7DF0 00114880 */  sll     $t1, $s1,  2
/* 01AA4 809B7DF4 01314823 */  subu    $t1, $t1, $s1
/* 01AA8 809B7DF8 00094880 */  sll     $t1, $t1,  2
/* 01AAC 809B7DFC 02498021 */  addu    $s0, $s2, $t1
/* 01AB0 809B7E00 C60C0158 */  lwc1    $f12, 0x0158($s0)          ## 00000158
/* 01AB4 809B7E04 C60E015C */  lwc1    $f14, 0x015C($s0)          ## 0000015C
/* 01AB8 809B7E08 8E060160 */  lw      $a2, 0x0160($s0)           ## 00000160
/* 01ABC 809B7E0C 0C034261 */  jal     Matrix_Translate
/* 01AC0 809B7E10 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01AC4 809B7E14 02340019 */  multu   $s1, $s4
/* 01AC8 809B7E18 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01ACC 809B7E1C 00005812 */  mflo    $t3
/* 01AD0 809B7E20 024B1021 */  addu    $v0, $s2, $t3
/* 01AD4 809B7E24 844402A8 */  lh      $a0, 0x02A8($v0)           ## 000002A8
/* 01AD8 809B7E28 844502AA */  lh      $a1, 0x02AA($v0)           ## 000002AA
/* 01ADC 809B7E2C 0C034421 */  jal     Matrix_RotateZYX
/* 01AE0 809B7E30 844602AC */  lh      $a2, 0x02AC($v0)           ## 000002AC
/* 01AE4 809B7E34 C60C0200 */  lwc1    $f12, 0x0200($s0)          ## 00000200
/* 01AE8 809B7E38 C60E0204 */  lwc1    $f14, 0x0204($s0)          ## 00000204
/* 01AEC 809B7E3C 8E060208 */  lw      $a2, 0x0208($s0)           ## 00000208
/* 01AF0 809B7E40 0C0342A3 */  jal     Matrix_Scale
/* 01AF4 809B7E44 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01AF8 809B7E48 12340003 */  beq     $s1, $s4, .L809B7E58
/* 01AFC 809B7E4C 00000000 */  nop
/* 01B00 809B7E50 16350010 */  bne     $s1, $s5, .L809B7E94
/* 01B04 809B7E54 00000000 */  nop
.L809B7E58:
/* 01B08 809B7E58 16350006 */  bne     $s1, $s5, .L809B7E74
/* 01B0C 809B7E5C 26500320 */  addiu   $s0, $s2, 0x0320           ## $s0 = 00000320
/* 01B10 809B7E60 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01B14 809B7E64 0C018A29 */  jal     func_800628A4
/* 01B18 809B7E68 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000320
/* 01B1C 809B7E6C 10000009 */  beq     $zero, $zero, .L809B7E94
/* 01B20 809B7E70 00000000 */  nop
.L809B7E74:
/* 01B24 809B7E74 4600A306 */  mov.s   $f12, $f20
/* 01B28 809B7E78 4600A386 */  mov.s   $f14, $f20
/* 01B2C 809B7E7C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01B30 809B7E80 0C0342A3 */  jal     Matrix_Scale
/* 01B34 809B7E84 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01B38 809B7E88 24040008 */  addiu   $a0, $zero, 0x0008         ## $a0 = 00000008
/* 01B3C 809B7E8C 0C018A29 */  jal     func_800628A4
/* 01B40 809B7E90 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000320
.L809B7E94:
/* 01B44 809B7E94 3C05809C */  lui     $a1, %hi(D_809B8140)       ## $a1 = 809C0000
/* 01B48 809B7E98 24A58140 */  addiu   $a1, $a1, %lo(D_809B8140)  ## $a1 = 809B8140
/* 01B4C 809B7E9C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01B50 809B7EA0 0C034695 */  jal     Matrix_ToMtx
/* 01B54 809B7EA4 240603CA */  addiu   $a2, $zero, 0x03CA         ## $a2 = 000003CA
/* 01B58 809B7EA8 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 01B5C 809B7EAC 00118C00 */  sll     $s1, $s1, 16
/* 01B60 809B7EB0 00118C03 */  sra     $s1, $s1, 16
/* 01B64 809B7EB4 2A21000E */  slti    $at, $s1, 0x000E
/* 01B68 809B7EB8 1420FFCD */  bne     $at, $zero, .L809B7DF0
/* 01B6C 809B7EBC 26730040 */  addiu   $s3, $s3, 0x0040           ## $s3 = 00000040
/* 01B70 809B7EC0 0C034221 */  jal     Matrix_Pull
/* 01B74 809B7EC4 00000000 */  nop
/* 01B78 809B7EC8 8EC202C0 */  lw      $v0, 0x02C0($s6)           ## 000002C0
/* 01B7C 809B7ECC 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 01B80 809B7ED0 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 01B84 809B7ED4 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01B88 809B7ED8 AECC02C0 */  sw      $t4, 0x02C0($s6)           ## 000002C0
/* 01B8C 809B7EDC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01B90 809B7EE0 8FAA00C4 */  lw      $t2, 0x00C4($sp)
/* 01B94 809B7EE4 3C05809C */  lui     $a1, %hi(D_809B8150)       ## $a1 = 809C0000
/* 01B98 809B7EE8 24A58150 */  addiu   $a1, $a1, %lo(D_809B8150)  ## $a1 = 809B8150
/* 01B9C 809B7EEC 240603CD */  addiu   $a2, $zero, 0x03CD         ## $a2 = 000003CD
/* 01BA0 809B7EF0 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01BA4 809B7EF4 0C0346A2 */  jal     Matrix_NewMtx
/* 01BA8 809B7EF8 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 01BAC 809B7EFC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 01BB0 809B7F00 8EC202C0 */  lw      $v0, 0x02C0($s6)           ## 000002C0
/* 01BB4 809B7F04 3C180600 */  lui     $t8, 0x0600                ## $t8 = 06000000
/* 01BB8 809B7F08 27180890 */  addiu   $t8, $t8, 0x0890           ## $t8 = 06000890
/* 01BBC 809B7F0C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 01BC0 809B7F10 AECE02C0 */  sw      $t6, 0x02C0($s6)           ## 000002C0
/* 01BC4 809B7F14 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 01BC8 809B7F18 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01BCC 809B7F1C 1000003E */  beq     $zero, $zero, .L809B8018
/* 01BD0 809B7F20 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
.L809B7F24:
/* 01BD4 809B7F24 8EC202C0 */  lw      $v0, 0x02C0($s6)           ## 000002C0
/* 01BD8 809B7F28 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 01BDC 809B7F2C 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 01BE0 809B7F30 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01BE4 809B7F34 AED902C0 */  sw      $t9, 0x02C0($s6)           ## 000002C0
/* 01BE8 809B7F38 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 01BEC 809B7F3C 8FAB00C4 */  lw      $t3, 0x00C4($sp)
/* 01BF0 809B7F40 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 01BF4 809B7F44 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01BF8 809B7F48 006B1821 */  addu    $v1, $v1, $t3
/* 01BFC 809B7F4C 8C631DE4 */  lw      $v1, 0x1DE4($v1)           ## 00011DE4
/* 01C00 809B7F50 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 01C04 809B7F54 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 01C08 809B7F58 00030823 */  subu    $at, $zero, $v1
/* 01C0C 809B7F5C 00014080 */  sll     $t0, $at,  2
/* 01C10 809B7F60 01014021 */  addu    $t0, $t0, $at
/* 01C14 809B7F64 00033040 */  sll     $a2, $v1,  1
/* 01C18 809B7F68 30C6007F */  andi    $a2, $a2, 0x007F           ## $a2 = 00000000
/* 01C1C 809B7F6C 3108007F */  andi    $t0, $t0, 0x007F           ## $t0 = 00000000
/* 01C20 809B7F70 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 01C24 809B7F74 AFAF0028 */  sw      $t7, 0x0028($sp)
/* 01C28 809B7F78 AFA8001C */  sw      $t0, 0x001C($sp)
/* 01C2C 809B7F7C AFA80020 */  sw      $t0, 0x0020($sp)
/* 01C30 809B7F80 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 00000000
/* 01C34 809B7F84 AFAE0024 */  sw      $t6, 0x0024($sp)
/* 01C38 809B7F88 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 01C3C 809B7F8C AFAD0014 */  sw      $t5, 0x0014($sp)
/* 01C40 809B7F90 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 01C44 809B7F94 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 01C48 809B7F98 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01C4C 809B7F9C AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 01C50 809B7FA0 8EC202C0 */  lw      $v0, 0x02C0($s6)           ## 000002C0
/* 01C54 809B7FA4 3C09FF7D */  lui     $t1, 0xFF7D                ## $t1 = FF7D0000
/* 01C58 809B7FA8 352964FF */  ori     $t1, $t1, 0x64FF           ## $t1 = FF7D64FF
/* 01C5C 809B7FAC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01C60 809B7FB0 AED802C0 */  sw      $t8, 0x02C0($s6)           ## 000002C0
/* 01C64 809B7FB4 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 01C68 809B7FB8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01C6C 809B7FBC AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 01C70 809B7FC0 8EC202C0 */  lw      $v0, 0x02C0($s6)           ## 000002C0
/* 01C74 809B7FC4 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 01C78 809B7FC8 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 01C7C 809B7FCC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 01C80 809B7FD0 AECB02C0 */  sw      $t3, 0x02C0($s6)           ## 000002C0
/* 01C84 809B7FD4 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 01C88 809B7FD8 8FAD00C4 */  lw      $t5, 0x00C4($sp)
/* 01C8C 809B7FDC 3C05809C */  lui     $a1, %hi(D_809B8160)       ## $a1 = 809C0000
/* 01C90 809B7FE0 24A58160 */  addiu   $a1, $a1, %lo(D_809B8160)  ## $a1 = 809B8160
/* 01C94 809B7FE4 240603DF */  addiu   $a2, $zero, 0x03DF         ## $a2 = 000003DF
/* 01C98 809B7FE8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01C9C 809B7FEC 0C0346A2 */  jal     Matrix_NewMtx
/* 01CA0 809B7FF0 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 01CA4 809B7FF4 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 01CA8 809B7FF8 8EC202C0 */  lw      $v0, 0x02C0($s6)           ## 000002C0
/* 01CAC 809B7FFC 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 01CB0 809B8000 25EF1D80 */  addiu   $t7, $t7, 0x1D80           ## $t7 = 06001D80
/* 01CB4 809B8004 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 01CB8 809B8008 AECA02C0 */  sw      $t2, 0x02C0($s6)           ## 000002C0
/* 01CBC 809B800C 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 01CC0 809B8010 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01CC4 809B8014 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
.L809B8018:
/* 01CC8 809B8018 8FB800C4 */  lw      $t8, 0x00C4($sp)
/* 01CCC 809B801C 3C06809C */  lui     $a2, %hi(D_809B8170)       ## $a2 = 809C0000
/* 01CD0 809B8020 24C68170 */  addiu   $a2, $a2, %lo(D_809B8170)  ## $a2 = 809B8170
/* 01CD4 809B8024 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFFD0
/* 01CD8 809B8028 240703E3 */  addiu   $a3, $zero, 0x03E3         ## $a3 = 000003E3
/* 01CDC 809B802C 0C031AD5 */  jal     Graph_CloseDisps
/* 01CE0 809B8030 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 01CE4 809B8034 8FBF005C */  lw      $ra, 0x005C($sp)
/* 01CE8 809B8038 D7B40038 */  ldc1    $f20, 0x0038($sp)
/* 01CEC 809B803C 8FB00040 */  lw      $s0, 0x0040($sp)
/* 01CF0 809B8040 8FB10044 */  lw      $s1, 0x0044($sp)
/* 01CF4 809B8044 8FB20048 */  lw      $s2, 0x0048($sp)
/* 01CF8 809B8048 8FB3004C */  lw      $s3, 0x004C($sp)
/* 01CFC 809B804C 8FB40050 */  lw      $s4, 0x0050($sp)
/* 01D00 809B8050 8FB50054 */  lw      $s5, 0x0054($sp)
/* 01D04 809B8054 8FB60058 */  lw      $s6, 0x0058($sp)
/* 01D08 809B8058 03E00008 */  jr      $ra
/* 01D0C 809B805C 27BD00C0 */  addiu   $sp, $sp, 0x00C0           ## $sp = 00000000

