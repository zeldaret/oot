.rdata
glabel D_80A909F0
    .asciz "\n\n"
    .balign 4

glabel D_80A909F4
    .asciz "[32m☆☆☆☆☆ 梅田参号見参！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A90A24
    .asciz "[33m☆☆☆☆☆ 元？(引数０) ☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A90A54
    .asciz "[33m☆☆☆☆☆ 元？(Ｚアングル) ☆☆ %f\n[m"
    .balign 4

glabel D_80A90A84
    .asciz "[33m☆☆☆☆☆ 補正座標Ｘ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A90AB4
    .asciz "[33m☆☆☆☆☆ 補正座標Ｙ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A90AE4
    .asciz "[33m☆☆☆☆☆ 補正座標Ｚ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A90B14
    .asciz "[33m☆☆☆☆☆ SAVE       ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A90B44
    .asciz "\n\n"
    .balign 4

.text
glabel EnKakasi2_Init
/* 00000 80A90010 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00004 80A90014 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00008 80A90018 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80A9001C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00010 80A90020 3C0480A9 */  lui     $a0, %hi(D_80A909F0)       ## $a0 = 80A90000
/* 00014 80A90024 AFA5004C */  sw      $a1, 0x004C($sp)
/* 00018 80A90028 0C00084C */  jal     osSyncPrintf

/* 0001C 80A9002C 248409F0 */  addiu   $a0, $a0, %lo(D_80A909F0)  ## $a0 = 80A909F0
/* 00020 80A90030 3C0480A9 */  lui     $a0, %hi(D_80A909F4)       ## $a0 = 80A90000
/* 00024 80A90034 0C00084C */  jal     osSyncPrintf

/* 00028 80A90038 248409F4 */  addiu   $a0, $a0, %lo(D_80A909F4)  ## $a0 = 80A909F4
/* 0002C 80A9003C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00030 80A90040 86190034 */  lh      $t9, 0x0034($s0)           ## 00000034
/* 00034 80A90044 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 00038 80A90048 304E003F */  andi    $t6, $v0, 0x003F           ## $t6 = 00000000
/* 0003C 80A9004C A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 00040 80A90050 00027983 */  sra     $t7, $v0,  6
/* 00044 80A90054 86080196 */  lh      $t0, 0x0196($s0)           ## 00000196
/* 00048 80A90058 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 0004C 80A9005C 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00050 80A90060 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 00054 80A90064 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 00058 80A90068 468020A0 */  cvt.s.w $f2, $f4
/* 0005C 80A9006C 15010002 */  bne     $t0, $at, .L80A90078
/* 00060 80A90070 46803320 */  cvt.s.w $f12, $f6
/* 00064 80A90074 A6090196 */  sh      $t1, 0x0196($s0)           ## 00000196
.L80A90078:
/* 00068 80A90078 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0006C 80A9007C 44810000 */  mtc1    $at, $f0                   ## $f0 = 40.00
/* 00070 80A90080 46001121 */  cvt.d.s $f4, $f2
/* 00074 80A90084 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 00078 80A90088 46001202 */  mul.s   $f8, $f2, $f0
/* 0007C 80A9008C A20A001F */  sb      $t2, 0x001F($s0)           ## 0000001F
/* 00080 80A90090 44072000 */  mfc1    $a3, $f4
/* 00084 80A90094 46006402 */  mul.s   $f16, $f12, $f0
/* 00088 80A90098 44062800 */  mfc1    $a2, $f5
/* 0008C 80A9009C 3C0480A9 */  lui     $a0, %hi(D_80A90A24)       ## $a0 = 80A90000
/* 00090 80A900A0 24840A24 */  addiu   $a0, $a0, %lo(D_80A90A24)  ## $a0 = 80A90A24
/* 00094 80A900A4 46004280 */  add.s   $f10, $f8, $f0
/* 00098 80A900A8 46008480 */  add.s   $f18, $f16, $f0
/* 0009C 80A900AC E60A019C */  swc1    $f10, 0x019C($s0)          ## 0000019C
/* 000A0 80A900B0 E61201A0 */  swc1    $f18, 0x01A0($s0)          ## 000001A0
/* 000A4 80A900B4 0C00084C */  jal     osSyncPrintf

