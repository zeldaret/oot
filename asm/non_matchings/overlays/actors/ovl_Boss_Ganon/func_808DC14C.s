.late_rodata
glabel D_808F8000
    .float 1.99

.text
glabel func_808DC14C
/* 058DC 808DC14C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 058E0 808DC150 AFB00038 */  sw      $s0, 0x0038($sp)
/* 058E4 808DC154 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 058E8 808DC158 AFBF003C */  sw      $ra, 0x003C($sp)
/* 058EC 808DC15C 24840150 */  addiu   $a0, $a0, 0x0150           ## $a0 = 00000150
/* 058F0 808DC160 AFA50054 */  sw      $a1, 0x0054($sp)
/* 058F4 808DC164 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 058F8 808DC168 AFA40044 */  sw      $a0, 0x0044($sp)
/* 058FC 808DC16C 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 05900 808DC170 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 05904 808DC174 26040254 */  addiu   $a0, $s0, 0x0254           ## $a0 = 00000254
/* 05908 808DC178 0C01E123 */  jal     Math_SmoothDownscaleMaxF

/* 0590C 808DC17C 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 05910 808DC180 860201C2 */  lh      $v0, 0x01C2($s0)           ## 000001C2
/* 05914 808DC184 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 05918 808DC188 10400005 */  beq     $v0, $zero, .L808DC1A0
/* 0591C 808DC18C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 05920 808DC190 50410047 */  beql    $v0, $at, .L808DC2B0
/* 05924 808DC194 920D01C0 */  lbu     $t5, 0x01C0($s0)           ## 000001C0
/* 05928 808DC198 10000071 */  beq     $zero, $zero, .L808DC360
/* 0592C 808DC19C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
.L808DC1A0:
/* 05930 808DC1A0 A20E01A0 */  sb      $t6, 0x01A0($s0)           ## 000001A0
/* 05934 808DC1A4 8FA40044 */  lw      $a0, 0x0044($sp)
/* 05938 808DC1A8 0C0295B2 */  jal     func_800A56C8
/* 0593C 808DC1AC 8E0501CC */  lw      $a1, 0x01CC($s0)           ## 000001CC
/* 05940 808DC1B0 10400007 */  beq     $v0, $zero, .L808DC1D0
/* 05944 808DC1B4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 05948 808DC1B8 A60F01C2 */  sh      $t7, 0x01C2($s0)           ## 000001C2
/* 0594C 808DC1BC 3C050601 */  lui     $a1, %hi(D_06009A14)                ## $a1 = 06010000
/* 05950 808DC1C0 24A59A14 */  addiu   $a1, $a1, %lo(D_06009A14)           ## $a1 = 06009A14
/* 05954 808DC1C4 8FA40044 */  lw      $a0, 0x0044($sp)
/* 05958 808DC1C8 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 0595C 808DC1CC 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
.L808DC1D0:
/* 05960 808DC1D0 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 05964 808DC1D4 44810000 */  mtc1    $at, $f0                   ## $f0 = 12.00
/* 05968 808DC1D8 C6040168 */  lwc1    $f4, 0x0168($s0)           ## 00000168
/* 0596C 808DC1DC 3C088016 */  lui     $t0, %hi(D_8015FCF8)
/* 05970 808DC1E0 44050000 */  mfc1    $a1, $f0
/* 05974 808DC1E4 4600203E */  c.le.s  $f4, $f0
/* 05978 808DC1E8 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 0597C 808DC1EC 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 05980 808DC1F0 2508FCF8 */  addiu   $t0, %lo(D_8015FCF8)
/* 05984 808DC1F4 45000009 */  bc1f    .L808DC21C
/* 05988 808DC1F8 00000000 */  nop
/* 0598C 808DC1FC 8E0A0260 */  lw      $t2, 0x0260($s0)           ## 00000260
/* 05990 808DC200 A618066E */  sh      $t8, 0x066E($s0)           ## 0000066E
/* 05994 808DC204 A219066C */  sb      $t9, 0x066C($s0)           ## 0000066C
/* 05998 808DC208 AD0A0000 */  sw      $t2, 0x0000($t0)           ## 8015FCF8
/* 0599C 808DC20C 8E090264 */  lw      $t1, 0x0264($s0)           ## 00000264
/* 059A0 808DC210 AD090004 */  sw      $t1, 0x0004($t0)           ## 8015FCFC
/* 059A4 808DC214 8E0A0268 */  lw      $t2, 0x0268($s0)           ## 00000268
/* 059A8 808DC218 AD0A0008 */  sw      $t2, 0x0008($t0)           ## 8015FD00
.L808DC21C:
/* 059AC 808DC21C 0C0295B2 */  jal     func_800A56C8
/* 059B0 808DC220 8FA40044 */  lw      $a0, 0x0044($sp)
/* 059B4 808DC224 10400004 */  beq     $v0, $zero, .L808DC238
/* 059B8 808DC228 3C054130 */  lui     $a1, 0x4130                ## $a1 = 41300000
/* 059BC 808DC22C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 059C0 808DC230 00000000 */  nop
/* 059C4 808DC234 E6060254 */  swc1    $f6, 0x0254($s0)           ## 00000254
.L808DC238:
/* 059C8 808DC238 0C0295B2 */  jal     func_800A56C8
/* 059CC 808DC23C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 059D0 808DC240 10400046 */  beq     $v0, $zero, .L808DC35C
/* 059D4 808DC244 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 059D8 808DC248 A20B025C */  sb      $t3, 0x025C($s0)           ## 0000025C
/* 059DC 808DC24C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 059E0 808DC250 0C00BE0A */  jal     Audio_PlayActorSound2

