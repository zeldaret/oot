glabel EnOwl_Init
/* 00000 80AC9F20 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00004 80AC9F24 AFA50054 */  sw      $a1, 0x0054($sp)
/* 00008 80AC9F28 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0000C 80AC9F2C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00010 80AC9F30 3C0580AD */  lui     $a1, %hi(D_80ACD61C)       ## $a1 = 80AD0000
/* 00014 80AC9F34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80AC9F38 0C01E037 */  jal     Actor_ProcessInitChain

/* 0001C 80AC9F3C 24A5D61C */  addiu   $a1, $a1, %lo(D_80ACD61C)  ## $a1 = 80ACD61C
/* 00020 80AC9F40 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00024 80AC9F44 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00028 80AC9F48 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0002C 80AC9F4C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00030 80AC9F50 0C00AC78 */  jal     ActorShape_Init

/* 00034 80AC9F54 3C074210 */  lui     $a3, 0x4210                ## $a3 = 42100000
/* 00038 80AC9F58 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 0003C 80AC9F5C 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00040 80AC9F60 260E01DC */  addiu   $t6, $s0, 0x01DC           ## $t6 = 000001DC
/* 00044 80AC9F64 260F025A */  addiu   $t7, $s0, 0x025A           ## $t7 = 0000025A
/* 00048 80AC9F68 24180015 */  addiu   $t8, $zero, 0x0015         ## $t8 = 00000015
/* 0004C 80AC9F6C AFB80018 */  sw      $t8, 0x0018($sp)
/* 00050 80AC9F70 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00054 80AC9F74 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00058 80AC9F78 24E715CC */  addiu   $a3, $a3, 0x15CC           ## $a3 = 060015CC
/* 0005C 80AC9F7C 24C6C0E8 */  addiu   $a2, $a2, 0xC0E8           ## $a2 = 0600C0E8
/* 00060 80AC9F80 8FA40054 */  lw      $a0, 0x0054($sp)
/* 00064 80AC9F84 0C0291BE */  jal     SkelAnime_InitSV
/* 00068 80AC9F88 26050198 */  addiu   $a1, $s0, 0x0198           ## $a1 = 00000198
/* 0006C 80AC9F8C 260502D8 */  addiu   $a1, $s0, 0x02D8           ## $a1 = 000002D8
/* 00070 80AC9F90 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00074 80AC9F94 3C070601 */  lui     $a3, 0x0601                ## $a3 = 06010000
/* 00078 80AC9F98 2619031C */  addiu   $t9, $s0, 0x031C           ## $t9 = 0000031C
/* 0007C 80AC9F9C 2608037C */  addiu   $t0, $s0, 0x037C           ## $t0 = 0000037C
/* 00080 80AC9FA0 24090010 */  addiu   $t1, $zero, 0x0010         ## $t1 = 00000010
/* 00084 80AC9FA4 AFA90018 */  sw      $t1, 0x0018($sp)
/* 00088 80AC9FA8 AFA80014 */  sw      $t0, 0x0014($sp)
/* 0008C 80AC9FAC AFB90010 */  sw      $t9, 0x0010($sp)
/* 00090 80AC9FB0 24E7C8A0 */  addiu   $a3, $a3, 0xC8A0           ## $a3 = 0600C8A0
/* 00094 80AC9FB4 24C600B0 */  addiu   $a2, $a2, 0x00B0           ## $a2 = 060100B0
/* 00098 80AC9FB8 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0009C 80AC9FBC 0C0291BE */  jal     SkelAnime_InitSV
/* 000A0 80AC9FC0 8FA40054 */  lw      $a0, 0x0054($sp)
/* 000A4 80AC9FC4 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 000A8 80AC9FC8 AFA50038 */  sw      $a1, 0x0038($sp)
/* 000AC 80AC9FCC 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 000B0 80AC9FD0 8FA40054 */  lw      $a0, 0x0054($sp)
/* 000B4 80AC9FD4 3C0780AD */  lui     $a3, %hi(D_80ACD5F0)       ## $a3 = 80AD0000
/* 000B8 80AC9FD8 8FA50038 */  lw      $a1, 0x0038($sp)
/* 000BC 80AC9FDC 24E7D5F0 */  addiu   $a3, $a3, %lo(D_80ACD5F0)  ## $a3 = 80ACD5F0
/* 000C0 80AC9FE0 8FA40054 */  lw      $a0, 0x0054($sp)
/* 000C4 80AC9FE4 0C01712B */  jal     ActorCollider_InitCylinder

