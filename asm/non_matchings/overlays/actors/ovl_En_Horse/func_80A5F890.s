.late_rodata
glabel D_80A668E0
 .word 0x46FFFE00
glabel D_80A668E4
 .word 0x46FFFE00
glabel D_80A668E8
 .word 0xC6FFFE00
glabel D_80A668EC
 .word 0x46FFFE00
glabel D_80A668F0
    .float 0.3

.text
glabel func_80A5F890
/* 045A0 80A5F890 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 045A4 80A5F894 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 045A8 80A5F898 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 045AC 80A5F89C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 045B0 80A5F8A0 AFB00020 */  sw      $s0, 0x0020($sp)
/* 045B4 80A5F8A4 AFA50044 */  sw      $a1, 0x0044($sp)
/* 045B8 80A5F8A8 A5C005BE */  sh      $zero, 0x05BE($t6)         ## 801605BE
/* 045BC 80A5F8AC 8FAF0044 */  lw      $t7, 0x0044($sp)
/* 045C0 80A5F8B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 045C4 80A5F8B4 0C00B6E3 */  jal     func_8002DB8C
/* 045C8 80A5F8B8 8DE51C44 */  lw      $a1, 0x1C44($t7)           ## 00001C44
/* 045CC 80A5F8BC E7A0003C */  swc1    $f0, 0x003C($sp)
/* 045D0 80A5F8C0 8E020370 */  lw      $v0, 0x0370($s0)           ## 00000370
/* 045D4 80A5F8C4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 045D8 80A5F8C8 10410002 */  beq     $v0, $at, .L80A5F8D4
/* 045DC 80A5F8CC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 045E0 80A5F8D0 1441005A */  bne     $v0, $at, .L80A5FA3C
.L80A5F8D4:
/* 045E4 80A5F8D4 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 045E8 80A5F8D8 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 045EC 80A5F8DC 00000000 */  nop
/* 045F0 80A5F8E0 4600203C */  c.lt.s  $f4, $f0
/* 045F4 80A5F8E4 00000000 */  nop
/* 045F8 80A5F8E8 45020055 */  bc1fl   .L80A5FA40
/* 045FC 80A5F8EC 8E0A01F0 */  lw      $t2, 0x01F0($s0)           ## 000001F0
/* 04600 80A5F8F0 8E0201F0 */  lw      $v0, 0x01F0($s0)           ## 000001F0
/* 04604 80A5F8F4 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 04608 80A5F8F8 30588000 */  andi    $t8, $v0, 0x8000           ## $t8 = 00000000
/* 0460C 80A5F8FC 1700004F */  bne     $t8, $zero, .L80A5FA3C
/* 04610 80A5F900 34488000 */  ori     $t0, $v0, 0x8000           ## $t0 = 00008000
/* 04614 80A5F904 AE190210 */  sw      $t9, 0x0210($s0)           ## 00000210
/* 04618 80A5F908 AE0801F0 */  sw      $t0, 0x01F0($s0)           ## 000001F0
/* 0461C 80A5F90C 8FA90044 */  lw      $t1, 0x0044($sp)
/* 04620 80A5F910 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04624 80A5F914 0C00B69E */  jal     func_8002DA78
/* 04628 80A5F918 8D251C44 */  lw      $a1, 0x1C44($t1)           ## 00001C44
/* 0462C 80A5F91C A6020376 */  sh      $v0, 0x0376($s0)           ## 00000376
/* 04630 80A5F920 860A0376 */  lh      $t2, 0x0376($s0)           ## 00000376
/* 04634 80A5F924 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
/* 04638 80A5F928 3C0180A6 */  lui     $at, %hi(D_80A668E0)       ## $at = 80A60000
/* 0463C 80A5F92C 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 04640 80A5F930 448B5000 */  mtc1    $t3, $f10                  ## $f10 = 0.00
/* 04644 80A5F934 C43268E0 */  lwc1    $f18, %lo(D_80A668E0)($at)
/* 04648 80A5F938 46803220 */  cvt.s.w $f8, $f6
/* 0464C 80A5F93C 3C0180A6 */  lui     $at, %hi(D_80A668E8)       ## $at = 80A60000
/* 04650 80A5F940 46805420 */  cvt.s.w $f16, $f10
/* 04654 80A5F944 46104001 */  sub.s   $f0, $f8, $f16
/* 04658 80A5F948 4600903C */  c.lt.s  $f18, $f0
/* 0465C 80A5F94C 00000000 */  nop
/* 04660 80A5F950 45000005 */  bc1f    .L80A5F968
/* 04664 80A5F954 00000000 */  nop
/* 04668 80A5F958 3C0180A6 */  lui     $at, %hi(D_80A668E4)       ## $at = 80A60000
/* 0466C 80A5F95C C42468E4 */  lwc1    $f4, %lo(D_80A668E4)($at)
/* 04670 80A5F960 10000009 */  beq     $zero, $zero, .L80A5F988
/* 04674 80A5F964 46040001 */  sub.s   $f0, $f0, $f4
.L80A5F968:
/* 04678 80A5F968 C42668E8 */  lwc1    $f6, %lo(D_80A668E8)($at)
/* 0467C 80A5F96C 3C0180A6 */  lui     $at, %hi(D_80A668EC)       ## $at = 80A60000
/* 04680 80A5F970 4606003C */  c.lt.s  $f0, $f6
/* 04684 80A5F974 00000000 */  nop
/* 04688 80A5F978 45020004 */  bc1fl   .L80A5F98C
/* 0468C 80A5F97C 8E0C0158 */  lw      $t4, 0x0158($s0)           ## 00000158
/* 04690 80A5F980 C42A68EC */  lwc1    $f10, %lo(D_80A668EC)($at)
/* 04694 80A5F984 460A0000 */  add.s   $f0, $f0, $f10
.L80A5F988:
/* 04698 80A5F988 8E0C0158 */  lw      $t4, 0x0158($s0)           ## 00000158
.L80A5F98C:
/* 0469C 80A5F98C 3C0E80A6 */  lui     $t6, %hi(D_80A65E58)       ## $t6 = 80A60000
/* 046A0 80A5F990 8E0F0210 */  lw      $t7, 0x0210($s0)           ## 00000210
/* 046A4 80A5F994 000C6880 */  sll     $t5, $t4,  2
/* 046A8 80A5F998 01CD7021 */  addu    $t6, $t6, $t5
/* 046AC 80A5F99C 8DCE5E58 */  lw      $t6, %lo(D_80A65E58)($t6)
/* 046B0 80A5F9A0 000FC080 */  sll     $t8, $t7,  2
/* 046B4 80A5F9A4 01D8C821 */  addu    $t9, $t6, $t8
/* 046B8 80A5F9A8 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 046BC 80A5F9AC 0C028800 */  jal     SkelAnime_GetLastFrame

