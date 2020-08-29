.rdata
glabel D_80915150
    .asciz "SW %d------------------------------------------------\n"
    .balign 4

.late_rodata
glabel D_80915414
    .float 0.03

.text
glabel func_80910DCC
/* 0078C 80910DCC 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 00790 80910DD0 AFBF0054 */  sw      $ra, 0x0054($sp)
/* 00794 80910DD4 AFB30050 */  sw      $s3, 0x0050($sp)
/* 00798 80910DD8 AFB2004C */  sw      $s2, 0x004C($sp)
/* 0079C 80910DDC AFB10048 */  sw      $s1, 0x0048($sp)
/* 007A0 80910DE0 AFB00044 */  sw      $s0, 0x0044($sp)
/* 007A4 80910DE4 F7B60038 */  sdc1    $f22, 0x0038($sp)
/* 007A8 80910DE8 F7B40030 */  sdc1    $f20, 0x0030($sp)
/* 007AC 80910DEC AFA500A4 */  sw      $a1, 0x00A4($sp)
/* 007B0 80910DF0 8C8E011C */  lw      $t6, 0x011C($a0)           ## 0000011C
/* 007B4 80910DF4 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 007B8 80910DF8 2491014C */  addiu   $s1, $a0, 0x014C           ## $s1 = 0000014C
/* 007BC 80910DFC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 007C0 80910E00 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 007C4 80910E04 AFAE0094 */  sw      $t6, 0x0094($sp)
/* 007C8 80910E08 8FA60094 */  lw      $a2, 0x0094($sp)
/* 007CC 80910E0C 3C048091 */  lui     $a0, %hi(D_80915150)       ## $a0 = 80910000
/* 007D0 80910E10 24845150 */  addiu   $a0, $a0, %lo(D_80915150)  ## $a0 = 80915150
/* 007D4 80910E14 8CD80024 */  lw      $t8, 0x0024($a2)           ## 00000024
/* 007D8 80910E18 AE780024 */  sw      $t8, 0x0024($s3)           ## 00000024
/* 007DC 80910E1C 8CCF0028 */  lw      $t7, 0x0028($a2)           ## 00000028
/* 007E0 80910E20 AE6F0028 */  sw      $t7, 0x0028($s3)           ## 00000028
/* 007E4 80910E24 8CD8002C */  lw      $t8, 0x002C($a2)           ## 0000002C
/* 007E8 80910E28 AE78002C */  sw      $t8, 0x002C($s3)           ## 0000002C
/* 007EC 80910E2C 84C30032 */  lh      $v1, 0x0032($a2)           ## 00000032
/* 007F0 80910E30 A6630032 */  sh      $v1, 0x0032($s3)           ## 00000032
/* 007F4 80910E34 A66300B6 */  sh      $v1, 0x00B6($s3)           ## 000000B6
/* 007F8 80910E38 0C00084C */  jal     osSyncPrintf

