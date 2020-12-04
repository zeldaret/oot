.late_rodata
glabel D_80A307F0
    .float 0.2

.text
glabel EnGb_Init
/* 00030 80A2F1B0 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 00034 80A2F1B4 AFB30050 */  sw      $s3, 0x0050($sp)
/* 00038 80A2F1B8 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 0003C 80A2F1BC AFBF005C */  sw      $ra, 0x005C($sp)
/* 00040 80A2F1C0 AFB2004C */  sw      $s2, 0x004C($sp)
/* 00044 80A2F1C4 3C0580A3 */  lui     $a1, %hi(D_80A30740)       ## $a1 = 80A30000
/* 00048 80A2F1C8 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 0004C 80A2F1CC AFB50058 */  sw      $s5, 0x0058($sp)
/* 00050 80A2F1D0 AFB40054 */  sw      $s4, 0x0054($sp)
/* 00054 80A2F1D4 AFB10048 */  sw      $s1, 0x0048($sp)
/* 00058 80A2F1D8 AFB00044 */  sw      $s0, 0x0044($sp)
/* 0005C 80A2F1DC F7BA0038 */  sdc1    $f26, 0x0038($sp)
/* 00060 80A2F1E0 F7B80030 */  sdc1    $f24, 0x0030($sp)
/* 00064 80A2F1E4 F7B60028 */  sdc1    $f22, 0x0028($sp)
/* 00068 80A2F1E8 F7B40020 */  sdc1    $f20, 0x0020($sp)
/* 0006C 80A2F1EC AFA00084 */  sw      $zero, 0x0084($sp)
/* 00070 80A2F1F0 0C01E037 */  jal     Actor_ProcessInitChain

/* 00074 80A2F1F4 24A50740 */  addiu   $a1, $a1, %lo(D_80A30740)  ## $a1 = 80A30740
/* 00078 80A2F1F8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0007C 80A2F1FC 0C010D20 */  jal     DynaPolyInfo_SetActorMove

/* 00080 80A2F200 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00084 80A2F204 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00088 80A2F208 2484C2D0 */  addiu   $a0, $a0, 0xC2D0           ## $a0 = 0600C2D0
/* 0008C 80A2F20C 0C010620 */  jal     DynaPolyInfo_Alloc

/* 00090 80A2F210 27A50084 */  addiu   $a1, $sp, 0x0084           ## $a1 = FFFFFFF4
/* 00094 80A2F214 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00098 80A2F218 26650810 */  addiu   $a1, $s3, 0x0810           ## $a1 = 00000810
/* 0009C 80A2F21C 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 000A0 80A2F220 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 000A4 80A2F224 8FA70084 */  lw      $a3, 0x0084($sp)
/* 000A8 80A2F228 AE42014C */  sw      $v0, 0x014C($s2)           ## 0000014C
/* 000AC 80A2F22C 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 000B0 80A2F230 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 000B4 80A2F234 264E01A8 */  addiu   $t6, $s2, 0x01A8           ## $t6 = 000001A8
/* 000B8 80A2F238 264F01F0 */  addiu   $t7, $s2, 0x01F0           ## $t7 = 000001F0
/* 000BC 80A2F23C 2418000C */  addiu   $t8, $zero, 0x000C         ## $t8 = 0000000C
/* 000C0 80A2F240 AFB80018 */  sw      $t8, 0x0018($sp)
/* 000C4 80A2F244 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 000C8 80A2F248 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 000CC 80A2F24C 24E7049C */  addiu   $a3, $a3, 0x049C           ## $a3 = 0600049C
/* 000D0 80A2F250 24C6C220 */  addiu   $a2, $a2, 0xC220           ## $a2 = 0600C220
/* 000D4 80A2F254 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 000D8 80A2F258 0C0291BE */  jal     Skeleton_InitFlex
/* 000DC 80A2F25C 26450164 */  addiu   $a1, $s2, 0x0164           ## $a1 = 00000164
/* 000E0 80A2F260 2650023C */  addiu   $s0, $s2, 0x023C           ## $s0 = 0000023C
/* 000E4 80A2F264 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000023C
/* 000E8 80A2F268 0C0170D9 */  jal     Collider_InitCylinder

