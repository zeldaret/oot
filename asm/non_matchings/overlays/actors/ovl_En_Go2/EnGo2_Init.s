.late_rodata
glabel jtbl_80A4872C
    .word L80A46594
    .word L80A46594
    .word L80A46594
    .word L80A46594
    .word L80A46594
    .word L80A46594
    .word L80A46594
    .word L80A46594
    .word L80A46594
    .word L80A46594
    .word L80A46594

glabel jtbl_80A48758
    .word L80A46810
    .word L80A46704
    .word L80A4689C
    .word L80A46860
    .word L80A468FC
    .word L80A46810
    .word L80A46940
    .word L80A46678
    .word L80A46678
    .word L80A46678
    .word L80A46678
    .word L80A46678
    .word L80A46940
    .word L80A466BC

glabel D_80A48790
    .float 0.6

glabel D_80A48794
    .float 0.6

.text
glabel EnGo2_Init
/* 0379C 80A464CC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 037A0 80A464D0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 037A4 80A464D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 037A8 80A464D8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 037AC 80A464DC AFA50044 */  sw      $a1, 0x0044($sp)
/* 037B0 80A464E0 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 037B4 80A464E4 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 037B8 80A464E8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 037BC 80A464EC 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 037C0 80A464F0 0C00AC78 */  jal     ActorShape_Init

/* 037C4 80A464F4 3C0741E0 */  lui     $a3, 0x41E0                ## $a3 = 41E00000
/* 037C8 80A464F8 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 037CC 80A464FC 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 037D0 80A46500 260E04B8 */  addiu   $t6, $s0, 0x04B8           ## $t6 = 000004B8
/* 037D4 80A46504 260F0524 */  addiu   $t7, $s0, 0x0524           ## $t7 = 00000524
/* 037D8 80A46508 24180012 */  addiu   $t8, $zero, 0x0012         ## $t8 = 00000012
/* 037DC 80A4650C AFB80018 */  sw      $t8, 0x0018($sp)
/* 037E0 80A46510 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 037E4 80A46514 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 037E8 80A46518 24C6FEF0 */  addiu   $a2, $a2, 0xFEF0           ## $a2 = 0600FEF0
/* 037EC 80A4651C AFA50034 */  sw      $a1, 0x0034($sp)
/* 037F0 80A46520 8FA40044 */  lw      $a0, 0x0044($sp)
/* 037F4 80A46524 0C0291BE */  jal     SkelAnime_InitSV
/* 037F8 80A46528 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 037FC 80A4652C 260501BC */  addiu   $a1, $s0, 0x01BC           ## $a1 = 000001BC
/* 03800 80A46530 AFA50030 */  sw      $a1, 0x0030($sp)
/* 03804 80A46534 0C0170D9 */  jal     Collider_InitCylinder

/* 03808 80A46538 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0380C 80A4653C 3C0780A5 */  lui     $a3, %hi(D_80A48114)       ## $a3 = 80A50000
/* 03810 80A46540 8FA50030 */  lw      $a1, 0x0030($sp)
/* 03814 80A46544 24E78114 */  addiu   $a3, $a3, %lo(D_80A48114)  ## $a3 = 80A48114
/* 03818 80A46548 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0381C 80A4654C 0C01712B */  jal     Collider_SetCylinder