/* 007FC 80910E3C 90C5014C */  lbu     $a1, 0x014C($a2)           ## 0000014C
/* 00800 80910E40 866201BE */  lh      $v0, 0x01BE($s3)           ## 000001BE
/* 00804 80910E44 1040003B */  beq     $v0, $zero, .L80910F34
/* 00808 80910E48 28410019 */  slti    $at, $v0, 0x0019
/* 0080C 80910E4C 10200039 */  beq     $at, $zero, .L80910F34
/* 00810 80910E50 3C198091 */  lui     $t9, %hi(D_809150A0)       ## $t9 = 80910000
/* 00814 80910E54 273950A0 */  addiu   $t9, $t9, %lo(D_809150A0)  ## $t9 = 809150A0
/* 00818 80910E58 8F290000 */  lw      $t1, 0x0000($t9)           ## 809150A0
/* 0081C 80910E5C 27B0007C */  addiu   $s0, $sp, 0x007C           ## $s0 = FFFFFFDC
/* 00820 80910E60 3C0A8091 */  lui     $t2, %hi(D_809150AC)       ## $t2 = 80910000
/* 00824 80910E64 AE090000 */  sw      $t1, 0x0000($s0)           ## FFFFFFDC
/* 00828 80910E68 8F280004 */  lw      $t0, 0x0004($t9)           ## 809150A4
/* 0082C 80910E6C 254A50AC */  addiu   $t2, $t2, %lo(D_809150AC)  ## $t2 = 809150AC
/* 00830 80910E70 27B20070 */  addiu   $s2, $sp, 0x0070           ## $s2 = FFFFFFD0
/* 00834 80910E74 AE080004 */  sw      $t0, 0x0004($s0)           ## FFFFFFE0
/* 00838 80910E78 8F290008 */  lw      $t1, 0x0008($t9)           ## 809150A8
/* 0083C 80910E7C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00840 80910E80 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 00844 80910E84 AE090008 */  sw      $t1, 0x0008($s0)           ## FFFFFFE4
/* 00848 80910E88 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 809150AC
/* 0084C 80910E8C 4600A306 */  mov.s   $f12, $f20
/* 00850 80910E90 AE4C0000 */  sw      $t4, 0x0000($s2)           ## FFFFFFD0
/* 00854 80910E94 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 809150B0
/* 00858 80910E98 AE4B0004 */  sw      $t3, 0x0004($s2)           ## FFFFFFD4
/* 0085C 80910E9C 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 809150B4
/* 00860 80910EA0 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 00864 80910EA4 AE4C0008 */  sw      $t4, 0x0008($s2)           ## FFFFFFD8
/* 00868 80910EA8 C66402C0 */  lwc1    $f4, 0x02C0($s3)           ## 000002C0
/* 0086C 80910EAC 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 00870 80910EB0 44816000 */  mtc1    $at, $f12                  ## $f12 = -5.00
/* 00874 80910EB4 46040180 */  add.s   $f6, $f0, $f4
/* 00878 80910EB8 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 0087C 80910EBC E7A60088 */  swc1    $f6, 0x0088($sp)
/* 00880 80910EC0 C66802C4 */  lwc1    $f8, 0x02C4($s3)           ## 000002C4
/* 00884 80910EC4 4600A306 */  mov.s   $f12, $f20
/* 00888 80910EC8 46080280 */  add.s   $f10, $f0, $f8
/* 0088C 80910ECC 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 00890 80910ED0 E7AA008C */  swc1    $f10, 0x008C($sp)
/* 00894 80910ED4 C67002C8 */  lwc1    $f16, 0x02C8($s3)          ## 000002C8
/* 00898 80910ED8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0089C 80910EDC 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 008A0 80910EE0 46100480 */  add.s   $f18, $f0, $f16
/* 008A4 80910EE4 3C018091 */  lui     $at, %hi(D_80915414)       ## $at = 80910000
/* 008A8 80910EE8 C4285414 */  lwc1    $f8, %lo(D_80915414)($at)
/* 008AC 80910EEC 4600A306 */  mov.s   $f12, $f20
/* 008B0 80910EF0 46049180 */  add.s   $f6, $f18, $f4
/* 008B4 80910EF4 E7A80074 */  swc1    $f8, 0x0074($sp)
/* 008B8 80910EF8 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 008BC 80910EFC E7A60090 */  swc1    $f6, 0x0090($sp)
/* 008C0 80910F00 4600028D */  trunc.w.s $f10, $f0
/* 008C4 80910F04 8FA400A4 */  lw      $a0, 0x00A4($sp)
/* 008C8 80910F08 27A50088 */  addiu   $a1, $sp, 0x0088           ## $a1 = FFFFFFE8
/* 008CC 80910F0C 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFFDC
/* 008D0 80910F10 440E5000 */  mfc1    $t6, $f10
/* 008D4 80910F14 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFD0
/* 008D8 80910F18 AFA00014 */  sw      $zero, 0x0014($sp)
/* 008DC 80910F1C 000E7C00 */  sll     $t7, $t6, 16
/* 008E0 80910F20 000FC403 */  sra     $t8, $t7, 16
/* 008E4 80910F24 27190005 */  addiu   $t9, $t8, 0x0005           ## $t9 = 00000005
/* 008E8 80910F28 0C00A76F */  jal     func_80029DBC
/* 008EC 80910F2C AFB90010 */  sw      $t9, 0x0010($sp)
/* 008F0 80910F30 866201BE */  lh      $v0, 0x01BE($s3)           ## 000001BE
.L80910F34:
/* 008F4 80910F34 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 008F8 80910F38 54410004 */  bnel    $v0, $at, .L80910F4C
/* 008FC 80910F3C 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 00900 80910F40 A66001A8 */  sh      $zero, 0x01A8($s3)         ## 000001A8
/* 00904 80910F44 866201BE */  lh      $v0, 0x01BE($s3)           ## 000001BE
/* 00908 80910F48 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
.L80910F4C:
/* 0090C 80910F4C 14410004 */  bne     $v0, $at, .L80910F60
/* 00910 80910F50 3C048091 */  lui     $a0, %hi(D_80915094)       ## $a0 = 80910000
/* 00914 80910F54 24845094 */  addiu   $a0, $a0, %lo(D_80915094)  ## $a0 = 80915094
/* 00918 80910F58 0C01E245 */  jal     func_80078914
/* 0091C 80910F5C 240538A1 */  addiu   $a1, $zero, 0x38A1         ## $a1 = 000038A1
.L80910F60:
/* 00920 80910F60 8FA80094 */  lw      $t0, 0x0094($sp)
/* 00924 80910F64 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00928 80910F68 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 0092C 80910F6C 9103014C */  lbu     $v1, 0x014C($t0)           ## 0000014C
/* 00930 80910F70 26101144 */  addiu   $s0, $s0, 0x1144           ## $s0 = 06001144
/* 00934 80910F74 54610014 */  bnel    $v1, $at, .L80910FC8
/* 00938 80910F78 24120002 */  addiu   $s2, $zero, 0x0002         ## $s2 = 00000002
/* 0093C 80910F7C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00940 80910F80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06001144
/* 00944 80910F84 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 00948 80910F88 4480B000 */  mtc1    $zero, $f22                ## $f22 = 0.00
/* 0094C 80910F8C 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 00950 80910F90 468084A0 */  cvt.s.w $f18, $f16
/* 00954 80910F94 4407B000 */  mfc1    $a3, $f22
/* 00958 80910F98 AFA90014 */  sw      $t1, 0x0014($sp)
/* 0095C 80910F9C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 00960 80910FA0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06001144
/* 00964 80910FA4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00968 80910FA8 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 0096C 80910FAC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00970 80910FB0 E7B60018 */  swc1    $f22, 0x0018($sp)
/* 00974 80910FB4 240A0028 */  addiu   $t2, $zero, 0x0028         ## $t2 = 00000028
/* 00978 80910FB8 A66A01BE */  sh      $t2, 0x01BE($s3)           ## 000001BE
/* 0097C 80910FBC 8FAB0094 */  lw      $t3, 0x0094($sp)
/* 00980 80910FC0 9163014C */  lbu     $v1, 0x014C($t3)           ## 0000014C
/* 00984 80910FC4 24120002 */  addiu   $s2, $zero, 0x0002         ## $s2 = 00000002
.L80910FC8:
/* 00988 80910FC8 4480B000 */  mtc1    $zero, $f22                ## $f22 = 0.00
/* 0098C 80910FCC 16430007 */  bne     $s2, $v1, .L80910FEC
/* 00990 80910FD0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 00994 80910FD4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00998 80910FD8 24A52684 */  addiu   $a1, $a1, 0x2684           ## $a1 = 06002684
/* 0099C 80910FDC 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 009A0 80910FE0 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 009A4 80910FE4 8FAC0094 */  lw      $t4, 0x0094($sp)
/* 009A8 80910FE8 9183014C */  lbu     $v1, 0x014C($t4)           ## 0000014C
.L80910FEC:
/* 009AC 80910FEC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 009B0 80910FF0 14610007 */  bne     $v1, $at, .L80911010
/* 009B4 80910FF4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 009B8 80910FF8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 009BC 80910FFC 24A519A4 */  addiu   $a1, $a1, 0x19A4           ## $a1 = 060019A4
/* 009C0 80911000 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 009C4 80911004 3C06C150 */  lui     $a2, 0xC150                ## $a2 = C1500000
/* 009C8 80911008 8FAD0094 */  lw      $t5, 0x0094($sp)
/* 009CC 8091100C 91A3014C */  lbu     $v1, 0x014C($t5)           ## 0000014C
.L80911010:
/* 009D0 80911010 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 009D4 80911014 1461001A */  bne     $v1, $at, .L80911080
/* 009D8 80911018 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 009DC 8091101C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 009E0 80911020 24A5D99C */  addiu   $a1, $a1, 0xD99C           ## $a1 = 0600D99C
/* 009E4 80911024 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 009E8 80911028 3C06C0E0 */  lui     $a2, 0xC0E0                ## $a2 = C0E00000
/* 009EC 8091102C C6640200 */  lwc1    $f4, 0x0200($s3)           ## 00000200
/* 009F0 80911030 8E70011C */  lw      $s0, 0x011C($s3)           ## 0000011C
/* 009F4 80911034 8FA600A4 */  lw      $a2, 0x00A4($sp)
/* 009F8 80911038 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 009FC 8091103C C6660204 */  lwc1    $f6, 0x0204($s3)           ## 00000204
/* 00A00 80911040 240F0032 */  addiu   $t7, $zero, 0x0032         ## $t7 = 00000032
/* 00A04 80911044 24180026 */  addiu   $t8, $zero, 0x0026         ## $t8 = 00000026
/* 00A08 80911048 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 00A0C 8091104C C6680208 */  lwc1    $f8, 0x0208($s3)           ## 00000208
/* 00A10 80911050 AFB80028 */  sw      $t8, 0x0028($sp)
/* 00A14 80911054 AFA00024 */  sw      $zero, 0x0024($sp)
/* 00A18 80911058 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00A1C 8091105C AFAF001C */  sw      $t7, 0x001C($sp)
/* 00A20 80911060 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00A24 80911064 2407006D */  addiu   $a3, $zero, 0x006D         ## $a3 = 0000006D
/* 00A28 80911068 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00A2C 8091106C 0C00C916 */  jal     Actor_SpawnChild

