glabel func_808486A8
/* 16498 808486A8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1649C 808486AC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 164A0 808486B0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 164A4 808486B4 90AE0002 */  lbu     $t6, 0x0002($a1)           ## 00000002
/* 164A8 808486B8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 164AC 808486BC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 164B0 808486C0 55C100CD */  bnel    $t6, $at, .L808489F8
/* 164B4 808486C4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 164B8 808486C8 A3A00027 */  sb      $zero, 0x0027($sp)
/* 164BC 808486CC 90AF0444 */  lbu     $t7, 0x0444($a1)           ## 00000444
/* 164C0 808486D0 51E00009 */  beql    $t7, $zero, .L808486F8
/* 164C4 808486D4 8CE2067C */  lw      $v0, 0x067C($a3)           ## 0000067C
/* 164C8 808486D8 0C030129 */  jal     Gameplay_GetCamera
/* 164CC 808486DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 164D0 808486E0 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 164D4 808486E4 0C016911 */  jal     Camera_ChangeMode
/* 164D8 808486E8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 164DC 808486EC 100000B2 */  beq     $zero, $zero, .L808489B8
/* 164E0 808486F0 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 164E4 808486F4 8CE2067C */  lw      $v0, 0x067C($a3)           ## 0000067C
.L808486F8:
/* 164E8 808486F8 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 164EC 808486FC 0002C2C0 */  sll     $t8, $v0, 11
/* 164F0 80848700 070200AC */  bltzl   $t8, .L808489B4
/* 164F4 80848704 A3AB0027 */  sb      $t3, 0x0027($sp)
/* 164F8 80848708 8CF90118 */  lw      $t9, 0x0118($a3)           ## 00000118
/* 164FC 8084870C 53200012 */  beql    $t9, $zero, .L80848758
/* 16500 80848710 8CE30674 */  lw      $v1, 0x0674($a3)           ## 00000674
/* 16504 80848714 90E80692 */  lbu     $t0, 0x0692($a3)           ## 00000692
/* 16508 80848718 24030009 */  addiu   $v1, $zero, 0x0009         ## $v1 = 00000009
/* 1650C 8084871C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 16510 80848720 31090080 */  andi    $t1, $t0, 0x0080           ## $t1 = 00000000
/* 16514 80848724 1120000B */  beq     $t1, $zero, .L80848754
/* 16518 80848728 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1651C 8084872C AFA30018 */  sw      $v1, 0x0018($sp)
/* 16520 80848730 0C030129 */  jal     Gameplay_GetCamera
/* 16524 80848734 AFA7002C */  sw      $a3, 0x002C($sp)
/* 16528 80848738 8FA7002C */  lw      $a3, 0x002C($sp)
/* 1652C 8084873C 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 16530 80848740 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 16534 80848744 0C016AA4 */  jal     Camera_SetParam
/* 16538 80848748 8CE60118 */  lw      $a2, 0x0118($a3)           ## 00000118
/* 1653C 8084874C 1000008D */  beq     $zero, $zero, .L80848984
/* 16540 80848750 8FA30018 */  lw      $v1, 0x0018($sp)
.L80848754:
/* 16544 80848754 8CE30674 */  lw      $v1, 0x0674($a3)           ## 00000674
.L80848758:
/* 16548 80848758 3C0A8084 */  lui     $t2, %hi(func_8084377C)    ## $t2 = 80840000
/* 1654C 8084875C 254A377C */  addiu   $t2, $t2, %lo(func_8084377C) ## $t2 = 8084377C
/* 16550 80848760 546A0004 */  bnel    $v1, $t2, .L80848774
/* 16554 80848764 8CEB0680 */  lw      $t3, 0x0680($a3)           ## 00000680
/* 16558 80848768 10000086 */  beq     $zero, $zero, .L80848984
/* 1655C 8084876C 24030012 */  addiu   $v1, $zero, 0x0012         ## $v1 = 00000012
/* 16560 80848770 8CEB0680 */  lw      $t3, 0x0680($a3)           ## 00000680
.L80848774:
/* 16564 80848774 316C0100 */  andi    $t4, $t3, 0x0100           ## $t4 = 00000000
/* 16568 80848778 51800004 */  beql    $t4, $zero, .L8084878C
/* 1656C 8084877C 8CE60664 */  lw      $a2, 0x0664($a3)           ## 00000664
/* 16570 80848780 10000080 */  beq     $zero, $zero, .L80848984
/* 16574 80848784 24030013 */  addiu   $v1, $zero, 0x0013         ## $v1 = 00000013
/* 16578 80848788 8CE60664 */  lw      $a2, 0x0664($a3)           ## 00000664
.L8084878C:
/* 1657C 8084878C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 16580 80848790 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 16584 80848794 10C0001B */  beq     $a2, $zero, .L80848804
/* 16588 80848798 30591000 */  andi    $t9, $v0, 0x1000           ## $t9 = 00000000
/* 1658C 8084879C 8CED0004 */  lw      $t5, 0x0004($a3)           ## 00000004
/* 16590 808487A0 24010100 */  addiu   $at, $zero, 0x0100         ## $at = 00000100
/* 16594 808487A4 00027BC0 */  sll     $t7, $v0, 15
/* 16598 808487A8 31AE0100 */  andi    $t6, $t5, 0x0100           ## $t6 = 00000000
/* 1659C 808487AC 15C10003 */  bne     $t6, $at, .L808487BC
/* 165A0 808487B0 00000000 */  nop
/* 165A4 808487B4 1000000A */  beq     $zero, $zero, .L808487E0
/* 165A8 808487B8 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
.L808487BC:
/* 165AC 808487BC 05E10008 */  bgez    $t7, .L808487E0
/* 165B0 808487C0 24030004 */  addiu   $v1, $zero, 0x0004         ## $v1 = 00000004
/* 165B4 808487C4 0002C180 */  sll     $t8, $v0,  6
/* 165B8 808487C8 07010003 */  bgez    $t8, .L808487D8
/* 165BC 808487CC 00000000 */  nop
/* 165C0 808487D0 10000003 */  beq     $zero, $zero, .L808487E0
/* 165C4 808487D4 24030014 */  addiu   $v1, $zero, 0x0014         ## $v1 = 00000014
.L808487D8:
/* 165C8 808487D8 10000001 */  beq     $zero, $zero, .L808487E0
/* 165CC 808487DC 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
.L808487E0:
/* 165D0 808487E0 AFA30018 */  sw      $v1, 0x0018($sp)
/* 165D4 808487E4 0C030129 */  jal     Gameplay_GetCamera
/* 165D8 808487E8 AFA6001C */  sw      $a2, 0x001C($sp)
/* 165DC 808487EC 8FA6001C */  lw      $a2, 0x001C($sp)
/* 165E0 808487F0 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 165E4 808487F4 0C016AA4 */  jal     Camera_SetParam
/* 165E8 808487F8 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 165EC 808487FC 10000061 */  beq     $zero, $zero, .L80848984
/* 165F0 80848800 8FA30018 */  lw      $v1, 0x0018($sp)
.L80848804:
/* 165F4 80848804 13200003 */  beq     $t9, $zero, .L80848814
/* 165F8 80848808 00024180 */  sll     $t0, $v0,  6
/* 165FC 8084880C 1000005D */  beq     $zero, $zero, .L80848984
/* 16600 80848810 24030011 */  addiu   $v1, $zero, 0x0011         ## $v1 = 00000011
.L80848814:
/* 16604 80848814 0501000E */  bgez    $t0, .L80848850
/* 16608 80848818 30496000 */  andi    $t1, $v0, 0x6000           ## $t1 = 00000000
/* 1660C 8084881C 24030014 */  addiu   $v1, $zero, 0x0014         ## $v1 = 00000014
/* 16610 80848820 AFA30018 */  sw      $v1, 0x0018($sp)
/* 16614 80848824 8FA40028 */  lw      $a0, 0x0028($sp)
/* 16618 80848828 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1661C 8084882C 0C030129 */  jal     Gameplay_GetCamera
/* 16620 80848830 AFA7002C */  sw      $a3, 0x002C($sp)
/* 16624 80848834 8FA7002C */  lw      $a3, 0x002C($sp)
/* 16628 80848838 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1662C 8084883C 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 16630 80848840 0C016AA4 */  jal     Camera_SetParam
/* 16634 80848844 8CE60688 */  lw      $a2, 0x0688($a3)           ## 00000688
/* 16638 80848848 1000004E */  beq     $zero, $zero, .L80848984
/* 1663C 8084884C 8FA30018 */  lw      $v1, 0x0018($sp)
.L80848850:
/* 16640 80848850 11200009 */  beq     $t1, $zero, .L80848878
/* 16644 80848854 3C014002 */  lui     $at, 0x4002                ## $at = 40020000
/* 16648 80848858 0C20CECB */  jal     func_80833B2C
/* 1664C 8084885C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 16650 80848860 10400003 */  beq     $v0, $zero, .L80848870
/* 16654 80848864 00000000 */  nop
/* 16658 80848868 10000046 */  beq     $zero, $zero, .L80848984
/* 1665C 8084886C 2403000F */  addiu   $v1, $zero, 0x000F         ## $v1 = 0000000F
.L80848870:
/* 16660 80848870 10000044 */  beq     $zero, $zero, .L80848984
/* 16664 80848874 2403000E */  addiu   $v1, $zero, 0x000E         ## $v1 = 0000000E
.L80848878:
/* 16668 80848878 00415024 */  and     $t2, $v0, $at
/* 1666C 8084887C 11400015 */  beq     $t2, $zero, .L808488D4
/* 16670 80848880 3C010024 */  lui     $at, 0x0024                ## $at = 00240000
/* 16674 80848884 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 16678 80848888 0C00B75E */  jal     func_8002DD78
/* 1667C 8084888C AFA7002C */  sw      $a3, 0x002C($sp)
/* 16680 80848890 14400006 */  bne     $v0, $zero, .L808488AC
/* 16684 80848894 8FA7002C */  lw      $a3, 0x002C($sp)
/* 16688 80848898 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 1668C 8084889C 0C20CD2D */  jal     func_808334B4
/* 16690 808488A0 AFA7002C */  sw      $a3, 0x002C($sp)
/* 16694 808488A4 10400003 */  beq     $v0, $zero, .L808488B4
/* 16698 808488A8 8FA7002C */  lw      $a3, 0x002C($sp)
.L808488AC:
/* 1669C 808488AC 10000035 */  beq     $zero, $zero, .L80848984
/* 166A0 808488B0 24030008 */  addiu   $v1, $zero, 0x0008         ## $v1 = 00000008
.L808488B4:
/* 166A4 808488B4 8CEB067C */  lw      $t3, 0x067C($a3)           ## 0000067C
/* 166A8 808488B8 000B6280 */  sll     $t4, $t3, 10
/* 166AC 808488BC 05810003 */  bgez    $t4, .L808488CC
/* 166B0 808488C0 00000000 */  nop
/* 166B4 808488C4 1000002F */  beq     $zero, $zero, .L80848984
/* 166B8 808488C8 2403000C */  addiu   $v1, $zero, 0x000C         ## $v1 = 0000000C
.L808488CC:
/* 166BC 808488CC 1000002D */  beq     $zero, $zero, .L80848984
/* 166C0 808488D0 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L808488D4:
/* 166C4 808488D4 00416824 */  and     $t5, $v0, $at
/* 166C8 808488D8 11A0000B */  beq     $t5, $zero, .L80848908
/* 166CC 808488DC 0002C300 */  sll     $t8, $v0, 12
/* 166D0 808488E0 3C0E8084 */  lui     $t6, %hi(func_80845668)    ## $t6 = 80840000
/* 166D4 808488E4 25CE5668 */  addiu   $t6, $t6, %lo(func_80845668) ## $t6 = 80845668
/* 166D8 808488E8 106E0003 */  beq     $v1, $t6, .L808488F8
/* 166DC 808488EC 00027A80 */  sll     $t7, $v0, 10
/* 166E0 808488F0 05E10003 */  bgez    $t7, .L80848900
/* 166E4 808488F4 00000000 */  nop
.L808488F8:
/* 166E8 808488F8 10000022 */  beq     $zero, $zero, .L80848984
/* 166EC 808488FC 24030005 */  addiu   $v1, $zero, 0x0005         ## $v1 = 00000005
.L80848900:
/* 166F0 80848900 10000020 */  beq     $zero, $zero, .L80848984
/* 166F4 80848904 2403000D */  addiu   $v1, $zero, 0x000D         ## $v1 = 0000000D
.L80848908:
/* 166F8 80848908 07030004 */  bgezl   $t8, .L8084891C
/* 166FC 8084890C 80F90843 */  lb      $t9, 0x0843($a3)           ## 00000843
/* 16700 80848910 1000001C */  beq     $zero, $zero, .L80848984
/* 16704 80848914 24030010 */  addiu   $v1, $zero, 0x0010         ## $v1 = 00000010
/* 16708 80848918 80F90843 */  lb      $t9, 0x0843($a3)           ## 00000843
.L8084891C:
/* 1670C 8084891C 53200009 */  beql    $t9, $zero, .L80848944
/* 16710 80848920 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 16714 80848924 80E30842 */  lb      $v1, 0x0842($a3)           ## 00000842
/* 16718 80848928 04600005 */  bltz    $v1, .L80848940
/* 1671C 8084892C 28610018 */  slti    $at, $v1, 0x0018
/* 16720 80848930 50200004 */  beql    $at, $zero, .L80848944
/* 16724 80848934 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 16728 80848938 10000012 */  beq     $zero, $zero, .L80848984
/* 1672C 8084893C 24030012 */  addiu   $v1, $zero, 0x0012         ## $v1 = 00000012
.L80848940:
/* 16730 80848940 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80848944:
/* 16734 80848944 C4E40838 */  lwc1    $f4, 0x0838($a3)           ## 00000838
/* 16738 80848948 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 1673C 8084894C 00024200 */  sll     $t0, $v0,  8
/* 16740 80848950 46040032 */  c.eq.s  $f0, $f4
/* 16744 80848954 00000000 */  nop
/* 16748 80848958 4502000B */  bc1fl   .L80848988
/* 1674C 8084895C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 16750 80848960 05010007 */  bgez    $t0, .L80848980
/* 16754 80848964 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 16758 80848968 8CE90440 */  lw      $t1, 0x0440($a3)           ## 00000440
/* 1675C 8084896C C5260068 */  lwc1    $f6, 0x0068($t1)           ## 00000068
/* 16760 80848970 46060032 */  c.eq.s  $f0, $f6
/* 16764 80848974 00000000 */  nop
/* 16768 80848978 45020003 */  bc1fl   .L80848988
/* 1676C 8084897C 8FA40028 */  lw      $a0, 0x0028($sp)
.L80848980:
/* 16770 80848980 A3AA0027 */  sb      $t2, 0x0027($sp)
.L80848984:
/* 16774 80848984 8FA40028 */  lw      $a0, 0x0028($sp)
.L80848988:
/* 16778 80848988 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1677C 8084898C 0C030129 */  jal     Gameplay_GetCamera
/* 16780 80848990 AFA30018 */  sw      $v1, 0x0018($sp)
/* 16784 80848994 8FA30018 */  lw      $v1, 0x0018($sp)
/* 16788 80848998 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1678C 8084899C 00032C00 */  sll     $a1, $v1, 16
/* 16790 808489A0 0C016911 */  jal     Camera_ChangeMode
/* 16794 808489A4 00052C03 */  sra     $a1, $a1, 16
/* 16798 808489A8 10000003 */  beq     $zero, $zero, .L808489B8
/* 1679C 808489AC 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 167A0 808489B0 A3AB0027 */  sb      $t3, 0x0027($sp)
.L808489B4:
/* 167A4 808489B4 8FAC0028 */  lw      $t4, 0x0028($sp)
.L808489B8:
/* 167A8 808489B8 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 167AC 808489BC 8D821D20 */  lw      $v0, 0x1D20($t4)           ## 00001D20
/* 167B0 808489C0 50400006 */  beql    $v0, $zero, .L808489DC
/* 167B4 808489C4 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 167B8 808489C8 A3AD0027 */  sb      $t5, 0x0027($sp)
/* 167BC 808489CC C440008C */  lwc1    $f0, 0x008C($v0)           ## 0000008C
/* 167C0 808489D0 0C03D845 */  jal     func_800F6114
/* 167C4 808489D4 46000304 */  sqrt.s  $f12, $f0
/* 167C8 808489D8 8FAE0028 */  lw      $t6, 0x0028($sp)
.L808489DC:
/* 167CC 808489DC 24010049 */  addiu   $at, $zero, 0x0049         ## $at = 00000049
/* 167D0 808489E0 85CF00A4 */  lh      $t7, 0x00A4($t6)           ## 000000A4
/* 167D4 808489E4 51E10004 */  beql    $t7, $at, .L808489F8
/* 167D8 808489E8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 167DC 808489EC 0C03D7A4 */  jal     func_800F5E90
/* 167E0 808489F0 93A40027 */  lbu     $a0, 0x0027($sp)
/* 167E4 808489F4 8FBF0014 */  lw      $ra, 0x0014($sp)
.L808489F8:
/* 167E8 808489F8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 167EC 808489FC 03E00008 */  jr      $ra
/* 167F0 80848A00 00000000 */  nop