/* 03820 80A46550 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 03824 80A46554 3C0680A5 */  lui     $a2, %hi(D_80A48140)       ## $a2 = 80A50000
/* 03828 80A46558 24C68140 */  addiu   $a2, $a2, %lo(D_80A48140)  ## $a2 = 80A48140
/* 0382C 80A4655C 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 03830 80A46560 0C0187BF */  jal     CollisionCheck_SetInfo2
/* 03834 80A46564 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03838 80A46568 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 0383C 80A4656C 3328001F */  andi    $t0, $t9, 0x001F           ## $t0 = 00000000
/* 03840 80A46570 2509FFFD */  addiu   $t1, $t0, 0xFFFD           ## $t1 = FFFFFFFD
/* 03844 80A46574 2D21000B */  sltiu   $at, $t1, 0x000B
/* 03848 80A46578 1020000D */  beq     $at, $zero, .L80A465B0
/* 0384C 80A4657C 00094880 */  sll     $t1, $t1,  2
/* 03850 80A46580 3C0180A5 */  lui     $at, %hi(jtbl_80A4872C)       ## $at = 80A50000
/* 03854 80A46584 00290821 */  addu    $at, $at, $t1
/* 03858 80A46588 8C29872C */  lw      $t1, %lo(jtbl_80A4872C)($at)
/* 0385C 80A4658C 01200008 */  jr      $t1
/* 03860 80A46590 00000000 */  nop
glabel L80A46594
/* 03864 80A46594 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 03868 80A46598 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 0386C 80A4659C 01415824 */  and     $t3, $t2, $at
/* 03870 80A465A0 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 03874 80A465A4 AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 03878 80A465A8 01616824 */  and     $t5, $t3, $at
/* 0387C 80A465AC AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
.L80A465B0:
/* 03880 80A465B0 0C291223 */  jal     func_80A4488C
/* 03884 80A465B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03888 80A465B8 0C291231 */  jal     func_80A448C4
/* 0388C 80A465BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03890 80A465C0 3C0580A5 */  lui     $a1, %hi(D_80A48348)       ## $a1 = 80A50000
/* 03894 80A465C4 24A58348 */  addiu   $a1, $a1, %lo(D_80A48348)  ## $a1 = 80A48348
/* 03898 80A465C8 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0389C 80A465CC 0C00D3B0 */  jal     func_80034EC0
/* 038A0 80A465D0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 038A4 80A465D4 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 038A8 80A465D8 300E00FF */  andi    $t6, $zero, 0x00FF         ## $t6 = 00000000
/* 038AC 80A465DC 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 038B0 80A465E0 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 038B4 80A465E4 A20000C8 */  sb      $zero, 0x00C8($s0)         ## 000000C8
/* 038B8 80A465E8 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 038BC 80A465EC 05C10005 */  bgez    $t6, .L80A46604
/* 038C0 80A465F0 46803220 */  cvt.s.w $f8, $f6
/* 038C4 80A465F4 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 038C8 80A465F8 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 038CC 80A465FC 00000000 */  nop
/* 038D0 80A46600 460A4200 */  add.s   $f8, $f8, $f10
.L80A46604:
/* 038D4 80A46604 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 038D8 80A46608 860F00B8 */  lh      $t7, 0x00B8($s0)           ## 000000B8
/* 038DC 80A4660C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 038E0 80A46610 30A503E0 */  andi    $a1, $a1, 0x03E0           ## $a1 = 00000000
/* 038E4 80A46614 00052943 */  sra     $a1, $a1,  5
/* 038E8 80A46618 E6080220 */  swc1    $f8, 0x0220($s0)           ## 00000220
/* 038EC 80A4661C A200020E */  sb      $zero, 0x020E($s0)         ## 0000020E
/* 038F0 80A46620 A200020F */  sb      $zero, 0x020F($s0)         ## 0000020F
/* 038F4 80A46624 A2000211 */  sb      $zero, 0x0211($s0)         ## 00000211
/* 038F8 80A46628 A2000212 */  sb      $zero, 0x0212($s0)         ## 00000212
/* 038FC 80A4662C A2000210 */  sb      $zero, 0x0210($s0)         ## 00000210
/* 03900 80A46630 A618026E */  sh      $t8, 0x026E($s0)           ## 0000026E
/* 03904 80A46634 00052C00 */  sll     $a1, $a1, 16
/* 03908 80A46638 A20F0216 */  sb      $t7, 0x0216($s0)           ## 00000216
/* 0390C 80A4663C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 03910 80A46640 00052C03 */  sra     $a1, $a1, 16
/* 03914 80A46644 0C023938 */  jal     Path_GetByIndex
/* 03918 80A46648 2406001F */  addiu   $a2, $zero, 0x001F         ## $a2 = 0000001F
/* 0391C 80A4664C 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 03920 80A46650 AE020208 */  sw      $v0, 0x0208($s0)           ## 00000208
/* 03924 80A46654 3066001F */  andi    $a2, $v1, 0x001F           ## $a2 = 00000000
/* 03928 80A46658 2CC1000E */  sltiu   $at, $a2, 0x000E
/* 0392C 80A4665C 102000B8 */  beq     $at, $zero, .L80A46940
/* 03930 80A46660 0006C880 */  sll     $t9, $a2,  2
/* 03934 80A46664 3C0180A5 */  lui     $at, %hi(jtbl_80A48758)       ## $at = 80A50000
/* 03938 80A46668 00390821 */  addu    $at, $at, $t9
/* 0393C 80A4666C 8C398758 */  lw      $t9, %lo(jtbl_80A48758)($at)
/* 03940 80A46670 03200008 */  jr      $t9
/* 03944 80A46674 00000000 */  nop
glabel L80A46678
/* 03948 80A46678 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 0394C 80A4667C 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 03950 80A46680 3C088012 */  lui     $t0, %hi(gBitFlags+4)
/* 03954 80A46684 8D087124 */  lw      $t0, %lo(gBitFlags+4)($t0)
/* 03958 80A46688 8C6900A4 */  lw      $t1, 0x00A4($v1)           ## 8015E704
/* 0395C 80A4668C 01095024 */  and     $t2, $t0, $t1
/* 03960 80A46690 15400006 */  bne     $t2, $zero, .L80A466AC
/* 03964 80A46694 00000000 */  nop
/* 03968 80A46698 8C6B0004 */  lw      $t3, 0x0004($v1)           ## 8015E664
/* 0396C 80A4669C 15600003 */  bne     $t3, $zero, .L80A466AC
/* 03970 80A466A0 00000000 */  nop
/* 03974 80A466A4 0C00B55C */  jal     Actor_Kill