/* 000C8 80AC9FE8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000CC 80AC9FEC 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 000D0 80AC9FF0 44812000 */  mtc1    $at, $f4                   ## $f4 = -10.00
/* 000D4 80AC9FF4 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 000D8 80AC9FF8 44813000 */  mtc1    $at, $f6                   ## $f6 = 500.00
/* 000DC 80AC9FFC 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 000E0 80ACA000 A20A00AE */  sb      $t2, 0x00AE($s0)           ## 000000AE
/* 000E4 80ACA004 E6040070 */  swc1    $f4, 0x0070($s0)           ## 00000070
/* 000E8 80ACA008 E606004C */  swc1    $f6, 0x004C($s0)           ## 0000004C
/* 000EC 80ACA00C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 000F0 80ACA010 3C0580AD */  lui     $a1, %hi(func_80ACBA24)    ## $a1 = 80AD0000
/* 000F4 80ACA014 3C0B0601 */  lui     $t3, 0x0601                ## $t3 = 06010000
/* 000F8 80ACA018 256BC8A0 */  addiu   $t3, $t3, 0xC8A0           ## $t3 = 0600C8A0
/* 000FC 80ACA01C 24A5BA24 */  addiu   $a1, $a1, %lo(func_80ACBA24) ## $a1 = 80ACBA24
/* 00100 80ACA020 3C0680AD */  lui     $a2, %hi(func_80ACC540)    ## $a2 = 80AD0000
/* 00104 80ACA024 24C6C540 */  addiu   $a2, $a2, %lo(func_80ACC540) ## $a2 = 80ACC540
/* 00108 80ACA028 AFA50038 */  sw      $a1, 0x0038($sp)
/* 0010C 80ACA02C AFAB0010 */  sw      $t3, 0x0010($sp)
/* 00110 80ACA030 8FA70034 */  lw      $a3, 0x0034($sp)
/* 00114 80ACA034 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00118 80ACA038 0C2B342E */  jal     func_80ACD0B8
/* 0011C 80ACA03C E7A80014 */  swc1    $f8, 0x0014($sp)
/* 00120 80ACA040 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00124 80ACA044 24030004 */  addiu   $v1, $zero, 0x0004         ## $v1 = 00000004
/* 00128 80ACA048 300200FF */  andi    $v0, $zero, 0x00FF         ## $v0 = 00000000
/* 0012C 80ACA04C 24010FFF */  addiu   $at, $zero, 0x0FFF         ## $at = 00000FFF
/* 00130 80ACA050 30A60FC0 */  andi    $a2, $a1, 0x0FC0           ## $a2 = 00000000
/* 00134 80ACA054 A2020406 */  sb      $v0, 0x0406($s0)           ## 00000406
/* 00138 80ACA058 A60203FC */  sh      $v0, 0x03FC($s0)           ## 000003FC
/* 0013C 80ACA05C A2000409 */  sb      $zero, 0x0409($s0)         ## 00000409
/* 00140 80ACA060 A2030405 */  sb      $v1, 0x0405($s0)           ## 00000405
/* 00144 80ACA064 A2000407 */  sb      $zero, 0x0407($s0)         ## 00000407
/* 00148 80ACA068 A2000404 */  sb      $zero, 0x0404($s0)         ## 00000404
/* 0014C 80ACA06C A2030408 */  sb      $v1, 0x0408($s0)           ## 00000408
/* 00150 80ACA070 00063183 */  sra     $a2, $a2,  6
/* 00154 80ACA074 14A10003 */  bne     $a1, $at, .L80ACA084
/* 00158 80ACA078 30A7003F */  andi    $a3, $a1, 0x003F           ## $a3 = 00000000
/* 0015C 80ACA07C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00160 80ACA080 24070020 */  addiu   $a3, $zero, 0x0020         ## $a3 = 00000020
.L80ACA084:
/* 00164 80ACA084 3C0480AD */  lui     $a0, %hi(D_80ACD650)       ## $a0 = 80AD0000
/* 00168 80ACA088 2484D650 */  addiu   $a0, $a0, %lo(D_80ACD650)  ## $a0 = 80ACD650
/* 0016C 80ACA08C AFA60044 */  sw      $a2, 0x0044($sp)
/* 00170 80ACA090 0C00084C */  jal     osSyncPrintf