/* 000EC 80A2F26C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 000F0 80A2F270 3C0780A3 */  lui     $a3, %hi(D_80A30690)       ## $a3 = 80A30000
/* 000F4 80A2F274 24E70690 */  addiu   $a3, $a3, %lo(D_80A30690)  ## $a3 = 80A30690
/* 000F8 80A2F278 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 000FC 80A2F27C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000023C
/* 00100 80A2F280 0C017114 */  jal     Collider_SetCylinder_Set3
/* 00104 80A2F284 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 00108 80A2F288 3C1080A3 */  lui     $s0, %hi(D_80A306BC)       ## $s0 = 80A30000
/* 0010C 80A2F28C 3C1480A3 */  lui     $s4, %hi(D_80A30740)       ## $s4 = 80A30000
/* 00110 80A2F290 26940740 */  addiu   $s4, $s4, %lo(D_80A30740)  ## $s4 = 80A30740
/* 00114 80A2F294 261006BC */  addiu   $s0, $s0, %lo(D_80A306BC)  ## $s0 = 80A306BC
/* 00118 80A2F298 26510288 */  addiu   $s1, $s2, 0x0288           ## $s1 = 00000288
.L80A2F29C:
/* 0011C 80A2F29C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00120 80A2F2A0 0C0170D9 */  jal     Collider_InitCylinder

/* 00124 80A2F2A4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000288
/* 00128 80A2F2A8 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0012C 80A2F2AC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000288
/* 00130 80A2F2B0 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 00134 80A2F2B4 0C017114 */  jal     Collider_SetCylinder_Set3
/* 00138 80A2F2B8 02003825 */  or      $a3, $s0, $zero            ## $a3 = 80A306BC
/* 0013C 80A2F2BC 2610002C */  addiu   $s0, $s0, 0x002C           ## $s0 = 80A306E8
/* 00140 80A2F2C0 0214082B */  sltu    $at, $s0, $s4
/* 00144 80A2F2C4 1420FFF5 */  bne     $at, $zero, .L80A2F29C
/* 00148 80A2F2C8 2631004C */  addiu   $s1, $s1, 0x004C           ## $s1 = 000002D4
/* 0014C 80A2F2CC 26500370 */  addiu   $s0, $s2, 0x0370           ## $s0 = 00000370
/* 00150 80A2F2D0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000370
/* 00154 80A2F2D4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00158 80A2F2D8 0C01E9D9 */  jal     LightContext_InsertLight

/* 0015C 80A2F2DC 266507A8 */  addiu   $a1, $s3, 0x07A8           ## $a1 = 000007A8
/* 00160 80A2F2E0 C6440008 */  lwc1    $f4, 0x0008($s2)           ## 00000008
/* 00164 80A2F2E4 C648000C */  lwc1    $f8, 0x000C($s2)           ## 0000000C
/* 00168 80A2F2E8 C6500010 */  lwc1    $f16, 0x0010($s2)          ## 00000010
/* 0016C 80A2F2EC 4600218D */  trunc.w.s $f6, $f4
/* 00170 80A2F2F0 AE42036C */  sw      $v0, 0x036C($s2)           ## 0000036C
/* 00174 80A2F2F4 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00178 80A2F2F8 4600428D */  trunc.w.s $f10, $f8
/* 0017C 80A2F2FC 44053000 */  mfc1    $a1, $f6
/* 00180 80A2F300 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 00184 80A2F304 4600848D */  trunc.w.s $f18, $f16
/* 00188 80A2F308 44065000 */  mfc1    $a2, $f10
/* 0018C 80A2F30C 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00190 80A2F310 240D00C8 */  addiu   $t5, $zero, 0x00C8         ## $t5 = 000000C8
/* 00194 80A2F314 44079000 */  mfc1    $a3, $f18
/* 00198 80A2F318 00052C00 */  sll     $a1, $a1, 16
/* 0019C 80A2F31C 00063400 */  sll     $a2, $a2, 16
/* 001A0 80A2F320 00073C00 */  sll     $a3, $a3, 16
/* 001A4 80A2F324 00073C03 */  sra     $a3, $a3, 16
/* 001A8 80A2F328 00063403 */  sra     $a2, $a2, 16
/* 001AC 80A2F32C 00052C03 */  sra     $a1, $a1, 16
/* 001B0 80A2F330 AFAD001C */  sw      $t5, 0x001C($sp)
/* 001B4 80A2F334 AFAC0018 */  sw      $t4, 0x0018($sp)
/* 001B8 80A2F338 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 001BC 80A2F33C AFAA0010 */  sw      $t2, 0x0010($sp)
/* 001C0 80A2F340 0C01E763 */  jal     Lights_PointNoGlowSetInfo

