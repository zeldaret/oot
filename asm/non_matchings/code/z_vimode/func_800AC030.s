.rdata
glabel D_801413A0
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801413B0
    .asciz "osvimodep = %08x\n"
    .balign 4

glabel D_801413C4
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801413D4
    .asciz "osvimodep->comRegs.ctrl = %08x\n"
    .balign 4

glabel D_801413F4
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141404
    .asciz "osvimodep->comRegs.width = %08x\n"
    .balign 4

glabel D_80141428
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141438
    .asciz "osvimodep->comRegs.burst = %08x\n"
    .balign 4

glabel D_8014145C
    .asciz "../z_vimode.c"
    .balign 4

glabel D_8014146C
    .asciz "osvimodep->comRegs.vSync = %08x\n"
    .balign 4

glabel D_80141490
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801414A0
    .asciz "osvimodep->comRegs.hSync = %08x\n"
    .balign 4

glabel D_801414C4
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801414D4
    .asciz "osvimodep->comRegs.leap = %08x\n"
    .balign 4

glabel D_801414F4
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141504
    .asciz "osvimodep->comRegs.hStart = %08x\n"
    .balign 4

glabel D_80141528
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141538
    .asciz "osvimodep->comRegs.xScale = %08x\n"
    .balign 4

glabel D_8014155C
    .asciz "../z_vimode.c"
    .balign 4

glabel D_8014156C
    .asciz "osvimodep->fldRegs[0].vStart = %08x\n"
    .balign 4

glabel D_80141594
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801415A4
    .asciz "osvimodep->fldRegs[0].vBurst = %08x\n"
    .balign 4

glabel D_801415CC
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801415DC
    .asciz "osvimodep->fldRegs[0].origin = %08x\n"
    .balign 4

glabel D_80141604
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141614
    .asciz "osvimodep->fldRegs[0].yScale = %08x\n"
    .balign 4

glabel D_8014163C
    .asciz "../z_vimode.c"
    .balign 4

glabel D_8014164C
    .asciz "osvimodep->fldRegs[0].vIntr = %08x\n"
    .balign 4

glabel D_80141670
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141680
    .asciz "osvimodep->fldRegs[1].vStart = %08x\n"
    .balign 4

glabel D_801416A8
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801416B8
    .asciz "osvimodep->fldRegs[1].vBurst = %08x\n"
    .balign 4

glabel D_801416E0
    .asciz "../z_vimode.c"
    .balign 4

glabel D_801416F0
    .asciz "osvimodep->fldRegs[1].origin = %08x\n"
    .balign 4

glabel D_80141718
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141728
    .asciz "osvimodep->fldRegs[1].yScale = %08x\n"
    .balign 4

glabel D_80141750
    .asciz "../z_vimode.c"
    .balign 4

glabel D_80141760
    .asciz "osvimodep->fldRegs[1].vIntr = %08x\n"
    .balign 4