/* 00174 80ACA094 AFA70040 */  sw      $a3, 0x0040($sp)
/* 00178 80ACA098 8FA60044 */  lw      $a2, 0x0044($sp)
/* 0017C 80ACA09C 8FA70040 */  lw      $a3, 0x0040($sp)
/* 00180 80ACA0A0 10C00010 */  beq     $a2, $zero, .L80ACA0E4
/* 00184 80ACA0A4 28E10020 */  slti    $at, $a3, 0x0020
/* 00188 80ACA0A8 5020000F */  beql    $at, $zero, .L80ACA0E8
/* 0018C 80ACA0AC 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 00190 80ACA0B0 8FA40054 */  lw      $a0, 0x0054($sp)
/* 00194 80ACA0B4 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00198 80ACA0B8 0C00B2D0 */  jal     Flags_GetSwitch

/* 0019C 80ACA0BC AFA60044 */  sw      $a2, 0x0044($sp)
/* 001A0 80ACA0C0 10400008 */  beq     $v0, $zero, .L80ACA0E4
/* 001A4 80ACA0C4 8FA60044 */  lw      $a2, 0x0044($sp)
/* 001A8 80ACA0C8 3C0480AD */  lui     $a0, %hi(D_80ACD67C)       ## $a0 = 80AD0000
/* 001AC 80ACA0CC 0C00084C */  jal     osSyncPrintf

/* 001B0 80ACA0D0 2484D67C */  addiu   $a0, $a0, %lo(D_80ACD67C)  ## $a0 = 80ACD67C
/* 001B4 80ACA0D4 0C00B55C */  jal     Actor_Kill