/* 03978 80A466A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A466AC:
/* 0397C 80A466AC 3C0C80A4 */  lui     $t4, %hi(func_80A4696C)    ## $t4 = 80A40000
/* 03980 80A466B0 258C696C */  addiu   $t4, $t4, %lo(func_80A4696C) ## $t4 = 80A4696C
/* 03984 80A466B4 100000A5 */  beq     $zero, $zero, .L80A4694C
/* 03988 80A466B8 AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
glabel L80A466BC
/* 0398C 80A466BC 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 03990 80A466C0 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 03994 80A466C4 8C6D0004 */  lw      $t5, 0x0004($v1)           ## 8015E664
/* 03998 80A466C8 3C0E8012 */  lui     $t6, %hi(gBitFlags+0x4c)
/* 0399C 80A466CC 11A00006 */  beq     $t5, $zero, .L80A466E8
/* 039A0 80A466D0 00000000 */  nop
/* 039A4 80A466D4 8DCE716C */  lw      $t6, %lo(gBitFlags+0x4c)($t6)
/* 039A8 80A466D8 8C6F00A4 */  lw      $t7, 0x00A4($v1)           ## 8015E704
/* 039AC 80A466DC 01CFC024 */  and     $t8, $t6, $t7
/* 039B0 80A466E0 57000004 */  bnel    $t8, $zero, .L80A466F4
/* 039B4 80A466E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A466E8:
/* 039B8 80A466E8 0C00B55C */  jal     Actor_Kill