.text
glabel func_800AC030
/* B231D0 800AC030 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B231D4 800AC034 AFA40018 */  sw    $a0, 0x18($sp)
/* B231D8 800AC038 AFBF0014 */  sw    $ra, 0x14($sp)
/* B231DC 800AC03C 3C048014 */  lui   $a0, %hi(D_801413A0) # $a0, 0x8014
/* B231E0 800AC040 248413A0 */  addiu $a0, %lo(D_801413A0) # addiu $a0, $a0, 0x13a0
/* B231E4 800AC044 0C000B84 */  jal   LogUtils_LogThreadId
/* B231E8 800AC048 24050057 */   li    $a1, 87
/* B231EC 800AC04C 3C048014 */  lui   $a0, %hi(D_801413B0) # $a0, 0x8014
/* B231F0 800AC050 248413B0 */  addiu $a0, %lo(D_801413B0) # addiu $a0, $a0, 0x13b0
/* B231F4 800AC054 0C00084C */  jal   osSyncPrintf
/* B231F8 800AC058 8FA50018 */   lw    $a1, 0x18($sp)
/* B231FC 800AC05C 3C048014 */  lui   $a0, %hi(D_801413C4) # $a0, 0x8014
/* B23200 800AC060 248413C4 */  addiu $a0, %lo(D_801413C4) # addiu $a0, $a0, 0x13c4
/* B23204 800AC064 0C000B84 */  jal   LogUtils_LogThreadId
/* B23208 800AC068 24050058 */   li    $a1, 88
/* B2320C 800AC06C 8FAE0018 */  lw    $t6, 0x18($sp)
/* B23210 800AC070 3C048014 */  lui   $a0, %hi(D_801413D4) # $a0, 0x8014
/* B23214 800AC074 248413D4 */  addiu $a0, %lo(D_801413D4) # addiu $a0, $a0, 0x13d4
/* B23218 800AC078 0C00084C */  jal   osSyncPrintf
/* B2321C 800AC07C 8DC50004 */   lw    $a1, 4($t6)
/* B23220 800AC080 3C048014 */  lui   $a0, %hi(D_801413F4) # $a0, 0x8014
/* B23224 800AC084 248413F4 */  addiu $a0, %lo(D_801413F4) # addiu $a0, $a0, 0x13f4
/* B23228 800AC088 0C000B84 */  jal   LogUtils_LogThreadId
/* B2322C 800AC08C 24050059 */   li    $a1, 89
/* B23230 800AC090 8FAF0018 */  lw    $t7, 0x18($sp)
/* B23234 800AC094 3C048014 */  lui   $a0, %hi(D_80141404) # $a0, 0x8014
/* B23238 800AC098 24841404 */  addiu $a0, %lo(D_80141404) # addiu $a0, $a0, 0x1404
/* B2323C 800AC09C 0C00084C */  jal   osSyncPrintf
/* B23240 800AC0A0 8DE50008 */   lw    $a1, 8($t7)
/* B23244 800AC0A4 3C048014 */  lui   $a0, %hi(D_80141428) # $a0, 0x8014
/* B23248 800AC0A8 24841428 */  addiu $a0, %lo(D_80141428) # addiu $a0, $a0, 0x1428
/* B2324C 800AC0AC 0C000B84 */  jal   LogUtils_LogThreadId
/* B23250 800AC0B0 2405005A */   li    $a1, 90
/* B23254 800AC0B4 8FB80018 */  lw    $t8, 0x18($sp)
/* B23258 800AC0B8 3C048014 */  lui   $a0, %hi(D_80141438) # $a0, 0x8014
/* B2325C 800AC0BC 24841438 */  addiu $a0, %lo(D_80141438) # addiu $a0, $a0, 0x1438
/* B23260 800AC0C0 0C00084C */  jal   osSyncPrintf
/* B23264 800AC0C4 8F05000C */   lw    $a1, 0xc($t8)
/* B23268 800AC0C8 3C048014 */  lui   $a0, %hi(D_8014145C) # $a0, 0x8014
/* B2326C 800AC0CC 2484145C */  addiu $a0, %lo(D_8014145C) # addiu $a0, $a0, 0x145c
/* B23270 800AC0D0 0C000B84 */  jal   LogUtils_LogThreadId
/* B23274 800AC0D4 2405005B */   li    $a1, 91
/* B23278 800AC0D8 8FB90018 */  lw    $t9, 0x18($sp)
/* B2327C 800AC0DC 3C048014 */  lui   $a0, %hi(D_8014146C) # $a0, 0x8014
/* B23280 800AC0E0 2484146C */  addiu $a0, %lo(D_8014146C) # addiu $a0, $a0, 0x146c
/* B23284 800AC0E4 0C00084C */  jal   osSyncPrintf
/* B23288 800AC0E8 8F250010 */   lw    $a1, 0x10($t9)
/* B2328C 800AC0EC 3C048014 */  lui   $a0, %hi(D_80141490) # $a0, 0x8014
/* B23290 800AC0F0 24841490 */  addiu $a0, %lo(D_80141490) # addiu $a0, $a0, 0x1490
/* B23294 800AC0F4 0C000B84 */  jal   LogUtils_LogThreadId
/* B23298 800AC0F8 2405005C */   li    $a1, 92
/* B2329C 800AC0FC 8FA80018 */  lw    $t0, 0x18($sp)
/* B232A0 800AC100 3C048014 */  lui   $a0, %hi(D_801414A0) # $a0, 0x8014
/* B232A4 800AC104 248414A0 */  addiu $a0, %lo(D_801414A0) # addiu $a0, $a0, 0x14a0
/* B232A8 800AC108 0C00084C */  jal   osSyncPrintf
/* B232AC 800AC10C 8D050014 */   lw    $a1, 0x14($t0)
/* B232B0 800AC110 3C048014 */  lui   $a0, %hi(D_801414C4) # $a0, 0x8014
/* B232B4 800AC114 248414C4 */  addiu $a0, %lo(D_801414C4) # addiu $a0, $a0, 0x14c4
/* B232B8 800AC118 0C000B84 */  jal   LogUtils_LogThreadId
/* B232BC 800AC11C 2405005D */   li    $a1, 93
/* B232C0 800AC120 8FA90018 */  lw    $t1, 0x18($sp)
/* B232C4 800AC124 3C048014 */  lui   $a0, %hi(D_801414D4) # $a0, 0x8014
/* B232C8 800AC128 248414D4 */  addiu $a0, %lo(D_801414D4) # addiu $a0, $a0, 0x14d4
/* B232CC 800AC12C 0C00084C */  jal   osSyncPrintf
/* B232D0 800AC130 8D250018 */   lw    $a1, 0x18($t1)
/* B232D4 800AC134 3C048014 */  lui   $a0, %hi(D_801414F4) # $a0, 0x8014
/* B232D8 800AC138 248414F4 */  addiu $a0, %lo(D_801414F4) # addiu $a0, $a0, 0x14f4
/* B232DC 800AC13C 0C000B84 */  jal   LogUtils_LogThreadId
/* B232E0 800AC140 2405005E */   li    $a1, 94
/* B232E4 800AC144 8FAA0018 */  lw    $t2, 0x18($sp)
/* B232E8 800AC148 3C048014 */  lui   $a0, %hi(D_80141504) # $a0, 0x8014
/* B232EC 800AC14C 24841504 */  addiu $a0, %lo(D_80141504) # addiu $a0, $a0, 0x1504
/* B232F0 800AC150 0C00084C */  jal   osSyncPrintf
/* B232F4 800AC154 8D45001C */   lw    $a1, 0x1c($t2)
/* B232F8 800AC158 3C048014 */  lui   $a0, %hi(D_80141528) # $a0, 0x8014
/* B232FC 800AC15C 24841528 */  addiu $a0, %lo(D_80141528) # addiu $a0, $a0, 0x1528
/* B23300 800AC160 0C000B84 */  jal   LogUtils_LogThreadId
/* B23304 800AC164 2405005F */   li    $a1, 95
/* B23308 800AC168 8FAB0018 */  lw    $t3, 0x18($sp)
/* B2330C 800AC16C 3C048014 */  lui   $a0, %hi(D_80141538) # $a0, 0x8014
/* B23310 800AC170 24841538 */  addiu $a0, %lo(D_80141538) # addiu $a0, $a0, 0x1538
/* B23314 800AC174 0C00084C */  jal   osSyncPrintf
/* B23318 800AC178 8D650020 */   lw    $a1, 0x20($t3)
/* B2331C 800AC17C 3C048014 */  lui   $a0, %hi(D_8014155C) # $a0, 0x8014
/* B23320 800AC180 2484155C */  addiu $a0, %lo(D_8014155C) # addiu $a0, $a0, 0x155c
/* B23324 800AC184 0C000B84 */  jal   LogUtils_LogThreadId
/* B23328 800AC188 24050060 */   li    $a1, 96
/* B2332C 800AC18C 8FAC0018 */  lw    $t4, 0x18($sp)
/* B23330 800AC190 3C048014 */  lui   $a0, %hi(D_8014156C) # $a0, 0x8014
/* B23334 800AC194 2484156C */  addiu $a0, %lo(D_8014156C) # addiu $a0, $a0, 0x156c
/* B23338 800AC198 0C00084C */  jal   osSyncPrintf
/* B2333C 800AC19C 8D850030 */   lw    $a1, 0x30($t4)
/* B23340 800AC1A0 3C048014 */  lui   $a0, %hi(D_80141594) # $a0, 0x8014
/* B23344 800AC1A4 24841594 */  addiu $a0, %lo(D_80141594) # addiu $a0, $a0, 0x1594
/* B23348 800AC1A8 0C000B84 */  jal   LogUtils_LogThreadId
/* B2334C 800AC1AC 24050061 */   li    $a1, 97
/* B23350 800AC1B0 8FAD0018 */  lw    $t5, 0x18($sp)
/* B23354 800AC1B4 3C048014 */  lui   $a0, %hi(D_801415A4) # $a0, 0x8014
/* B23358 800AC1B8 248415A4 */  addiu $a0, %lo(D_801415A4) # addiu $a0, $a0, 0x15a4
/* B2335C 800AC1BC 0C00084C */  jal   osSyncPrintf
/* B23360 800AC1C0 8DA50034 */   lw    $a1, 0x34($t5)
/* B23364 800AC1C4 3C048014 */  lui   $a0, %hi(D_801415CC) # $a0, 0x8014
/* B23368 800AC1C8 248415CC */  addiu $a0, %lo(D_801415CC) # addiu $a0, $a0, 0x15cc
/* B2336C 800AC1CC 0C000B84 */  jal   LogUtils_LogThreadId
/* B23370 800AC1D0 24050062 */   li    $a1, 98
/* B23374 800AC1D4 8FAE0018 */  lw    $t6, 0x18($sp)
/* B23378 800AC1D8 3C048014 */  lui   $a0, %hi(D_801415DC) # $a0, 0x8014
/* B2337C 800AC1DC 248415DC */  addiu $a0, %lo(D_801415DC) # addiu $a0, $a0, 0x15dc
/* B23380 800AC1E0 0C00084C */  jal   osSyncPrintf
/* B23384 800AC1E4 8DC50028 */   lw    $a1, 0x28($t6)
/* B23388 800AC1E8 3C048014 */  lui   $a0, %hi(D_80141604) # $a0, 0x8014
/* B2338C 800AC1EC 24841604 */  addiu $a0, %lo(D_80141604) # addiu $a0, $a0, 0x1604
/* B23390 800AC1F0 0C000B84 */  jal   LogUtils_LogThreadId
/* B23394 800AC1F4 24050063 */   li    $a1, 99
/* B23398 800AC1F8 8FAF0018 */  lw    $t7, 0x18($sp)
/* B2339C 800AC1FC 3C048014 */  lui   $a0, %hi(D_80141614) # $a0, 0x8014
/* B233A0 800AC200 24841614 */  addiu $a0, %lo(D_80141614) # addiu $a0, $a0, 0x1614
/* B233A4 800AC204 0C00084C */  jal   osSyncPrintf
/* B233A8 800AC208 8DE5002C */   lw    $a1, 0x2c($t7)
/* B233AC 800AC20C 3C048014 */  lui   $a0, %hi(D_8014163C) # $a0, 0x8014
/* B233B0 800AC210 2484163C */  addiu $a0, %lo(D_8014163C) # addiu $a0, $a0, 0x163c
/* B233B4 800AC214 0C000B84 */  jal   LogUtils_LogThreadId
/* B233B8 800AC218 24050064 */   li    $a1, 100
/* B233BC 800AC21C 8FB80018 */  lw    $t8, 0x18($sp)
/* B233C0 800AC220 3C048014 */  lui   $a0, %hi(D_8014164C) # $a0, 0x8014
/* B233C4 800AC224 2484164C */  addiu $a0, %lo(D_8014164C) # addiu $a0, $a0, 0x164c
/* B233C8 800AC228 0C00084C */  jal   osSyncPrintf
/* B233CC 800AC22C 8F050038 */   lw    $a1, 0x38($t8)
/* B233D0 800AC230 3C048014 */  lui   $a0, %hi(D_80141670) # $a0, 0x8014
/* B233D4 800AC234 24841670 */  addiu $a0, %lo(D_80141670) # addiu $a0, $a0, 0x1670
/* B233D8 800AC238 0C000B84 */  jal   LogUtils_LogThreadId
/* B233DC 800AC23C 24050065 */   li    $a1, 101
/* B233E0 800AC240 8FB90018 */  lw    $t9, 0x18($sp)
/* B233E4 800AC244 3C048014 */  lui   $a0, %hi(D_80141680) # $a0, 0x8014
/* B233E8 800AC248 24841680 */  addiu $a0, %lo(D_80141680) # addiu $a0, $a0, 0x1680
/* B233EC 800AC24C 0C00084C */  jal   osSyncPrintf
/* B233F0 800AC250 8F250044 */   lw    $a1, 0x44($t9)
/* B233F4 800AC254 3C048014 */  lui   $a0, %hi(D_801416A8) # $a0, 0x8014
/* B233F8 800AC258 248416A8 */  addiu $a0, %lo(D_801416A8) # addiu $a0, $a0, 0x16a8
/* B233FC 800AC25C 0C000B84 */  jal   LogUtils_LogThreadId
/* B23400 800AC260 24050066 */   li    $a1, 102
/* B23404 800AC264 8FA80018 */  lw    $t0, 0x18($sp)
/* B23408 800AC268 3C048014 */  lui   $a0, %hi(D_801416B8) # $a0, 0x8014
/* B2340C 800AC26C 248416B8 */  addiu $a0, %lo(D_801416B8) # addiu $a0, $a0, 0x16b8
/* B23410 800AC270 0C00084C */  jal   osSyncPrintf
/* B23414 800AC274 8D050048 */   lw    $a1, 0x48($t0)
/* B23418 800AC278 3C048014 */  lui   $a0, %hi(D_801416E0) # $a0, 0x8014
/* B2341C 800AC27C 248416E0 */  addiu $a0, %lo(D_801416E0) # addiu $a0, $a0, 0x16e0
/* B23420 800AC280 0C000B84 */  jal   LogUtils_LogThreadId
/* B23424 800AC284 24050067 */   li    $a1, 103
/* B23428 800AC288 8FA90018 */  lw    $t1, 0x18($sp)
/* B2342C 800AC28C 3C048014 */  lui   $a0, %hi(D_801416F0) # $a0, 0x8014
/* B23430 800AC290 248416F0 */  addiu $a0, %lo(D_801416F0) # addiu $a0, $a0, 0x16f0
/* B23434 800AC294 0C00084C */  jal   osSyncPrintf
/* B23438 800AC298 8D25003C */   lw    $a1, 0x3c($t1)
/* B2343C 800AC29C 3C048014 */  lui   $a0, %hi(D_80141718) # $a0, 0x8014
/* B23440 800AC2A0 24841718 */  addiu $a0, %lo(D_80141718) # addiu $a0, $a0, 0x1718
/* B23444 800AC2A4 0C000B84 */  jal   LogUtils_LogThreadId
/* B23448 800AC2A8 24050068 */   li    $a1, 104
/* B2344C 800AC2AC 8FAA0018 */  lw    $t2, 0x18($sp)
/* B23450 800AC2B0 3C048014 */  lui   $a0, %hi(D_80141728) # $a0, 0x8014
/* B23454 800AC2B4 24841728 */  addiu $a0, %lo(D_80141728) # addiu $a0, $a0, 0x1728
/* B23458 800AC2B8 0C00084C */  jal   osSyncPrintf
/* B2345C 800AC2BC 8D450040 */   lw    $a1, 0x40($t2)
/* B23460 800AC2C0 3C048014 */  lui   $a0, %hi(D_80141750) # $a0, 0x8014
/* B23464 800AC2C4 24841750 */  addiu $a0, %lo(D_80141750) # addiu $a0, $a0, 0x1750
/* B23468 800AC2C8 0C000B84 */  jal   LogUtils_LogThreadId
/* B2346C 800AC2CC 24050069 */   li    $a1, 105
/* B23470 800AC2D0 8FAB0018 */  lw    $t3, 0x18($sp)
/* B23474 800AC2D4 3C048014 */  lui   $a0, %hi(D_80141760) # $a0, 0x8014
/* B23478 800AC2D8 24841760 */  addiu $a0, %lo(D_80141760) # addiu $a0, $a0, 0x1760
/* B2347C 800AC2DC 0C00084C */  jal   osSyncPrintf
/* B23480 800AC2E0 8D65004C */   lw    $a1, 0x4c($t3)
/* B23484 800AC2E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B23488 800AC2E8 27BD0018 */  addiu $sp, $sp, 0x18
/* B2348C 800AC2EC 03E00008 */  jr    $ra
/* B23490 800AC2F0 00000000 */   nop   