/* 001B8 80ACA0D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001BC 80ACA0DC 100000A8 */  beq     $zero, $zero, .L80ACA380
/* 001C0 80ACA0E0 8FBF002C */  lw      $ra, 0x002C($sp)
.L80ACA0E4:
/* 001C4 80ACA0E4 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
.L80ACA0E8:
/* 001C8 80ACA0E8 2CC1000D */  sltiu   $at, $a2, 0x000D
/* 001CC 80ACA0EC A60003EE */  sh      $zero, 0x03EE($s0)         ## 000003EE
/* 001D0 80ACA0F0 1020008C */  beq     $at, $zero, .L80ACA324
/* 001D4 80ACA0F4 A60D0400 */  sh      $t5, 0x0400($s0)           ## 00000400
/* 001D8 80ACA0F8 00067080 */  sll     $t6, $a2,  2
/* 001DC 80ACA0FC 3C0180AD */  lui     $at, %hi(jtbl_80ACD7FC)       ## $at = 80AD0000
/* 001E0 80ACA100 002E0821 */  addu    $at, $at, $t6
/* 001E4 80ACA104 8C2ED7FC */  lw      $t6, %lo(jtbl_80ACD7FC)($at)
/* 001E8 80ACA108 01C00008 */  jr      $t6
/* 001EC 80ACA10C 00000000 */  nop
glabel L80ACA110
/* 001F0 80ACA110 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 001F4 80ACA114 8FAF0038 */  lw      $t7, 0x0038($sp)
/* 001F8 80ACA118 44815000 */  mtc1    $at, $f10                  ## $f10 = 4000.00
/* 001FC 80ACA11C A200040A */  sb      $zero, 0x040A($s0)         ## 0000040A
/* 00200 80ACA120 AE0F040C */  sw      $t7, 0x040C($s0)           ## 0000040C
/* 00204 80ACA124 10000095 */  beq     $zero, $zero, .L80ACA37C
/* 00208 80ACA128 E60A00F4 */  swc1    $f10, 0x00F4($s0)          ## 000000F4
glabel L80ACA12C
/* 0020C 80ACA12C 3C1880AD */  lui     $t8, %hi(func_80ACA928)    ## $t8 = 80AD0000
/* 00210 80ACA130 2718A928 */  addiu   $t8, $t8, %lo(func_80ACA928) ## $t8 = 80ACA928
/* 00214 80ACA134 10000091 */  beq     $zero, $zero, .L80ACA37C
/* 00218 80ACA138 AE18040C */  sw      $t8, 0x040C($s0)           ## 0000040C
glabel L80ACA13C
/* 0021C 80ACA13C 961903FC */  lhu     $t9, 0x03FC($s0)           ## 000003FC
/* 00220 80ACA140 3C0A80AD */  lui     $t2, %hi(func_80ACAB2C)    ## $t2 = 80AD0000
/* 00224 80ACA144 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 00228 80ACA148 254AAB2C */  addiu   $t2, $t2, %lo(func_80ACAB2C) ## $t2 = 80ACAB2C
/* 0022C 80ACA14C 37280002 */  ori     $t0, $t9, 0x0002           ## $t0 = 00000002
/* 00230 80ACA150 A60803FC */  sh      $t0, 0x03FC($s0)           ## 000003FC
/* 00234 80ACA154 A60903EE */  sh      $t1, 0x03EE($s0)           ## 000003EE
/* 00238 80ACA158 10000088 */  beq     $zero, $zero, .L80ACA37C
/* 0023C 80ACA15C AE0A040C */  sw      $t2, 0x040C($s0)           ## 0000040C
glabel L80ACA160
/* 00240 80ACA160 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00244 80ACA164 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00248 80ACA168 944B0EDC */  lhu     $t3, 0x0EDC($v0)           ## 8015F53C
/* 0024C 80ACA16C 3C0D80AD */  lui     $t5, %hi(func_80ACACD8)    ## $t5 = 80AD0000
/* 00250 80ACA170 3C0480AD */  lui     $a0, %hi(D_80ACD694)       ## $a0 = 80AD0000
/* 00254 80ACA174 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 00258 80ACA178 11800007 */  beq     $t4, $zero, .L80ACA198
/* 0025C 80ACA17C 25ADACD8 */  addiu   $t5, $t5, %lo(func_80ACACD8) ## $t5 = 80ACACD8
/* 00260 80ACA180 0C00084C */  jal     osSyncPrintf

/* 00264 80ACA184 2484D694 */  addiu   $a0, $a0, %lo(D_80ACD694)  ## $a0 = 80ACD694
/* 00268 80ACA188 0C00B55C */  jal     Actor_Kill

/* 0026C 80ACA18C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00270 80ACA190 1000007B */  beq     $zero, $zero, .L80ACA380
/* 00274 80ACA194 8FBF002C */  lw      $ra, 0x002C($sp)
.L80ACA198:
/* 00278 80ACA198 10000078 */  beq     $zero, $zero, .L80ACA37C
/* 0027C 80ACA19C AE0D040C */  sw      $t5, 0x040C($s0)           ## 0000040C
glabel L80ACA1A0
/* 00280 80ACA1A0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00284 80ACA1A4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00288 80ACA1A8 944E0EDC */  lhu     $t6, 0x0EDC($v0)           ## 8015F53C
/* 0028C 80ACA1AC 3C1880AD */  lui     $t8, %hi(func_80ACAE5C)    ## $t8 = 80AD0000
/* 00290 80ACA1B0 3C0480AD */  lui     $a0, %hi(D_80ACD6A4)       ## $a0 = 80AD0000
/* 00294 80ACA1B4 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 00298 80ACA1B8 11E00007 */  beq     $t7, $zero, .L80ACA1D8
/* 0029C 80ACA1BC 2718AE5C */  addiu   $t8, $t8, %lo(func_80ACAE5C) ## $t8 = 80ACAE5C
/* 002A0 80ACA1C0 0C00084C */  jal     osSyncPrintf