/* 039BC 80A466EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 039C0 80A466F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A466F4:
/* 039C4 80A466F4 0C291750 */  jal     func_80A45D40
/* 039C8 80A466F8 8FA50044 */  lw      $a1, 0x0044($sp)
/* 039CC 80A466FC 10000094 */  beq     $zero, $zero, .L80A46950
/* 039D0 80A46700 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80A46704
/* 039D4 80A46704 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 039D8 80A46708 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 039DC 80A4670C 94620F18 */  lhu     $v0, 0x0F18($v1)           ## 8015F578
/* 039E0 80A46710 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 039E4 80A46714 30590200 */  andi    $t9, $v0, 0x0200           ## $t9 = 00000000
/* 039E8 80A46718 53200024 */  beql    $t9, $zero, .L80A467AC
/* 039EC 80A4671C 3059EFFF */  andi    $t9, $v0, 0xEFFF           ## $t9 = 00000000
/* 039F0 80A46720 8E040208 */  lw      $a0, 0x0208($s0)           ## 00000208
/* 039F4 80A46724 0C023983 */  jal     Path_CopyLastPoint
/* 039F8 80A46728 AFA50030 */  sw      $a1, 0x0030($sp)
/* 039FC 80A4672C 8FA50030 */  lw      $a1, 0x0030($sp)
/* 03A00 80A46730 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 03A04 80A46734 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 03A08 80A46738 8CA90000 */  lw      $t1, 0x0000($a1)           ## 00000000
/* 03A0C 80A4673C 3C028012 */  lui     $v0, %hi(gBitFlags+4)
/* 03A10 80A46740 3C1880A4 */  lui     $t8, %hi(func_80A4696C)    ## $t8 = 80A40000
/* 03A14 80A46744 AE090008 */  sw      $t1, 0x0008($s0)           ## 00000008
/* 03A18 80A46748 8CA80004 */  lw      $t0, 0x0004($a1)           ## 00000004
/* 03A1C 80A4674C 3C0C8012 */  lui     $t4, %hi(gEquipShifts+2)
/* 03A20 80A46750 2718696C */  addiu   $t8, $t8, %lo(func_80A4696C) ## $t8 = 80A4696C
/* 03A24 80A46754 AE08000C */  sw      $t0, 0x000C($s0)           ## 0000000C
/* 03A28 80A46758 8CA90008 */  lw      $t1, 0x0008($a1)           ## 00000008
/* 03A2C 80A4675C AE090010 */  sw      $t1, 0x0010($s0)           ## 00000010
/* 03A30 80A46760 8C6A00A4 */  lw      $t2, 0x00A4($v1)           ## 8015E704
/* 03A34 80A46764 8C427124 */  lw      $v0, %lo(gBitFlags+4)($v0)
/* 03A38 80A46768 004A5824 */  and     $t3, $v0, $t2
/* 03A3C 80A4676C 1560000C */  bne     $t3, $zero, .L80A467A0
/* 03A40 80A46770 00000000 */  nop
/* 03A44 80A46774 918C71F2 */  lbu     $t4, %lo(gEquipShifts+2)($t4)
/* 03A48 80A46778 946E009C */  lhu     $t6, 0x009C($v1)           ## 8015E6FC
/* 03A4C 80A4677C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03A50 80A46780 01826804 */  sllv    $t5, $v0, $t4
/* 03A54 80A46784 01AE7824 */  and     $t7, $t5, $t6
/* 03A58 80A46788 11E00005 */  beq     $t7, $zero, .L80A467A0
/* 03A5C 80A4678C 00000000 */  nop
/* 03A60 80A46790 0C291750 */  jal     func_80A45D40
/* 03A64 80A46794 8FA50044 */  lw      $a1, 0x0044($sp)
/* 03A68 80A46798 1000006D */  beq     $zero, $zero, .L80A46950
/* 03A6C 80A4679C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A467A0:
/* 03A70 80A467A0 1000006A */  beq     $zero, $zero, .L80A4694C
/* 03A74 80A467A4 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
/* 03A78 80A467A8 3059EFFF */  andi    $t9, $v0, 0xEFFF           ## $t9 = 00000000
.L80A467AC:
/* 03A7C 80A467AC A4790F18 */  sh      $t9, 0x0F18($v1)           ## 00000F18
/* 03A80 80A467B0 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 03A84 80A467B4 3C0B80A5 */  lui     $t3, %hi(D_80A48174)       ## $t3 = 80A50000
/* 03A88 80A467B8 3C0180A5 */  lui     $at, %hi(D_80A48790)       ## $at = 80A50000
/* 03A8C 80A467BC 3109001F */  andi    $t1, $t0, 0x001F           ## $t1 = 00000000
/* 03A90 80A467C0 00095080 */  sll     $t2, $t1,  2
/* 03A94 80A467C4 01495021 */  addu    $t2, $t2, $t1
/* 03A98 80A467C8 000A5040 */  sll     $t2, $t2,  1
/* 03A9C 80A467CC 016A5821 */  addu    $t3, $t3, $t2
/* 03AA0 80A467D0 856B8174 */  lh      $t3, %lo(D_80A48174)($t3)
/* 03AA4 80A467D4 C4248790 */  lwc1    $f4, %lo(D_80A48790)($at)
/* 03AA8 80A467D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03AAC 80A467DC 448B8000 */  mtc1    $t3, $f16                  ## $f16 = -0.00
/* 03AB0 80A467E0 00000000 */  nop
/* 03AB4 80A467E4 468084A0 */  cvt.s.w $f18, $f16
/* 03AB8 80A467E8 46049182 */  mul.s   $f6, $f18, $f4
/* 03ABC 80A467EC 4600328D */  trunc.w.s $f10, $f6
/* 03AC0 80A467F0 440D5000 */  mfc1    $t5, $f10
/* 03AC4 80A467F4 00000000 */  nop
/* 03AC8 80A467F8 A60D01FE */  sh      $t5, 0x01FE($s0)           ## 000001FE
/* 03ACC 80A467FC 0C291769 */  jal     func_80A45DA4
/* 03AD0 80A46800 8FA50044 */  lw      $a1, 0x0044($sp)
/* 03AD4 80A46804 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 03AD8 80A46808 10000050 */  beq     $zero, $zero, .L80A4694C
/* 03ADC 80A4680C A20E020F */  sb      $t6, 0x020F($s0)           ## 0000020F
glabel L80A46810
/* 03AE0 80A46810 00067880 */  sll     $t7, $a2,  2
/* 03AE4 80A46814 01E67821 */  addu    $t7, $t7, $a2
/* 03AE8 80A46818 000F7840 */  sll     $t7, $t7,  1
/* 03AEC 80A4681C 3C1880A5 */  lui     $t8, %hi(D_80A48174)       ## $t8 = 80A50000
/* 03AF0 80A46820 030FC021 */  addu    $t8, $t8, $t7
/* 03AF4 80A46824 87188174 */  lh      $t8, %lo(D_80A48174)($t8)
/* 03AF8 80A46828 3C0180A5 */  lui     $at, %hi(D_80A48794)       ## $at = 80A50000
/* 03AFC 80A4682C C4328794 */  lwc1    $f18, %lo(D_80A48794)($at)
/* 03B00 80A46830 44984000 */  mtc1    $t8, $f8                   ## $f8 = -0.00
/* 03B04 80A46834 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03B08 80A46838 46804420 */  cvt.s.w $f16, $f8
/* 03B0C 80A4683C 46128102 */  mul.s   $f4, $f16, $f18
/* 03B10 80A46840 4600218D */  trunc.w.s $f6, $f4
/* 03B14 80A46844 44083000 */  mfc1    $t0, $f6
/* 03B18 80A46848 00000000 */  nop
/* 03B1C 80A4684C A60801FE */  sh      $t0, 0x01FE($s0)           ## 000001FE
/* 03B20 80A46850 0C291769 */  jal     func_80A45DA4
/* 03B24 80A46854 8FA50044 */  lw      $a1, 0x0044($sp)
/* 03B28 80A46858 1000003D */  beq     $zero, $zero, .L80A46950
/* 03B2C 80A4685C 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80A46860
/* 03B30 80A46860 3065FC00 */  andi    $a1, $v1, 0xFC00           ## $a1 = 00000000
/* 03B34 80A46864 00052A83 */  sra     $a1, $a1, 10
/* 03B38 80A46868 0C00B2D0 */  jal     Flags_GetSwitch