/* 046C0 80A5F9B0 E7A00038 */  swc1    $f0, 0x0038($sp)
/* 046C4 80A5F9B4 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 046C8 80A5F9B8 C7A00038 */  lwc1    $f0, 0x0038($sp)
/* 046CC 80A5F9BC 8E0A0158 */  lw      $t2, 0x0158($s0)           ## 00000158
/* 046D0 80A5F9C0 46804420 */  cvt.s.w $f16, $f8
/* 046D4 80A5F9C4 3C0C80A6 */  lui     $t4, %hi(D_80A65E58)       ## $t4 = 80A60000
/* 046D8 80A5F9C8 000A5880 */  sll     $t3, $t2,  2
/* 046DC 80A5F9CC 8E0D0210 */  lw      $t5, 0x0210($s0)           ## 00000210
/* 046E0 80A5F9D0 018B6021 */  addu    $t4, $t4, $t3
/* 046E4 80A5F9D4 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 046E8 80A5F9D8 46100483 */  div.s   $f18, $f0, $f16
/* 046EC 80A5F9DC 000D7880 */  sll     $t7, $t5,  2
/* 046F0 80A5F9E0 4600910D */  trunc.w.s $f4, $f18
/* 046F4 80A5F9E4 44092000 */  mfc1    $t1, $f4
/* 046F8 80A5F9E8 00000000 */  nop
/* 046FC 80A5F9EC A6090378 */  sh      $t1, 0x0378($s0)           ## 00000378
/* 04700 80A5F9F0 8D8C5E58 */  lw      $t4, %lo(D_80A65E58)($t4)
/* 04704 80A5F9F4 018F7021 */  addu    $t6, $t4, $t7
/* 04708 80A5F9F8 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 0470C 80A5F9FC 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 04710 80A5FA00 AFA40030 */  sw      $a0, 0x0030($sp)
/* 04714 80A5FA04 8E090228 */  lw      $t1, 0x0228($s0)           ## 00000228
/* 04718 80A5FA08 8E1801F0 */  lw      $t8, 0x01F0($s0)           ## 000001F0
/* 0471C 80A5FA0C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04720 80A5FA10 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 04724 80A5FA14 AE09021C */  sw      $t1, 0x021C($s0)           ## 0000021C
/* 04728 80A5FA18 8E090230 */  lw      $t1, 0x0230($s0)           ## 00000230
/* 0472C 80A5FA1C 8E08022C */  lw      $t0, 0x022C($s0)           ## 0000022C
/* 04730 80A5FA20 2401F7FF */  addiu   $at, $zero, 0xF7FF         ## $at = FFFFF7FF
/* 04734 80A5FA24 0301C824 */  and     $t9, $t8, $at
/* 04738 80A5FA28 AE1901F0 */  sw      $t9, 0x01F0($s0)           ## 000001F0
/* 0473C 80A5FA2C E60601C8 */  swc1    $f6, 0x01C8($s0)           ## 000001C8
/* 04740 80A5FA30 AE090224 */  sw      $t1, 0x0224($s0)           ## 00000224
/* 04744 80A5FA34 10000027 */  beq     $zero, $zero, .L80A5FAD4
/* 04748 80A5FA38 AE080220 */  sw      $t0, 0x0220($s0)           ## 00000220
.L80A5FA3C:
/* 0474C 80A5FA3C 8E0A01F0 */  lw      $t2, 0x01F0($s0)           ## 000001F0
.L80A5FA40:
/* 04750 80A5FA40 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 04754 80A5FA44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04758 80A5FA48 314B8000 */  andi    $t3, $t2, 0x8000           ## $t3 = 00000000
/* 0475C 80A5FA4C 1160001D */  beq     $t3, $zero, .L80A5FAC4
/* 04760 80A5FA50 00000000 */  nop
/* 04764 80A5FA54 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 04768 80A5FA58 860C0378 */  lh      $t4, 0x0378($s0)           ## 00000378
/* 0476C 80A5FA5C 44815000 */  mtc1    $at, $f10                  ## $f10 = 25.00
/* 04770 80A5FA60 C6080214 */  lwc1    $f8, 0x0214($s0)           ## 00000214
/* 04774 80A5FA64 01AC7821 */  addu    $t7, $t5, $t4
/* 04778 80A5FA68 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 0477C 80A5FA6C 4608503C */  c.lt.s  $f10, $f8
/* 04780 80A5FA70 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 04784 80A5FA74 45000010 */  bc1f    .L80A5FAB8
/* 04788 80A5FA78 A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
/* 0478C 80A5FA7C 8E0201F0 */  lw      $v0, 0x01F0($s0)           ## 000001F0
/* 04790 80A5FA80 2404282B */  addiu   $a0, $zero, 0x282B         ## $a0 = 0000282B
/* 04794 80A5FA84 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 04798 80A5FA88 30580800 */  andi    $t8, $v0, 0x0800           ## $t8 = 00000000
/* 0479C 80A5FA8C 1700000A */  bne     $t8, $zero, .L80A5FAB8
/* 047A0 80A5FA90 34590800 */  ori     $t9, $v0, 0x0800           ## $t9 = 00000800
/* 047A4 80A5FA94 3C088013 */  lui     $t0, %hi(D_801333E0)
/* 047A8 80A5FA98 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 047AC 80A5FA9C AE1901F0 */  sw      $t9, 0x01F0($s0)           ## 000001F0
/* 047B0 80A5FAA0 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 047B4 80A5FAA4 250733E0 */  addiu   $a3, $t0, %lo(D_801333E0)
/* 047B8 80A5FAA8 AFA70010 */  sw      $a3, 0x0010($sp)
/* 047BC 80A5FAAC AFA90014 */  sw      $t1, 0x0014($sp)
/* 047C0 80A5FAB0 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 047C4 80A5FAB4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80A5FAB8:
/* 047C8 80A5FAB8 260A01AC */  addiu   $t2, $s0, 0x01AC           ## $t2 = 000001AC
/* 047CC 80A5FABC 10000005 */  beq     $zero, $zero, .L80A5FAD4
/* 047D0 80A5FAC0 AFAA0030 */  sw      $t2, 0x0030($sp)
.L80A5FAC4:
/* 047D4 80A5FAC4 0C297222 */  jal     func_80A5C888
/* 047D8 80A5FAC8 8FA50044 */  lw      $a1, 0x0044($sp)
/* 047DC 80A5FACC 260B01AC */  addiu   $t3, $s0, 0x01AC           ## $t3 = 000001AC
/* 047E0 80A5FAD0 AFAB0030 */  sw      $t3, 0x0030($sp)
.L80A5FAD4:
/* 047E4 80A5FAD4 8E020210 */  lw      $v0, 0x0210($s0)           ## 00000210
/* 047E8 80A5FAD8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 047EC 80A5FADC 14410008 */  bne     $v0, $at, .L80A5FB00
/* 047F0 80A5FAE0 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 047F4 80A5FAE4 44810000 */  mtc1    $at, $f0                   ## $f0 = 8.00
/* 047F8 80A5FAE8 3C0180A6 */  lui     $at, %hi(D_80A668F0)       ## $at = 80A60000
/* 047FC 80A5FAEC E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 04800 80A5FAF0 C43068F0 */  lwc1    $f16, %lo(D_80A668F0)($at)
/* 04804 80A5FAF4 46100482 */  mul.s   $f18, $f0, $f16
/* 04808 80A5FAF8 1000001D */  beq     $zero, $zero, .L80A5FB70
/* 0480C 80A5FAFC E61201C8 */  swc1    $f18, 0x01C8($s0)          ## 000001C8
.L80A5FB00:
/* 04810 80A5FB00 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 04814 80A5FB04 14410008 */  bne     $v0, $at, .L80A5FB28
/* 04818 80A5FB08 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 0481C 80A5FB0C 44810000 */  mtc1    $at, $f0                   ## $f0 = 6.00
/* 04820 80A5FB10 3C013EC0 */  lui     $at, 0x3EC0                ## $at = 3EC00000
/* 04824 80A5FB14 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.38
/* 04828 80A5FB18 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 0482C 80A5FB1C 46040182 */  mul.s   $f6, $f0, $f4
/* 04830 80A5FB20 10000013 */  beq     $zero, $zero, .L80A5FB70
/* 04834 80A5FB24 E60601C8 */  swc1    $f6, 0x01C8($s0)           ## 000001C8
.L80A5FB28:
/* 04838 80A5FB28 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0483C 80A5FB2C 1441000B */  bne     $v0, $at, .L80A5FB5C
/* 04840 80A5FB30 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 04844 80A5FB34 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 04848 80A5FB38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0484C 80A5FB3C 0C296E72 */  jal     func_80A5B9C8
/* 04850 80A5FB40 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 04854 80A5FB44 3C013F40 */  lui     $at, 0x3F40                ## $at = 3F400000
/* 04858 80A5FB48 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.75
/* 0485C 80A5FB4C C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 04860 80A5FB50 46104482 */  mul.s   $f18, $f8, $f16
/* 04864 80A5FB54 10000006 */  beq     $zero, $zero, .L80A5FB70
/* 04868 80A5FB58 E61201C8 */  swc1    $f18, 0x01C8($s0)          ## 000001C8
.L80A5FB5C:
/* 0486C 80A5FB5C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04870 80A5FB60 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 04874 80A5FB64 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 04878 80A5FB68 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 0487C 80A5FB6C E60601C8 */  swc1    $f6, 0x01C8($s0)           ## 000001C8
.L80A5FB70:
/* 04880 80A5FB70 8E0D01F0 */  lw      $t5, 0x01F0($s0)           ## 000001F0
/* 04884 80A5FB74 31AC8000 */  andi    $t4, $t5, 0x8000           ## $t4 = 00000000
/* 04888 80A5FB78 15800023 */  bne     $t4, $zero, .L80A5FC08
/* 0488C 80A5FB7C 00000000 */  nop
/* 04890 80A5FB80 860F0250 */  lh      $t7, 0x0250($s0)           ## 00000250
/* 04894 80A5FB84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04898 80A5FB88 2605021C */  addiu   $a1, $s0, 0x021C           ## $a1 = 0000021C
/* 0489C 80A5FB8C 25EE0001 */  addiu   $t6, $t7, 0x0001           ## $t6 = 00000001
/* 048A0 80A5FB90 A60E0250 */  sh      $t6, 0x0250($s0)           ## 00000250
/* 048A4 80A5FB94 86180250 */  lh      $t8, 0x0250($s0)           ## 00000250
/* 048A8 80A5FB98 26190228 */  addiu   $t9, $s0, 0x0228           ## $t9 = 00000228
/* 048AC 80A5FB9C 2B01012D */  slti    $at, $t8, 0x012D
/* 048B0 80A5FBA0 14200019 */  bne     $at, $zero, .L80A5FC08
/* 048B4 80A5FBA4 00000000 */  nop
/* 048B8 80A5FBA8 AFB9002C */  sw      $t9, 0x002C($sp)
/* 048BC 80A5FBAC 0C297CF7 */  jal     func_80A5F3DC
/* 048C0 80A5FBB0 AFA50034 */  sw      $a1, 0x0034($sp)
/* 048C4 80A5FBB4 8FA8002C */  lw      $t0, 0x002C($sp)
/* 048C8 80A5FBB8 8FA50034 */  lw      $a1, 0x0034($sp)
/* 048CC 80A5FBBC 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 048D0 80A5FBC0 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 00000000
/* 048D4 80A5FBC4 3C0C8013 */  lui     $t4, %hi(D_801333E8)
/* 048D8 80A5FBC8 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 048DC 80A5FBCC ACAA0000 */  sw      $t2, 0x0000($a1)           ## 00000000
/* 048E0 80A5FBD0 8D090004 */  lw      $t1, 0x0004($t0)           ## 00000004
/* 048E4 80A5FBD4 258C33E8 */  addiu   $t4, %lo(D_801333E8)
/* 048E8 80A5FBD8 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 048EC 80A5FBDC ACA90004 */  sw      $t1, 0x0004($a1)           ## 00000004
/* 048F0 80A5FBE0 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 00000008
/* 048F4 80A5FBE4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 048F8 80A5FBE8 ACAA0008 */  sw      $t2, 0x0008($a1)           ## 00000008
/* 048FC 80A5FBEC 8E0B01F0 */  lw      $t3, 0x01F0($s0)           ## 000001F0
/* 04900 80A5FBF0 000B6900 */  sll     $t5, $t3,  4
/* 04904 80A5FBF4 05A10004 */  bgez    $t5, .L80A5FC08
/* 04908 80A5FBF8 00000000 */  nop
/* 0490C 80A5FBFC AFA70010 */  sw      $a3, 0x0010($sp)
/* 04910 80A5FC00 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 04914 80A5FC04 AFAC0014 */  sw      $t4, 0x0014($sp)
.L80A5FC08:
/* 04918 80A5FC08 0C02927F */  jal     SkelAnime_Update