/* 002A4 80ACA1C4 2484D6A4 */  addiu   $a0, $a0, %lo(D_80ACD6A4)  ## $a0 = 80ACD6A4
/* 002A8 80ACA1C8 0C00B55C */  jal     Actor_Kill

/* 002AC 80ACA1CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002B0 80ACA1D0 1000006B */  beq     $zero, $zero, .L80ACA380
/* 002B4 80ACA1D4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80ACA1D8:
/* 002B8 80ACA1D8 10000068 */  beq     $zero, $zero, .L80ACA37C
/* 002BC 80ACA1DC AE18040C */  sw      $t8, 0x040C($s0)           ## 0000040C
glabel L80ACA1E0
/* 002C0 80ACA1E0 3C1980AD */  lui     $t9, %hi(func_80ACAFE0)    ## $t9 = 80AD0000
/* 002C4 80ACA1E4 2739AFE0 */  addiu   $t9, $t9, %lo(func_80ACAFE0) ## $t9 = 80ACAFE0
/* 002C8 80ACA1E8 10000064 */  beq     $zero, $zero, .L80ACA37C
/* 002CC 80ACA1EC AE19040C */  sw      $t9, 0x040C($s0)           ## 0000040C
glabel L80ACA1F0
/* 002D0 80ACA1F0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 002D4 80ACA1F4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 002D8 80ACA1F8 94480EDA */  lhu     $t0, 0x0EDA($v0)           ## 8015F53A
/* 002DC 80ACA1FC 3C0480AD */  lui     $a0, %hi(D_80ACD6B4)       ## $a0 = 80AD0000
/* 002E0 80ACA200 31090200 */  andi    $t1, $t0, 0x0200           ## $t1 = 00000000
/* 002E4 80ACA204 15200007 */  bne     $t1, $zero, .L80ACA224
/* 002E8 80ACA208 00000000 */  nop
/* 002EC 80ACA20C 944A0EDC */  lhu     $t2, 0x0EDC($v0)           ## 8015F53C
/* 002F0 80ACA210 3C0C80AD */  lui     $t4, %hi(func_80ACB0B0)    ## $t4 = 80AD0000
/* 002F4 80ACA214 258CB0B0 */  addiu   $t4, $t4, %lo(func_80ACB0B0) ## $t4 = 80ACB0B0
/* 002F8 80ACA218 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 002FC 80ACA21C 15600007 */  bne     $t3, $zero, .L80ACA23C
/* 00300 80ACA220 00000000 */  nop
.L80ACA224:
/* 00304 80ACA224 0C00084C */  jal     osSyncPrintf

/* 00308 80ACA228 2484D6B4 */  addiu   $a0, $a0, %lo(D_80ACD6B4)  ## $a0 = 80ACD6B4
/* 0030C 80ACA22C 0C00B55C */  jal     Actor_Kill

/* 00310 80ACA230 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00314 80ACA234 10000052 */  beq     $zero, $zero, .L80ACA380
/* 00318 80ACA238 8FBF002C */  lw      $ra, 0x002C($sp)
.L80ACA23C:
/* 0031C 80ACA23C 1000004F */  beq     $zero, $zero, .L80ACA37C
/* 00320 80ACA240 AE0C040C */  sw      $t4, 0x040C($s0)           ## 0000040C
glabel L80ACA244
/* 00324 80ACA244 3C0D80AD */  lui     $t5, %hi(func_80ACB1A0)    ## $t5 = 80AD0000
/* 00328 80ACA248 25ADB1A0 */  addiu   $t5, $t5, %lo(func_80ACB1A0) ## $t5 = 80ACB1A0
/* 0032C 80ACA24C AE0D040C */  sw      $t5, 0x040C($s0)           ## 0000040C
/* 00330 80ACA250 8FA40054 */  lw      $a0, 0x0054($sp)
/* 00334 80ACA254 0C00B2ED */  jal     Flags_UnsetSwitch