/* 03B3C 80A4686C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 03B40 80A46870 10400005 */  beq     $v0, $zero, .L80A46888
/* 03B44 80A46874 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 03B48 80A46878 0C00B55C */  jal     Actor_Kill

/* 03B4C 80A4687C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03B50 80A46880 10000033 */  beq     $zero, $zero, .L80A46950
/* 03B54 80A46884 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A46888:
/* 03B58 80A46888 3C0A80A4 */  lui     $t2, %hi(func_80A4696C)    ## $t2 = 80A40000
/* 03B5C 80A4688C 254A696C */  addiu   $t2, $t2, %lo(func_80A4696C) ## $t2 = 80A4696C
/* 03B60 80A46890 A209020F */  sb      $t1, 0x020F($s0)           ## 0000020F
/* 03B64 80A46894 1000002D */  beq     $zero, $zero, .L80A4694C
/* 03B68 80A46898 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
glabel L80A4689C
/* 03B6C 80A4689C 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 03B70 80A468A0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 03B74 80A468A4 AE0000C0 */  sw      $zero, 0x00C0($s0)         ## 000000C0
/* 03B78 80A468A8 01616024 */  and     $t4, $t3, $at
/* 03B7C 80A468AC AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 03B80 80A468B0 3C0D8012 */  lui     $t5, %hi(gItemSlots+0x2d)
/* 03B84 80A468B4 91AD7491 */  lbu     $t5, %lo(gItemSlots+0x2d)($t5)
/* 03B88 80A468B8 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 03B8C 80A468BC 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 03B90 80A468C0 006D7021 */  addu    $t6, $v1, $t5
/* 03B94 80A468C4 91C20074 */  lbu     $v0, 0x0074($t6)           ## 00000074
/* 03B98 80A468C8 3C1980A4 */  lui     $t9, %hi(func_80A4696C)    ## $t9 = 80A40000
/* 03B9C 80A468CC 2418000D */  addiu   $t8, $zero, 0x000D         ## $t8 = 0000000D
/* 03BA0 80A468D0 28410033 */  slti    $at, $v0, 0x0033
/* 03BA4 80A468D4 14200005 */  bne     $at, $zero, .L80A468EC
/* 03BA8 80A468D8 2739696C */  addiu   $t9, $t9, %lo(func_80A4696C) ## $t9 = 80A4696C
/* 03BAC 80A468DC 28410037 */  slti    $at, $v0, 0x0037
/* 03BB0 80A468E0 10200002 */  beq     $at, $zero, .L80A468EC
/* 03BB4 80A468E4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 03BB8 80A468E8 A20F0213 */  sb      $t7, 0x0213($s0)           ## 00000213
.L80A468EC:
/* 03BBC 80A468EC A20001CD */  sb      $zero, 0x01CD($s0)         ## 000001CD
/* 03BC0 80A468F0 A21801CE */  sb      $t8, 0x01CE($s0)           ## 000001CE
/* 03BC4 80A468F4 10000015 */  beq     $zero, $zero, .L80A4694C
/* 03BC8 80A468F8 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
glabel L80A468FC
/* 03BCC 80A468FC 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 03BD0 80A46900 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 03BD4 80A46904 94680F14 */  lhu     $t0, 0x0F14($v1)           ## 8015F574
/* 03BD8 80A46908 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 03BDC 80A4690C 31090800 */  andi    $t1, $t0, 0x0800           ## $t1 = 00000000
/* 03BE0 80A46910 1120000B */  beq     $t1, $zero, .L80A46940
/* 03BE4 80A46914 00000000 */  nop
/* 03BE8 80A46918 8E040208 */  lw      $a0, 0x0208($s0)           ## 00000208
/* 03BEC 80A4691C 0C023983 */  jal     Path_CopyLastPoint
/* 03BF0 80A46920 AFA50030 */  sw      $a1, 0x0030($sp)
/* 03BF4 80A46924 8FA50030 */  lw      $a1, 0x0030($sp)
/* 03BF8 80A46928 8CAB0000 */  lw      $t3, 0x0000($a1)           ## 00000000
/* 03BFC 80A4692C AE0B0008 */  sw      $t3, 0x0008($s0)           ## 00000008
/* 03C00 80A46930 8CAA0004 */  lw      $t2, 0x0004($a1)           ## 00000004
/* 03C04 80A46934 AE0A000C */  sw      $t2, 0x000C($s0)           ## 0000000C
/* 03C08 80A46938 8CAB0008 */  lw      $t3, 0x0008($a1)           ## 00000008
/* 03C0C 80A4693C AE0B0010 */  sw      $t3, 0x0010($s0)           ## 00000010
glabel L80A46940
.L80A46940:
/* 03C10 80A46940 3C0C80A4 */  lui     $t4, %hi(func_80A4696C)    ## $t4 = 80A40000
/* 03C14 80A46944 258C696C */  addiu   $t4, $t4, %lo(func_80A4696C) ## $t4 = 80A4696C
/* 03C18 80A46948 AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
.L80A4694C:
/* 03C1C 80A4694C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A46950:
/* 03C20 80A46950 8FB00028 */  lw      $s0, 0x0028($sp)
/* 03C24 80A46954 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 03C28 80A46958 03E00008 */  jr      $ra
/* 03C2C 80A4695C 00000000 */  nop