/* 059E4 808DC254 240539C9 */  addiu   $a1, $zero, 0x39C9         ## $a1 = 000039C9
/* 059E8 808DC258 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 059EC 808DC25C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 059F0 808DC260 24053825 */  addiu   $a1, $zero, 0x3825         ## $a1 = 00003825
/* 059F4 808DC264 C6080260 */  lwc1    $f8, 0x0260($s0)           ## 00000260
/* 059F8 808DC268 8FA60054 */  lw      $a2, 0x0054($sp)
/* 059FC 808DC26C 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 05A00 808DC270 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 05A04 808DC274 C60A0264 */  lwc1    $f10, 0x0264($s0)          ## 00000264
/* 05A08 808DC278 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05A0C 808DC27C 240700E8 */  addiu   $a3, $zero, 0x00E8         ## $a3 = 000000E8
/* 05A10 808DC280 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 05A14 808DC284 C6100268 */  lwc1    $f16, 0x0268($s0)          ## 00000268
/* 05A18 808DC288 AFAC0028 */  sw      $t4, 0x0028($sp)
/* 05A1C 808DC28C AFA00024 */  sw      $zero, 0x0024($sp)
/* 05A20 808DC290 AFA00020 */  sw      $zero, 0x0020($sp)
/* 05A24 808DC294 AFA0001C */  sw      $zero, 0x001C($sp)
/* 05A28 808DC298 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 05A2C 808DC29C 0C00C916 */  jal     Actor_SpawnAsChild

/* 05A30 808DC2A0 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 05A34 808DC2A4 1000002E */  beq     $zero, $zero, .L808DC360
/* 05A38 808DC2A8 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 05A3C 808DC2AC 920D01C0 */  lbu     $t5, 0x01C0($s0)           ## 000001C0
.L808DC2B0:
/* 05A40 808DC2B0 51A0002B */  beql    $t5, $zero, .L808DC360
/* 05A44 808DC2B4 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 05A48 808DC2B8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 05A4C 808DC2BC 00000000 */  nop
/* 05A50 808DC2C0 3C018090 */  lui     $at, %hi(D_808F8000)       ## $at = 80900000
/* 05A54 808DC2C4 C4328000 */  lwc1    $f18, %lo(D_808F8000)($at)
/* 05A58 808DC2C8 3C04808E */  lui     $a0, %hi(D_808E4D38)       ## $a0 = 808E0000
/* 05A5C 808DC2CC 46120102 */  mul.s   $f4, $f0, $f18
/* 05A60 808DC2D0 4600218D */  trunc.w.s $f6, $f4
/* 05A64 808DC2D4 44023000 */  mfc1    $v0, $f6
/* 05A68 808DC2D8 00000000 */  nop
/* 05A6C 808DC2DC 00027C00 */  sll     $t7, $v0, 16
/* 05A70 808DC2E0 000FC403 */  sra     $t8, $t7, 16
/* 05A74 808DC2E4 0018C880 */  sll     $t9, $t8,  2
/* 05A78 808DC2E8 00992021 */  addu    $a0, $a0, $t9
/* 05A7C 808DC2EC 8C844D38 */  lw      $a0, %lo(D_808E4D38)($a0)
/* 05A80 808DC2F0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 05A84 808DC2F4 A7A2004E */  sh      $v0, 0x004E($sp)
/* 05A88 808DC2F8 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 05A8C 808DC2FC 3C05808E */  lui     $a1, %hi(D_808E4D38)       ## $a1 = 808E0000
/* 05A90 808DC300 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 05A94 808DC304 468042A0 */  cvt.s.w $f10, $f8
/* 05A98 808DC308 E60A01CC */  swc1    $f10, 0x01CC($s0)          ## 000001CC
/* 05A9C 808DC30C 87A8004E */  lh      $t0, 0x004E($sp)
/* 05AA0 808DC310 8FA40044 */  lw      $a0, 0x0044($sp)
/* 05AA4 808DC314 00084880 */  sll     $t1, $t0,  2
/* 05AA8 808DC318 00A92821 */  addu    $a1, $a1, $t1
/* 05AAC 808DC31C 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 05AB0 808DC320 8CA54D38 */  lw      $a1, %lo(D_808E4D38)($a1)
/* 05AB4 808DC324 87AA004E */  lh      $t2, 0x004E($sp)
/* 05AB8 808DC328 3C0C808E */  lui     $t4, %hi(D_808E4D40)       ## $t4 = 808E0000
/* 05ABC 808DC32C 3C0D8090 */  lui     $t5, %hi(D_808F93C0)       ## $t5 = 80900000
/* 05AC0 808DC330 000A5840 */  sll     $t3, $t2,  1
/* 05AC4 808DC334 018B6021 */  addu    $t4, $t4, $t3
/* 05AC8 808DC338 858C4D40 */  lh      $t4, %lo(D_808E4D40)($t4)
/* 05ACC 808DC33C 8DAD93C0 */  lw      $t5, %lo(D_808F93C0)($t5)
/* 05AD0 808DC340 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05AD4 808DC344 448C8000 */  mtc1    $t4, $f16                  ## $f16 = -0.00
/* 05AD8 808DC348 240528C7 */  addiu   $a1, $zero, 0x28C7         ## $a1 = 000028C7
/* 05ADC 808DC34C 468084A0 */  cvt.s.w $f18, $f16
/* 05AE0 808DC350 0C00BE0A */  jal     Audio_PlayActorSound2