/* 00338 80ACA258 24050023 */  addiu   $a1, $zero, 0x0023         ## $a1 = 00000023
/* 0033C 80ACA25C 10000048 */  beq     $zero, $zero, .L80ACA380
/* 00340 80ACA260 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80ACA264
/* 00344 80ACA264 3C0E80AD */  lui     $t6, %hi(func_80ACB2B4)    ## $t6 = 80AD0000
/* 00348 80ACA268 25CEB2B4 */  addiu   $t6, $t6, %lo(func_80ACB2B4) ## $t6 = 80ACB2B4
/* 0034C 80ACA26C 10000043 */  beq     $zero, $zero, .L80ACA37C
/* 00350 80ACA270 AE0E040C */  sw      $t6, 0x040C($s0)           ## 0000040C
glabel L80ACA274
/* 00354 80ACA274 3C0F80AD */  lui     $t7, %hi(func_80ACB2B4)    ## $t7 = 80AD0000
/* 00358 80ACA278 25EFB2B4 */  addiu   $t7, $t7, %lo(func_80ACB2B4) ## $t7 = 80ACB2B4
/* 0035C 80ACA27C 1000003F */  beq     $zero, $zero, .L80ACA37C
/* 00360 80ACA280 AE0F040C */  sw      $t7, 0x040C($s0)           ## 0000040C
glabel L80ACA284
/* 00364 80ACA284 3C1880AD */  lui     $t8, %hi(func_80ACB3E0)    ## $t8 = 80AD0000
/* 00368 80ACA288 2718B3E0 */  addiu   $t8, $t8, %lo(func_80ACB3E0) ## $t8 = 80ACB3E0
/* 0036C 80ACA28C 1000003B */  beq     $zero, $zero, .L80ACA37C
/* 00370 80ACA290 AE18040C */  sw      $t8, 0x040C($s0)           ## 0000040C
glabel L80ACA294
/* 00374 80ACA294 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00378 80ACA298 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0037C 80ACA29C 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 00380 80ACA2A0 8F397150 */  lw      $t9, 0x7150($t9)           ## 80127150
/* 00384 80ACA2A4 8C4800A4 */  lw      $t0, 0x00A4($v0)           ## 8015E704
/* 00388 80ACA2A8 3C0A80AD */  lui     $t2, %hi(func_80ACB568)    ## $t2 = 80AD0000
/* 0038C 80ACA2AC 3C0480AD */  lui     $a0, %hi(D_80ACD6C4)       ## $a0 = 80AD0000
/* 00390 80ACA2B0 03284824 */  and     $t1, $t9, $t0
/* 00394 80ACA2B4 15200007 */  bne     $t1, $zero, .L80ACA2D4
/* 00398 80ACA2B8 254AB568 */  addiu   $t2, $t2, %lo(func_80ACB568) ## $t2 = 80ACB568
/* 0039C 80ACA2BC 0C00084C */  jal     osSyncPrintf

/* 003A0 80ACA2C0 2484D6C4 */  addiu   $a0, $a0, %lo(D_80ACD6C4)  ## $a0 = 80ACD6C4
/* 003A4 80ACA2C4 0C00B55C */  jal     Actor_Kill

/* 003A8 80ACA2C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003AC 80ACA2CC 1000002C */  beq     $zero, $zero, .L80ACA380
/* 003B0 80ACA2D0 8FBF002C */  lw      $ra, 0x002C($sp)
.L80ACA2D4:
/* 003B4 80ACA2D4 10000029 */  beq     $zero, $zero, .L80ACA37C
/* 003B8 80ACA2D8 AE0A040C */  sw      $t2, 0x040C($s0)           ## 0000040C
glabel L80ACA2DC
/* 003BC 80ACA2DC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 003C0 80ACA2E0 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 003C4 80ACA2E4 3C0B8012 */  lui     $t3, 0x8012                ## $t3 = 80120000
/* 003C8 80ACA2E8 8D6B7158 */  lw      $t3, 0x7158($t3)           ## 80127158
/* 003CC 80ACA2EC 8C4C00A4 */  lw      $t4, 0x00A4($v0)           ## 8015E704
/* 003D0 80ACA2F0 3C0E80AD */  lui     $t6, %hi(func_80ACB6EC)    ## $t6 = 80AD0000
/* 003D4 80ACA2F4 3C0480AD */  lui     $a0, %hi(D_80ACD6D4)       ## $a0 = 80AD0000
/* 003D8 80ACA2F8 016C6824 */  and     $t5, $t3, $t4
/* 003DC 80ACA2FC 15A00007 */  bne     $t5, $zero, .L80ACA31C
/* 003E0 80ACA300 25CEB6EC */  addiu   $t6, $t6, %lo(func_80ACB6EC) ## $t6 = 80ACB6EC
/* 003E4 80ACA304 0C00084C */  jal     osSyncPrintf