/* 000A8 80A900B8 E7AC0038 */  swc1    $f12, 0x0038($sp)
/* 000AC 80A900BC C7AC0038 */  lwc1    $f12, 0x0038($sp)
/* 000B0 80A900C0 3C0480A9 */  lui     $a0, %hi(D_80A90A54)       ## $a0 = 80A90000
/* 000B4 80A900C4 24840A54 */  addiu   $a0, $a0, %lo(D_80A90A54)  ## $a0 = 80A90A54
/* 000B8 80A900C8 460061A1 */  cvt.d.s $f6, $f12
/* 000BC 80A900CC 44073000 */  mfc1    $a3, $f6
/* 000C0 80A900D0 44063800 */  mfc1    $a2, $f7
/* 000C4 80A900D4 0C00084C */  jal     osSyncPrintf

/* 000C8 80A900D8 00000000 */  nop
/* 000CC 80A900DC C608019C */  lwc1    $f8, 0x019C($s0)           ## 0000019C
/* 000D0 80A900E0 3C0480A9 */  lui     $a0, %hi(D_80A90A84)       ## $a0 = 80A90000
/* 000D4 80A900E4 24840A84 */  addiu   $a0, $a0, %lo(D_80A90A84)  ## $a0 = 80A90A84
/* 000D8 80A900E8 460042A1 */  cvt.d.s $f10, $f8
/* 000DC 80A900EC 44075000 */  mfc1    $a3, $f10
/* 000E0 80A900F0 44065800 */  mfc1    $a2, $f11
/* 000E4 80A900F4 0C00084C */  jal     osSyncPrintf

/* 000E8 80A900F8 00000000 */  nop
/* 000EC 80A900FC C61001A0 */  lwc1    $f16, 0x01A0($s0)          ## 000001A0
/* 000F0 80A90100 3C0480A9 */  lui     $a0, %hi(D_80A90AB4)       ## $a0 = 80A90000
/* 000F4 80A90104 24840AB4 */  addiu   $a0, $a0, %lo(D_80A90AB4)  ## $a0 = 80A90AB4
/* 000F8 80A90108 460084A1 */  cvt.d.s $f18, $f16
/* 000FC 80A9010C 44079000 */  mfc1    $a3, $f18
/* 00100 80A90110 44069800 */  mfc1    $a2, $f19
/* 00104 80A90114 0C00084C */  jal     osSyncPrintf

/* 00108 80A90118 00000000 */  nop
/* 0010C 80A9011C C60401A4 */  lwc1    $f4, 0x01A4($s0)           ## 000001A4
/* 00110 80A90120 3C0480A9 */  lui     $a0, %hi(D_80A90AE4)       ## $a0 = 80A90000
/* 00114 80A90124 24840AE4 */  addiu   $a0, $a0, %lo(D_80A90AE4)  ## $a0 = 80A90AE4
/* 00118 80A90128 460021A1 */  cvt.d.s $f6, $f4
/* 0011C 80A9012C 44073000 */  mfc1    $a3, $f6
/* 00120 80A90130 44063800 */  mfc1    $a2, $f7
/* 00124 80A90134 0C00084C */  jal     osSyncPrintf

/* 00128 80A90138 00000000 */  nop
/* 0012C 80A9013C 3C0480A9 */  lui     $a0, %hi(D_80A90B14)       ## $a0 = 80A90000
/* 00130 80A90140 24840B14 */  addiu   $a0, $a0, %lo(D_80A90B14)  ## $a0 = 80A90B14
/* 00134 80A90144 0C00084C */  jal     osSyncPrintf

/* 00138 80A90148 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
/* 0013C 80A9014C 3C0480A9 */  lui     $a0, %hi(D_80A90B44)       ## $a0 = 80A90000
/* 00140 80A90150 0C00084C */  jal     osSyncPrintf

/* 00144 80A90154 24840B44 */  addiu   $a0, $a0, %lo(D_80A90B44)  ## $a0 = 80A90B44
/* 00148 80A90158 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 0014C 80A9015C 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 00150 80A90160 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 00154 80A90164 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00158 80A90168 A20B00AE */  sb      $t3, 0x00AE($s0)           ## 000000AE
/* 0015C 80A9016C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00160 80A90170 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00164 80A90174 0C00B58B */  jal     Actor_SetScale