/* 001C4 80A2F344 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000370
/* 001C8 80A2F348 4480C000 */  mtc1    $zero, $f24                ## $f24 = 0.00
/* 001CC 80A2F34C 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 001D0 80A2F350 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 001D4 80A2F354 4405C000 */  mfc1    $a1, $f24
/* 001D8 80A2F358 264400B4 */  addiu   $a0, $s2, 0x00B4           ## $a0 = 000000B4
/* 001DC 80A2F35C 0C00AC78 */  jal     ActorShape_Init

/* 001E0 80A2F360 3C07420C */  lui     $a3, 0x420C                ## $a3 = 420C0000
/* 001E4 80A2F364 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 001E8 80A2F368 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 001EC 80A2F36C 0C00B58B */  jal     Actor_SetScale

/* 001F0 80A2F370 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 001F4 80A2F374 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 001F8 80A2F378 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 001FC 80A2F37C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00200 80A2F380 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00204 80A2F384 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 00208 80A2F388 A24E00AE */  sb      $t6, 0x00AE($s2)           ## 000000AE
/* 0020C 80A2F38C E6580068 */  swc1    $f24, 0x0068($s2)          ## 00000068
/* 00210 80A2F390 E6580060 */  swc1    $f24, 0x0060($s2)          ## 00000060
/* 00214 80A2F394 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 00218 80A2F398 E644006C */  swc1    $f4, 0x006C($s2)           ## 0000006C
/* 0021C 80A2F39C 4600018D */  trunc.w.s $f6, $f0
/* 00220 80A2F3A0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00224 80A2F3A4 4481D000 */  mtc1    $at, $f26                  ## $f26 = 30.00
/* 00228 80A2F3A8 3C0180A3 */  lui     $at, %hi(D_80A307F0)       ## $at = 80A30000
/* 0022C 80A2F3AC 44083000 */  mfc1    $t0, $f6
/* 00230 80A2F3B0 3C1180A3 */  lui     $s1, %hi(D_80A30748)       ## $s1 = 80A30000
/* 00234 80A2F3B4 3C1580A3 */  lui     $s5, %hi(D_80A30778)       ## $s5 = 80A30000
/* 00238 80A2F3B8 25090064 */  addiu   $t1, $t0, 0x0064           ## $t1 = 00000064
/* 0023C 80A2F3BC A6490382 */  sh      $t1, 0x0382($s2)           ## 00000382
/* 00240 80A2F3C0 C43607F0 */  lwc1    $f22, %lo(D_80A307F0)($at)
/* 00244 80A2F3C4 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00248 80A2F3C8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 40.00
/* 0024C 80A2F3CC 26B50778 */  addiu   $s5, $s5, %lo(D_80A30778)  ## $s5 = 80A30778
/* 00250 80A2F3D0 26310748 */  addiu   $s1, $s1, %lo(D_80A30748)  ## $s1 = 80A30748
/* 00254 80A2F3D4 02408025 */  or      $s0, $s2, $zero            ## $s0 = 00000000
/* 00258 80A2F3D8 24140001 */  addiu   $s4, $zero, 0x0001         ## $s4 = 00000001
/* 0025C 80A2F3DC 24130003 */  addiu   $s3, $zero, 0x0003         ## $s3 = 00000003
.L80A2F3E0:
/* 00260 80A2F3E0 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 00264 80A2F3E4 4600D306 */  mov.s   $f12, $f26
/* 00268 80A2F3E8 4600020D */  trunc.w.s $f8, $f0
/* 0026C 80A2F3EC 00006825 */  or      $t5, $zero, $zero          ## $t5 = 00000000
/* 00270 80A2F3F0 4600A306 */  mov.s   $f12, $f20
/* 00274 80A2F3F4 440B4000 */  mfc1    $t3, $f8
/* 00278 80A2F3F8 00000000 */  nop
/* 0027C 80A2F3FC 0173001A */  div     $zero, $t3, $s3
/* 00280 80A2F400 00006010 */  mfhi    $t4
/* 00284 80A2F404 A20C0388 */  sb      $t4, 0x0388($s0)           ## 00000388
/* 00288 80A2F408 C6500024 */  lwc1    $f16, 0x0024($s2)          ## 00000024
/* 0028C 80A2F40C C62A0000 */  lwc1    $f10, 0x0000($s1)          ## 80A30748
/* 00290 80A2F410 16600002 */  bne     $s3, $zero, .L80A2F41C
/* 00294 80A2F414 00000000 */  nop
/* 00298 80A2F418 0007000D */  break 7
.L80A2F41C:
/* 0029C 80A2F41C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 002A0 80A2F420 16610004 */  bne     $s3, $at, .L80A2F434
/* 002A4 80A2F424 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 002A8 80A2F428 15610002 */  bne     $t3, $at, .L80A2F434
/* 002AC 80A2F42C 00000000 */  nop
/* 002B0 80A2F430 0006000D */  break 6
.L80A2F434:
/* 002B4 80A2F434 46105080 */  add.s   $f2, $f10, $f16
/* 002B8 80A2F438 E6020390 */  swc1    $f2, 0x0390($s0)           ## 00000390
/* 002BC 80A2F43C E602039C */  swc1    $f2, 0x039C($s0)           ## 0000039C
/* 002C0 80A2F440 C6440028 */  lwc1    $f4, 0x0028($s2)           ## 00000028
/* 002C4 80A2F444 C6320004 */  lwc1    $f18, 0x0004($s1)          ## 80A3074C
/* 002C8 80A2F448 46049080 */  add.s   $f2, $f18, $f4
/* 002CC 80A2F44C E6020394 */  swc1    $f2, 0x0394($s0)           ## 00000394
/* 002D0 80A2F450 E60203A0 */  swc1    $f2, 0x03A0($s0)           ## 000003A0
/* 002D4 80A2F454 C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 002D8 80A2F458 C6260008 */  lwc1    $f6, 0x0008($s1)           ## 80A30750
/* 002DC 80A2F45C A2140389 */  sb      $s4, 0x0389($s0)           ## 00000389
/* 002E0 80A2F460 A20D038B */  sb      $t5, 0x038B($s0)           ## 0000038B
/* 002E4 80A2F464 46083080 */  add.s   $f2, $f6, $f8
/* 002E8 80A2F468 A200038A */  sb      $zero, 0x038A($s0)         ## 0000038A
/* 002EC 80A2F46C E61803A8 */  swc1    $f24, 0x03A8($s0)          ## 000003A8
/* 002F0 80A2F470 E61803AC */  swc1    $f24, 0x03AC($s0)          ## 000003AC
/* 002F4 80A2F474 E6020398 */  swc1    $f2, 0x0398($s0)           ## 00000398
/* 002F8 80A2F478 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 002FC 80A2F47C E60203A4 */  swc1    $f2, 0x03A4($s0)           ## 000003A4
/* 00300 80A2F480 4600028D */  trunc.w.s $f10, $f0
/* 00304 80A2F484 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 80A30754
/* 00308 80A2F488 2610002C */  addiu   $s0, $s0, 0x002C           ## $s0 = 0000002C
/* 0030C 80A2F48C E6160384 */  swc1    $f22, 0x0384($s0)          ## 000003B0
/* 00310 80A2F490 440F5000 */  mfc1    $t7, $f10
/* 00314 80A2F494 00000000 */  nop
/* 00318 80A2F498 A60F0362 */  sh      $t7, 0x0362($s0)           ## 0000038E
/* 0031C 80A2F49C 86180362 */  lh      $t8, 0x0362($s0)           ## 0000038E
/* 00320 80A2F4A0 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 00324 80A2F4A4 1635FFCE */  bne     $s1, $s5, .L80A2F3E0
/* 00328 80A2F4A8 A2190360 */  sb      $t9, 0x0360($s0)           ## 0000038C
/* 0032C 80A2F4AC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00330 80A2F4B0 00000000 */  nop
/* 00334 80A2F4B4 461A0402 */  mul.s   $f16, $f0, $f26
/* 00338 80A2F4B8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0033C 80A2F4BC 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00340 80A2F4C0 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00344 80A2F4C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 160.00
/* 00348 80A2F4C8 46040182 */  mul.s   $f6, $f0, $f4
/* 0034C 80A2F4CC 240D00C8 */  addiu   $t5, $zero, 0x00C8         ## $t5 = 000000C8
/* 00350 80A2F4D0 A24D0387 */  sb      $t5, 0x0387($s2)           ## 00000387
/* 00354 80A2F4D4 C64C0024 */  lwc1    $f12, 0x0024($s2)          ## 00000024
/* 00358 80A2F4D8 C64E0028 */  lwc1    $f14, 0x0028($s2)          ## 00000028
/* 0035C 80A2F4DC 8E46002C */  lw      $a2, 0x002C($s2)           ## 0000002C
/* 00360 80A2F4E0 4600848D */  trunc.w.s $f18, $f16
/* 00364 80A2F4E4 460A0402 */  mul.s   $f16, $f0, $f10
/* 00368 80A2F4E8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0036C 80A2F4EC 440B9000 */  mfc1    $t3, $f18
/* 00370 80A2F4F0 4600320D */  trunc.w.s $f8, $f6
/* 00374 80A2F4F4 256C00E1 */  addiu   $t4, $t3, 0x00E1           ## $t4 = 000000E1
/* 00378 80A2F4F8 A24C0384 */  sb      $t4, 0x0384($s2)           ## 00000384
/* 0037C 80A2F4FC 4600848D */  trunc.w.s $f18, $f16
/* 00380 80A2F500 44184000 */  mfc1    $t8, $f8
/* 00384 80A2F504 440B9000 */  mfc1    $t3, $f18
/* 00388 80A2F508 2719009B */  addiu   $t9, $t8, 0x009B           ## $t9 = 0000009B
/* 0038C 80A2F50C A2590385 */  sb      $t9, 0x0385($s2)           ## 00000385
/* 00390 80A2F510 256C005F */  addiu   $t4, $t3, 0x005F           ## $t4 = 0000005F
/* 00394 80A2F514 0C034261 */  jal     Matrix_Translate
/* 00398 80A2F518 A24C0386 */  sb      $t4, 0x0386($s2)           ## 00000386
/* 0039C 80A2F51C 86440030 */  lh      $a0, 0x0030($s2)           ## 00000030
/* 003A0 80A2F520 86450032 */  lh      $a1, 0x0032($s2)           ## 00000032
/* 003A4 80A2F524 86460034 */  lh      $a2, 0x0034($s2)           ## 00000034
/* 003A8 80A2F528 0C034421 */  jal     Matrix_RotateRPY
/* 003AC 80A2F52C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 003B0 80A2F530 3C014230 */  lui     $at, 0x4230                ## $at = 42300000
/* 003B4 80A2F534 44812000 */  mtc1    $at, $f4                   ## $f4 = 44.00
/* 003B8 80A2F538 E7B80074 */  swc1    $f24, 0x0074($sp)
/* 003BC 80A2F53C E7B80070 */  swc1    $f24, 0x0070($sp)
/* 003C0 80A2F540 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE0
/* 003C4 80A2F544 26450038 */  addiu   $a1, $s2, 0x0038           ## $a1 = 00000038
/* 003C8 80A2F548 0C0346BD */  jal     Matrix_MultVec3f
/* 003CC 80A2F54C E7A40078 */  swc1    $f4, 0x0078($sp)
/* 003D0 80A2F550 3C01427A */  lui     $at, 0x427A                ## $at = 427A0000
/* 003D4 80A2F554 44814000 */  mtc1    $at, $f8                   ## $f8 = 62.50
/* 003D8 80A2F558 C646003C */  lwc1    $f6, 0x003C($s2)           ## 0000003C
/* 003DC 80A2F55C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 003E0 80A2F560 46083280 */  add.s   $f10, $f6, $f8
/* 003E4 80A2F564 0C28BC60 */  jal     func_80A2F180
/* 003E8 80A2F568 E64A003C */  swc1    $f10, 0x003C($s2)          ## 0000003C
/* 003EC 80A2F56C 3C0E80A3 */  lui     $t6, %hi(func_80A2F83C)    ## $t6 = 80A30000
/* 003F0 80A2F570 25CEF83C */  addiu   $t6, $t6, %lo(func_80A2F83C) ## $t6 = 80A2F83C
/* 003F4 80A2F574 AE4E0238 */  sw      $t6, 0x0238($s2)           ## 00000238
/* 003F8 80A2F578 8FBF005C */  lw      $ra, 0x005C($sp)
/* 003FC 80A2F57C 8FB50058 */  lw      $s5, 0x0058($sp)
/* 00400 80A2F580 8FB40054 */  lw      $s4, 0x0054($sp)
/* 00404 80A2F584 8FB30050 */  lw      $s3, 0x0050($sp)
/* 00408 80A2F588 8FB2004C */  lw      $s2, 0x004C($sp)
/* 0040C 80A2F58C 8FB10048 */  lw      $s1, 0x0048($sp)
/* 00410 80A2F590 8FB00044 */  lw      $s0, 0x0044($sp)
/* 00414 80A2F594 D7BA0038 */  ldc1    $f26, 0x0038($sp)
/* 00418 80A2F598 D7B80030 */  ldc1    $f24, 0x0030($sp)
/* 0041C 80A2F59C D7B60028 */  ldc1    $f22, 0x0028($sp)
/* 00420 80A2F5A0 D7B40020 */  ldc1    $f20, 0x0020($sp)
/* 00424 80A2F5A4 03E00008 */  jr      $ra
/* 00428 80A2F5A8 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