/* 003E8 80ACA308 2484D6D4 */  addiu   $a0, $a0, %lo(D_80ACD6D4)  ## $a0 = 80ACD6D4
/* 003EC 80ACA30C 0C00B55C */  jal     Actor_Kill

/* 003F0 80ACA310 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003F4 80ACA314 1000001A */  beq     $zero, $zero, .L80ACA380
/* 003F8 80ACA318 8FBF002C */  lw      $ra, 0x002C($sp)
.L80ACA31C:
/* 003FC 80ACA31C 10000017 */  beq     $zero, $zero, .L80ACA37C
/* 00400 80ACA320 AE0E040C */  sw      $t6, 0x040C($s0)           ## 0000040C
.L80ACA324:
/* 00404 80ACA324 3C0480AD */  lui     $a0, %hi(D_80ACD6E4)       ## $a0 = 80AD0000
/* 00408 80ACA328 2484D6E4 */  addiu   $a0, $a0, %lo(D_80ACD6E4)  ## $a0 = 80ACD6E4
/* 0040C 80ACA32C 0C00084C */  jal     osSyncPrintf

/* 00410 80ACA330 AFA60044 */  sw      $a2, 0x0044($sp)
/* 00414 80ACA334 3C0480AD */  lui     $a0, %hi(D_80ACD6EC)       ## $a0 = 80AD0000
/* 00418 80ACA338 8FA50044 */  lw      $a1, 0x0044($sp)
/* 0041C 80ACA33C 0C00084C */  jal     osSyncPrintf

/* 00420 80ACA340 2484D6EC */  addiu   $a0, $a0, %lo(D_80ACD6EC)  ## $a0 = 80ACD6EC
/* 00424 80ACA344 3C0480AD */  lui     $a0, %hi(D_80ACD6F8)       ## $a0 = 80AD0000
/* 00428 80ACA348 0C00084C */  jal     osSyncPrintf

/* 0042C 80ACA34C 2484D6F8 */  addiu   $a0, $a0, %lo(D_80ACD6F8)  ## $a0 = 80ACD6F8
/* 00430 80ACA350 3C0480AD */  lui     $a0, %hi(D_80ACD72C)       ## $a0 = 80AD0000
/* 00434 80ACA354 0C00084C */  jal     osSyncPrintf

/* 00438 80ACA358 2484D72C */  addiu   $a0, $a0, %lo(D_80ACD72C)  ## $a0 = 80ACD72C
/* 0043C 80ACA35C 960F03FC */  lhu     $t7, 0x03FC($s0)           ## 000003FC
/* 00440 80ACA360 3C0880AD */  lui     $t0, %hi(func_80ACA928)    ## $t0 = 80AD0000
/* 00444 80ACA364 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 00448 80ACA368 2508A928 */  addiu   $t0, $t0, %lo(func_80ACA928) ## $t0 = 80ACA928
/* 0044C 80ACA36C 35F80002 */  ori     $t8, $t7, 0x0002           ## $t8 = 00000002
/* 00450 80ACA370 A61803FC */  sh      $t8, 0x03FC($s0)           ## 000003FC
/* 00454 80ACA374 A61903EE */  sh      $t9, 0x03EE($s0)           ## 000003EE
/* 00458 80ACA378 AE08040C */  sw      $t0, 0x040C($s0)           ## 0000040C
.L80ACA37C:
/* 0045C 80ACA37C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80ACA380:
/* 00460 80ACA380 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00464 80ACA384 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00468 80ACA388 03E00008 */  jr      $ra
/* 0046C 80ACA38C 00000000 */  nop