/* 00168 80A90178 E60801A8 */  swc1    $f8, 0x01A8($s0)           ## 000001A8
/* 0016C 80A9017C 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 00170 80A90180 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
/* 00174 80A90184 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 00178 80A90188 358D0400 */  ori     $t5, $t4, 0x0400           ## $t5 = 00000400
/* 0017C 80A9018C AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
/* 00180 80A90190 04A0001F */  bltz    $a1, .L80A90210
/* 00184 80A90194 A60E0198 */  sh      $t6, 0x0198($s0)           ## 00000198
/* 00188 80A90198 0C00B2D0 */  jal     Flags_GetSwitch

/* 0018C 80A9019C 8FA4004C */  lw      $a0, 0x004C($sp)
/* 00190 80A901A0 1040001B */  beq     $v0, $zero, .L80A90210
/* 00194 80A901A4 3C0F80A9 */  lui     $t7, %hi(func_80A90948)    ## $t7 = 80A90000
/* 00198 80A901A8 25EF0948 */  addiu   $t7, $t7, %lo(func_80A90948) ## $t7 = 80A90948
/* 0019C 80A901AC AE0F0134 */  sw      $t7, 0x0134($s0)           ## 00000134
/* 001A0 80A901B0 260501AC */  addiu   $a1, $s0, 0x01AC           ## $a1 = 000001AC
/* 001A4 80A901B4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 001A8 80A901B8 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 001AC 80A901BC 8FA4004C */  lw      $a0, 0x004C($sp)
/* 001B0 80A901C0 3C0780A9 */  lui     $a3, %hi(D_80A909A0)       ## $a3 = 80A90000
/* 001B4 80A901C4 8FA50034 */  lw      $a1, 0x0034($sp)
/* 001B8 80A901C8 24E709A0 */  addiu   $a3, $a3, %lo(D_80A909A0)  ## $a3 = 80A909A0
/* 001BC 80A901CC 8FA4004C */  lw      $a0, 0x004C($sp)
/* 001C0 80A901D0 0C01712B */  jal     ActorCollider_InitCylinder

/* 001C4 80A901D4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001C8 80A901D8 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 001CC 80A901DC 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 001D0 80A901E0 24E70214 */  addiu   $a3, $a3, 0x0214           ## $a3 = 06000214
/* 001D4 80A901E4 24C665B0 */  addiu   $a2, $a2, 0x65B0           ## $a2 = 060065B0
/* 001D8 80A901E8 8FA4004C */  lw      $a0, 0x004C($sp)
/* 001DC 80A901EC 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 001E0 80A901F0 AFA00010 */  sw      $zero, 0x0010($sp)
/* 001E4 80A901F4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 001E8 80A901F8 0C0291BE */  jal     SkelAnime_InitSV
/* 001EC 80A901FC AFA00018 */  sw      $zero, 0x0018($sp)
/* 001F0 80A90200 3C1880A9 */  lui     $t8, %hi(func_80A9062C)    ## $t8 = 80A90000
/* 001F4 80A90204 2718062C */  addiu   $t8, $t8, %lo(func_80A9062C) ## $t8 = 80A9062C
/* 001F8 80A90208 10000007 */  beq     $zero, $zero, .L80A90228
/* 001FC 80A9020C AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
.L80A90210:
/* 00200 80A90210 3C01C5FA */  lui     $at, 0xC5FA                ## $at = C5FA0000
/* 00204 80A90214 44815000 */  mtc1    $at, $f10                  ## $f10 = -8000.00
/* 00208 80A90218 3C1980A9 */  lui     $t9, %hi(func_80A90264)    ## $t9 = 80A90000
/* 0020C 80A9021C 27390264 */  addiu   $t9, $t9, %lo(func_80A90264) ## $t9 = 80A90264
/* 00210 80A90220 AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
/* 00214 80A90224 E60A00BC */  swc1    $f10, 0x00BC($s0)          ## 000000BC
.L80A90228:
/* 00218 80A90228 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0021C 80A9022C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00220 80A90230 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00224 80A90234 03E00008 */  jr      $ra
/* 00228 80A90238 00000000 */  nop