/* 05AE4 808DC354 E5B216BC */  swc1    $f18, 0x16BC($t5)          ## 809016BC
/* 05AE8 808DC358 A20001C0 */  sb      $zero, 0x01C0($s0)         ## 000001C0
.L808DC35C:
/* 05AEC 808DC35C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
.L808DC360:
/* 05AF0 808DC360 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 05AF4 808DC364 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 05AF8 808DC368 0C01E1EF */  jal     Math_SmoothScaleMaxS

/* 05AFC 808DC36C 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 05B00 808DC370 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 05B04 808DC374 C606005C */  lwc1    $f6, 0x005C($s0)           ## 0000005C
/* 05B08 808DC378 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 05B0C 808DC37C C6100064 */  lwc1    $f16, 0x0064($s0)          ## 00000064
/* 05B10 808DC380 46062200 */  add.s   $f8, $f4, $f6
/* 05B14 808DC384 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 05B18 808DC388 2604005C */  addiu   $a0, $s0, 0x005C           ## $a0 = 0000005C
/* 05B1C 808DC38C 46105480 */  add.s   $f18, $f10, $f16
/* 05B20 808DC390 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 05B24 808DC394 44050000 */  mfc1    $a1, $f0
/* 05B28 808DC398 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 05B2C 808DC39C E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 05B30 808DC3A0 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 05B34 808DC3A4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 05B38 808DC3A8 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 05B3C 808DC3AC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 05B40 808DC3B0 26040064 */  addiu   $a0, $s0, 0x0064           ## $a0 = 00000064
/* 05B44 808DC3B4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 05B48 808DC3B8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 05B4C 808DC3BC 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 05B50 808DC3C0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 05B54 808DC3C4 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 05B58 808DC3C8 860401A2 */  lh      $a0, 0x01A2($s0)           ## 000001A2
/* 05B5C 808DC3CC 00800821 */  addu    $at, $a0, $zero
/* 05B60 808DC3D0 00042080 */  sll     $a0, $a0,  2
/* 05B64 808DC3D4 00812023 */  subu    $a0, $a0, $at
/* 05B68 808DC3D8 00042100 */  sll     $a0, $a0,  4
/* 05B6C 808DC3DC 00812023 */  subu    $a0, $a0, $at
/* 05B70 808DC3E0 000420C0 */  sll     $a0, $a0,  3
/* 05B74 808DC3E4 00812023 */  subu    $a0, $a0, $at
/* 05B78 808DC3E8 00042080 */  sll     $a0, $a0,  2
/* 05B7C 808DC3EC 00042400 */  sll     $a0, $a0, 16
/* 05B80 808DC3F0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 05B84 808DC3F4 00042403 */  sra     $a0, $a0, 16
/* 05B88 808DC3F8 46000080 */  add.s   $f2, $f0, $f0
/* 05B8C 808DC3FC C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 05B90 808DC400 46023200 */  add.s   $f8, $f6, $f2
/* 05B94 808DC404 E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 05B98 808DC408 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 05B9C 808DC40C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 05BA0 808DC410 8FB00038 */  lw      $s0, 0x0038($sp)
/* 05BA4 808DC414 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 05BA8 808DC418 03E00008 */  jr      $ra
/* 05BAC 808DC41C 00000000 */  nop