/* 0491C 80A5FC0C 8FA40030 */  lw      $a0, 0x0030($sp)
/* 04920 80A5FC10 50400022 */  beql    $v0, $zero, .L80A5FC9C
/* 04924 80A5FC14 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 04928 80A5FC18 8E020210 */  lw      $v0, 0x0210($s0)           ## 00000210
/* 0492C 80A5FC1C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 04930 80A5FC20 54410006 */  bnel    $v0, $at, .L80A5FC3C
/* 04934 80A5FC24 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 04938 80A5FC28 0C296EB3 */  jal     func_80A5BACC
/* 0493C 80A5FC2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04940 80A5FC30 10000007 */  beq     $zero, $zero, .L80A5FC50
/* 04944 80A5FC34 8E0F01F0 */  lw      $t7, 0x01F0($s0)           ## 000001F0
/* 04948 80A5FC38 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
.L80A5FC3C:
/* 0494C 80A5FC3C 54410004 */  bnel    $v0, $at, .L80A5FC50
/* 04950 80A5FC40 8E0F01F0 */  lw      $t7, 0x01F0($s0)           ## 000001F0
/* 04954 80A5FC44 0C296EA1 */  jal     func_80A5BA84
/* 04958 80A5FC48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0495C 80A5FC4C 8E0F01F0 */  lw      $t7, 0x01F0($s0)           ## 000001F0
.L80A5FC50:
/* 04960 80A5FC50 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 04964 80A5FC54 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 04968 80A5FC58 01E17024 */  and     $t6, $t7, $at
/* 0496C 80A5FC5C AE0E01F0 */  sw      $t6, 0x01F0($s0)           ## 000001F0
/* 04970 80A5FC60 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 04974 80A5FC64 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 04978 80A5FC68 C7AA003C */  lwc1    $f10, 0x003C($sp)
/* 0497C 80A5FC6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04980 80A5FC70 4608503C */  c.lt.s  $f10, $f8
/* 04984 80A5FC74 00000000 */  nop
/* 04988 80A5FC78 45000005 */  bc1f    .L80A5FC90
/* 0498C 80A5FC7C 00000000 */  nop
/* 04990 80A5FC80 0C297CF7 */  jal     func_80A5F3DC
/* 04994 80A5FC84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04998 80A5FC88 10000004 */  beq     $zero, $zero, .L80A5FC9C
/* 0499C 80A5FC8C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80A5FC90:
/* 049A0 80A5FC90 0C297DD8 */  jal     func_80A5F760
/* 049A4 80A5FC94 8FA50044 */  lw      $a1, 0x0044($sp)
/* 049A8 80A5FC98 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80A5FC9C:
/* 049AC 80A5FC9C 8FB00020 */  lw      $s0, 0x0020($sp)
/* 049B0 80A5FCA0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 049B4 80A5FCA4 03E00008 */  jr      $ra
/* 049B8 80A5FCA8 00000000 */  nop