/* 00A30 80911070 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00A34 80911074 AE70011C */  sw      $s0, 0x011C($s3)           ## 0000011C
/* 00A38 80911078 8FB90094 */  lw      $t9, 0x0094($sp)
/* 00A3C 8091107C 9323014C */  lbu     $v1, 0x014C($t9)           ## 0000014C
.L80911080:
/* 00A40 80911080 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00A44 80911084 14610005 */  bne     $v1, $at, .L8091109C
/* 00A48 80911088 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 00A4C 8091108C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00A50 80911090 24A5DF80 */  addiu   $a1, $a1, 0xDF80           ## $a1 = 0600DF80
/* 00A54 80911094 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00A58 80911098 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
.L8091109C:
/* 00A5C 8091109C 866201AA */  lh      $v0, 0x01AA($s3)           ## 000001AA
/* 00A60 809110A0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00A64 809110A4 50410006 */  beql    $v0, $at, .L809110C0
/* 00A68 809110A8 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00A6C 809110AC 10520011 */  beq     $v0, $s2, .L809110F4
/* 00A70 809110B0 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00A74 809110B4 1000001C */  beq     $zero, $zero, .L80911128
/* 00A78 809110B8 86640194 */  lh      $a0, 0x0194($s3)           ## 00000194
/* 00A7C 809110BC 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
.L809110C0:
/* 00A80 809110C0 44810000 */  mtc1    $at, $f0                   ## $f0 = 255.00
/* 00A84 809110C4 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00A88 809110C8 44818000 */  mtc1    $at, $f16                  ## $f16 = 40.00
/* 00A8C 809110CC C66A01E0 */  lwc1    $f10, 0x01E0($s3)          ## 000001E0
/* 00A90 809110D0 46105480 */  add.s   $f18, $f10, $f16
/* 00A94 809110D4 E67201E0 */  swc1    $f18, 0x01E0($s3)          ## 000001E0
/* 00A98 809110D8 C66401E0 */  lwc1    $f4, 0x01E0($s3)           ## 000001E0
/* 00A9C 809110DC 4604003E */  c.le.s  $f0, $f4
/* 00AA0 809110E0 00000000 */  nop
/* 00AA4 809110E4 45020010 */  bc1fl   .L80911128
/* 00AA8 809110E8 86640194 */  lh      $a0, 0x0194($s3)           ## 00000194
/* 00AAC 809110EC 1000000D */  beq     $zero, $zero, .L80911124
/* 00AB0 809110F0 E66001E0 */  swc1    $f0, 0x01E0($s3)           ## 000001E0
.L809110F4:
/* 00AB4 809110F4 44810000 */  mtc1    $at, $f0                   ## $f0 = 40.00
/* 00AB8 809110F8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00ABC 809110FC 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00AC0 80911100 C66601D4 */  lwc1    $f6, 0x01D4($s3)           ## 000001D4
/* 00AC4 80911104 46083280 */  add.s   $f10, $f6, $f8
/* 00AC8 80911108 E66A01D4 */  swc1    $f10, 0x01D4($s3)          ## 000001D4
/* 00ACC 8091110C C67001D4 */  lwc1    $f16, 0x01D4($s3)          ## 000001D4
/* 00AD0 80911110 4610003C */  c.lt.s  $f0, $f16
/* 00AD4 80911114 00000000 */  nop
/* 00AD8 80911118 45020003 */  bc1fl   .L80911128
/* 00ADC 8091111C 86640194 */  lh      $a0, 0x0194($s3)           ## 00000194
/* 00AE0 80911120 E66001D4 */  swc1    $f0, 0x01D4($s3)           ## 000001D4
.L80911124:
/* 00AE4 80911124 86640194 */  lh      $a0, 0x0194($s3)           ## 00000194
.L80911128:
/* 00AE8 80911128 00800821 */  addu    $at, $a0, $zero
/* 00AEC 8091112C 000420C0 */  sll     $a0, $a0,  3
/* 00AF0 80911130 00812023 */  subu    $a0, $a0, $at
/* 00AF4 80911134 000420C0 */  sll     $a0, $a0,  3
/* 00AF8 80911138 00812023 */  subu    $a0, $a0, $at
/* 00AFC 8091113C 00042080 */  sll     $a0, $a0,  2
/* 00B00 80911140 00812021 */  addu    $a0, $a0, $at
/* 00B04 80911144 000420C0 */  sll     $a0, $a0,  3
/* 00B08 80911148 00042400 */  sll     $a0, $a0, 16
/* 00B0C 8091114C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B10 80911150 00042403 */  sra     $a0, $a0, 16
/* 00B14 80911154 86640194 */  lh      $a0, 0x0194($s3)           ## 00000194
/* 00B18 80911158 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00B1C 8091115C 00800821 */  addu    $at, $a0, $zero
/* 00B20 80911160 000420C0 */  sll     $a0, $a0,  3
/* 00B24 80911164 00812021 */  addu    $a0, $a0, $at
/* 00B28 80911168 46120102 */  mul.s   $f4, $f0, $f18
/* 00B2C 8091116C 000420C0 */  sll     $a0, $a0,  3
/* 00B30 80911170 00812023 */  subu    $a0, $a0, $at
/* 00B34 80911174 000420C0 */  sll     $a0, $a0,  3
/* 00B38 80911178 00812023 */  subu    $a0, $a0, $at
/* 00B3C 8091117C 00042080 */  sll     $a0, $a0,  2
/* 00B40 80911180 00042400 */  sll     $a0, $a0, 16
/* 00B44 80911184 E66403D4 */  swc1    $f4, 0x03D4($s3)           ## 000003D4
/* 00B48 80911188 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00B4C 8091118C 00042403 */  sra     $a0, $a0, 16
/* 00B50 80911190 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00B54 80911194 44813000 */  mtc1    $at, $f6                   ## $f6 = 300.00
/* 00B58 80911198 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00B5C 8091119C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 100.00
/* 00B60 809111A0 46060202 */  mul.s   $f8, $f0, $f6
/* 00B64 809111A4 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00B68 809111A8 E66803D8 */  swc1    $f8, 0x03D8($s3)           ## 000003D8
.L809111AC:
/* 00B6C 809111AC 00109080 */  sll     $s2, $s0,  2
/* 00B70 809111B0 02509023 */  subu    $s2, $s2, $s0
/* 00B74 809111B4 001290C0 */  sll     $s2, $s2,  3
/* 00B78 809111B8 86680194 */  lh      $t0, 0x0194($s3)           ## 00000194
/* 00B7C 809111BC 02509021 */  addu    $s2, $s2, $s0
/* 00B80 809111C0 00129040 */  sll     $s2, $s2,  1
/* 00B84 809111C4 264907B0 */  addiu   $t1, $s2, 0x07B0           ## $t1 = 000007B2
/* 00B88 809111C8 01090019 */  multu   $t0, $t1
/* 00B8C 809111CC 00002012 */  mflo    $a0
/* 00B90 809111D0 00042400 */  sll     $a0, $a0, 16
/* 00B94 809111D4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B98 809111D8 00042403 */  sra     $a0, $a0, 16
/* 00B9C 809111DC 46140282 */  mul.s   $f10, $f0, $f20
/* 00BA0 809111E0 00105080 */  sll     $t2, $s0,  2
/* 00BA4 809111E4 026A8821 */  addu    $s1, $s3, $t2
/* 00BA8 809111E8 264C08DC */  addiu   $t4, $s2, 0x08DC           ## $t4 = 000008DE
/* 00BAC 809111EC E62A0454 */  swc1    $f10, 0x0454($s1)          ## 000005A0
/* 00BB0 809111F0 866B0194 */  lh      $t3, 0x0194($s3)           ## 00000194
/* 00BB4 809111F4 016C0019 */  multu   $t3, $t4
/* 00BB8 809111F8 00002012 */  mflo    $a0
/* 00BBC 809111FC 00042400 */  sll     $a0, $a0, 16
/* 00BC0 80911200 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00BC4 80911204 00042403 */  sra     $a0, $a0, 16
/* 00BC8 80911208 46140402 */  mul.s   $f16, $f0, $f20
/* 00BCC 8091120C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00BD0 80911210 00108400 */  sll     $s0, $s0, 16
/* 00BD4 80911214 00108403 */  sra     $s0, $s0, 16
/* 00BD8 80911218 2A01001E */  slti    $at, $s0, 0x001E
/* 00BDC 8091121C 1420FFE3 */  bne     $at, $zero, .L809111AC
/* 00BE0 80911220 E63003DC */  swc1    $f16, 0x03DC($s1)          ## 00000528
/* 00BE4 80911224 8FAD0094 */  lw      $t5, 0x0094($sp)
/* 00BE8 80911228 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00BEC 8091122C 91AE014C */  lbu     $t6, 0x014C($t5)           ## 0000014C
/* 00BF0 80911230 55C1000E */  bnel    $t6, $at, .L8091126C
/* 00BF4 80911234 8FB80094 */  lw      $t8, 0x0094($sp)
/* 00BF8 80911238 0C2444A5 */  jal     func_80911294
/* 00BFC 8091123C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00C00 80911240 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
.L80911244:
/* 00C04 80911244 00107880 */  sll     $t7, $s0,  2
/* 00C08 80911248 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00C0C 8091124C 00108400 */  sll     $s0, $s0, 16
/* 00C10 80911250 00108403 */  sra     $s0, $s0, 16
/* 00C14 80911254 2A01001E */  slti    $at, $s0, 0x001E
/* 00C18 80911258 026F8821 */  addu    $s1, $s3, $t7
/* 00C1C 8091125C E63603DC */  swc1    $f22, 0x03DC($s1)          ## 00000528
/* 00C20 80911260 1420FFF8 */  bne     $at, $zero, .L80911244
/* 00C24 80911264 E6360454 */  swc1    $f22, 0x0454($s1)          ## 000005A0
/* 00C28 80911268 8FB80094 */  lw      $t8, 0x0094($sp)
.L8091126C:
/* 00C2C 8091126C A300014C */  sb      $zero, 0x014C($t8)         ## 0000014C
/* 00C30 80911270 8FBF0054 */  lw      $ra, 0x0054($sp)
/* 00C34 80911274 8FB30050 */  lw      $s3, 0x0050($sp)
/* 00C38 80911278 8FB2004C */  lw      $s2, 0x004C($sp)
/* 00C3C 8091127C 8FB10048 */  lw      $s1, 0x0048($sp)
/* 00C40 80911280 8FB00044 */  lw      $s0, 0x0044($sp)
/* 00C44 80911284 D7B60038 */  ldc1    $f22, 0x0038($sp)
/* 00C48 80911288 D7B40030 */  ldc1    $f20, 0x0030($sp)
/* 00C4C 8091128C 03E00008 */  jr      $ra
/* 00C50 80911290 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
