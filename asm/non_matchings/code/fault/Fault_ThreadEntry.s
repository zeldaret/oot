.rdata
glabel D_80147368
    .asciz "フォルトマネージャ:OS_EVENT_CPU_BREAKを受信しました\n"
    .balign 4
glabel D_801473A0
    .asciz "フォルトマネージャ:OS_EVENT_FAULTを受信しました\n"
    .balign 4
glabel D_801473D4
    .asciz "フォルトマネージャ:不明なメッセージを受信しました\n"
    .balign 4
glabel D_80147408
    .asciz "__osGetCurrFaultedThread()=%08x\n"
    .balign 4
glabel D_8014742C
    .asciz "FindFaultedThread()=%08x\n"
    .balign 4
glabel D_80147448
    .asciz "STACK TRACE"
    .balign 4
glabel D_80147454
    .asciz "    CONGRATURATIONS!    "
    .balign 4
glabel D_80147470
    .asciz "All Pages are displayed."
    .balign 4
glabel D_8014748C
    .asciz "       THANK YOU!       "
    .balign 4
glabel D_801474A8
    .asciz " You are great debugger!"
    .balign 4

.text
glabel Fault_ThreadEntry
/* B4D270 800D60D0 3C0AFFFA */  lui   $t2, (0xFFFA5A5A >> 16) # lui $t2, 0xfffa
/* B4D274 800D60D4 03A05825 */  move  $t3, $sp
/* B4D278 800D60D8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B4D27C 800D60DC 354A5A5A */  ori   $t2, (0xFFFA5A5A & 0xFFFF) # ori $t2, $t2, 0x5a5a
.L800D60E0:
/* B4D280 800D60E0 256BFFF8 */  addiu $t3, $t3, -8
/* B4D284 800D60E4 AD6A0000 */  sw    $t2, ($t3)
/* B4D288 800D60E8 157DFFFD */  bne   $t3, $sp, .L800D60E0
/* B4D28C 800D60EC AD6A0004 */   sw    $t2, 4($t3)
/* B4D290 800D60F0 AFB1001C */  sw    $s1, 0x1c($sp)
/* B4D294 800D60F4 3C118017 */  lui   $s1, %hi(sFaultStructPtr) # $s1, 0x8017
/* B4D298 800D60F8 2631A800 */  addiu $s1, %lo(sFaultStructPtr) # addiu $s1, $s1, -0x5800
/* B4D29C 800D60FC AFBF003C */  sw    $ra, 0x3c($sp)
/* B4D2A0 800D6100 AFBE0038 */  sw    $fp, 0x38($sp)
/* B4D2A4 800D6104 AFB70034 */  sw    $s7, 0x34($sp)
/* B4D2A8 800D6108 AFB60030 */  sw    $s6, 0x30($sp)
/* B4D2AC 800D610C AFB5002C */  sw    $s5, 0x2c($sp)
/* B4D2B0 800D6110 AFB40028 */  sw    $s4, 0x28($sp)
/* B4D2B4 800D6114 AFB30024 */  sw    $s3, 0x24($sp)
/* B4D2B8 800D6118 AFB20020 */  sw    $s2, 0x20($sp)
/* B4D2BC 800D611C AFB00018 */  sw    $s0, 0x18($sp)
/* B4D2C0 800D6120 AFA40058 */  sw    $a0, 0x58($sp)
/* B4D2C4 800D6124 8E250000 */  lw    $a1, ($s1)
/* B4D2C8 800D6128 2404000A */  li    $a0, 10
/* B4D2CC 800D612C 24060001 */  li    $a2, 1
/* B4D2D0 800D6130 0C001488 */  jal   osSetEventMesg
/* B4D2D4 800D6134 24A507B0 */   addiu $a1, $a1, 0x7b0
/* B4D2D8 800D6138 8E250000 */  lw    $a1, ($s1)
/* B4D2DC 800D613C 2404000C */  li    $a0, 12
/* B4D2E0 800D6140 24060002 */  li    $a2, 2
/* B4D2E4 800D6144 0C001488 */  jal   osSetEventMesg
/* B4D2E8 800D6148 24A507B0 */   addiu $a1, $a1, 0x7b0
/* B4D2EC 800D614C 3C178014 */  lui   $s7, %hi(D_8014742C) # $s7, 0x8014
/* B4D2F0 800D6150 3C168014 */  lui   $s6, %hi(D_80147408) # $s6, 0x8014
/* B4D2F4 800D6154 3C158014 */  lui   $s5, %hi(D_80147368) # $s5, 0x8014
/* B4D2F8 800D6158 26B57368 */  addiu $s5, %lo(D_80147368) # addiu $s5, $s5, 0x7368
/* B4D2FC 800D615C 26D67408 */  addiu $s6, %lo(D_80147408) # addiu $s6, $s6, 0x7408
/* B4D300 800D6160 26F7742C */  addiu $s7, %lo(D_8014742C) # addiu $s7, $s7, 0x742c
/* B4D304 800D6164 241E0002 */  li    $fp, 2
/* B4D308 800D6168 24140001 */  li    $s4, 1
/* B4D30C 800D616C 27B30054 */  addiu $s3, $sp, 0x54
/* B4D310 800D6170 24120001 */  li    $s2, 1
/* B4D314 800D6174 8E240000 */  lw    $a0, ($s1)
.L800D6178:
/* B4D318 800D6178 02602825 */  move  $a1, $s3
/* B4D31C 800D617C 24060001 */  li    $a2, 1
/* B4D320 800D6180 0C000CA0 */  jal   osRecvMesg
/* B4D324 800D6184 248407B0 */   addiu $a0, $a0, 0x7b0
/* B4D328 800D6188 8FA30054 */  lw    $v1, 0x54($sp)
/* B4D32C 800D618C 14740007 */  bne   $v1, $s4, .L800D61AC
/* B4D330 800D6190 00000000 */   nop   
/* B4D334 800D6194 8E2E0000 */  lw    $t6, ($s1)
/* B4D338 800D6198 02A02025 */  move  $a0, $s5
/* B4D33C 800D619C 0C00084C */  jal   osSyncPrintf
/* B4D340 800D61A0 A1D207CD */   sb    $s2, 0x7cd($t6)
/* B4D344 800D61A4 10000016 */  b     .L800D6200
/* B4D348 800D61A8 00000000 */   nop   
.L800D61AC:
/* B4D34C 800D61AC 147E0009 */  bne   $v1, $fp, .L800D61D4
/* B4D350 800D61B0 24010003 */   li    $at, 3
/* B4D354 800D61B4 8E380000 */  lw    $t8, ($s1)
/* B4D358 800D61B8 240F0002 */  li    $t7, 2
/* B4D35C 800D61BC 3C048014 */  lui   $a0, %hi(D_801473A0) # $a0, 0x8014
/* B4D360 800D61C0 248473A0 */  addiu $a0, %lo(D_801473A0) # addiu $a0, $a0, 0x73a0
/* B4D364 800D61C4 0C00084C */  jal   osSyncPrintf
/* B4D368 800D61C8 A30F07CD */   sb    $t7, 0x7cd($t8)
/* B4D36C 800D61CC 1000000C */  b     .L800D6200
/* B4D370 800D61D0 00000000 */   nop   
.L800D61D4:
/* B4D374 800D61D4 14610005 */  bne   $v1, $at, .L800D61EC
/* B4D378 800D61D8 24190003 */   li    $t9, 3
/* B4D37C 800D61DC 0C035825 */  jal   Fault_UpdatePad
/* B4D380 800D61E0 00008025 */   move  $s0, $zero
/* B4D384 800D61E4 10000014 */  b     .L800D6238
/* B4D388 800D61E8 00000000 */   nop   
.L800D61EC:
/* B4D38C 800D61EC 8E280000 */  lw    $t0, ($s1)
/* B4D390 800D61F0 3C048014 */  lui   $a0, %hi(D_801473D4) # $a0, 0x8014
/* B4D394 800D61F4 248473D4 */  addiu $a0, %lo(D_801473D4) # addiu $a0, $a0, 0x73d4
/* B4D398 800D61F8 0C00084C */  jal   osSyncPrintf
/* B4D39C 800D61FC A11907CD */   sb    $t9, 0x7cd($t0)
.L800D6200:
/* B4D3A0 800D6200 0C041930 */  jal   __osGetCurrFaultedThread
/* B4D3A4 800D6204 00000000 */   nop   
/* B4D3A8 800D6208 00408025 */  move  $s0, $v0
/* B4D3AC 800D620C 02C02025 */  move  $a0, $s6
/* B4D3B0 800D6210 0C00084C */  jal   osSyncPrintf
/* B4D3B4 800D6214 00402825 */   move  $a1, $v0
/* B4D3B8 800D6218 16000007 */  bnez  $s0, .L800D6238
/* B4D3BC 800D621C 00000000 */   nop   
/* B4D3C0 800D6220 0C0354A9 */  jal   Fault_FindFaultedThread
/* B4D3C4 800D6224 00000000 */   nop   
/* B4D3C8 800D6228 00408025 */  move  $s0, $v0
/* B4D3CC 800D622C 02E02025 */  move  $a0, $s7
/* B4D3D0 800D6230 0C00084C */  jal   osSyncPrintf
/* B4D3D4 800D6234 00402825 */   move  $a1, $v0
.L800D6238:
/* B4D3D8 800D6238 5200FFCF */  beql  $s0, $zero, .L800D6178
/* B4D3DC 800D623C 8E240000 */   lw    $a0, ($s1)
/* B4D3E0 800D6240 0C001EA0 */  jal   __osGetFpcCsr
/* B4D3E4 800D6244 00000000 */   nop   
/* B4D3E8 800D6248 2401F07F */  li    $at, -3969
/* B4D3EC 800D624C 0C001E9C */  jal   __osSetFpcCsr
/* B4D3F0 800D6250 00412024 */   and   $a0, $v0, $at
/* B4D3F4 800D6254 8E290000 */  lw    $t1, ($s1)
/* B4D3F8 800D6258 AD3007D0 */  sw    $s0, 0x7d0($t1)
/* B4D3FC 800D625C 8E2A0000 */  lw    $t2, ($s1)
/* B4D400 800D6260 914B07CE */  lbu   $t3, 0x7ce($t2)
/* B4D404 800D6264 15600007 */  bnez  $t3, .L800D6284
/* B4D408 800D6268 00000000 */   nop   
.L800D626C:
/* B4D40C 800D626C 0C03518F */  jal   Fault_Sleep
/* B4D410 800D6270 240403E8 */   li    $a0, 1000
/* B4D414 800D6274 8E2C0000 */  lw    $t4, ($s1)
/* B4D418 800D6278 918D07CE */  lbu   $t5, 0x7ce($t4)
/* B4D41C 800D627C 11A0FFFB */  beqz  $t5, .L800D626C
/* B4D420 800D6280 00000000 */   nop   
.L800D6284:
/* B4D424 800D6284 0C03518F */  jal   Fault_Sleep
/* B4D428 800D6288 240401F4 */   li    $a0, 500
/* B4D42C 800D628C 0C0357BD */  jal   Fault_CommitFB
/* B4D430 800D6290 00000000 */   nop   
/* B4D434 800D6294 8E2E0000 */  lw    $t6, ($s1)
/* B4D438 800D6298 91CF07CF */  lbu   $t7, 0x7cf($t6)
/* B4D43C 800D629C 11E00005 */  beqz  $t7, .L800D62B4
/* B4D440 800D62A0 00000000 */   nop   
/* B4D444 800D62A4 0C0354CB */  jal   Fault_Wait5Seconds
/* B4D448 800D62A8 00000000 */   nop   
/* B4D44C 800D62AC 10000006 */  b     .L800D62C8
/* B4D450 800D62B0 8E380000 */   lw    $t8, ($s1)
.L800D62B4:
/* B4D454 800D62B4 0C035268 */  jal   Fault_DrawCornerRec
/* B4D458 800D62B8 3404F801 */   li    $a0, 63489
/* B4D45C 800D62BC 0C0354EF */  jal   Fault_WaitForButtonCombo
/* B4D460 800D62C0 00000000 */   nop   
/* B4D464 800D62C4 8E380000 */  lw    $t8, ($s1)
.L800D62C8:
/* B4D468 800D62C8 3404FFFF */  li    $a0, 65535
/* B4D46C 800D62CC 0C035AD7 */  jal   FaultDrawer_SetForeColor
/* B4D470 800D62D0 A31207CF */   sb    $s2, 0x7cf($t8)
/* B4D474 800D62D4 0C035AE9 */  jal   FaultDrawer_SetBackColor
/* B4D478 800D62D8 00002025 */   move  $a0, $zero
.L800D62DC:
/* B4D47C 800D62DC 0C035323 */  jal   Fault_PrintThreadContext
/* B4D480 800D62E0 02002025 */   move  $a0, $s0
/* B4D484 800D62E4 0C0353EA */  jal   Fault_LogThreadContext
/* B4D488 800D62E8 02002025 */   move  $a0, $s0
/* B4D48C 800D62EC 0C035213 */  jal   Fault_WaitForInput
/* B4D490 800D62F0 00000000 */   nop   
/* B4D494 800D62F4 0C03523E */  jal   Fault_FillScreenBlack
/* B4D498 800D62F8 00000000 */   nop   
/* B4D49C 800D62FC 3C068014 */  lui   $a2, %hi(D_80147448) # $a2, 0x8014
/* B4D4A0 800D6300 24C67448 */  addiu $a2, %lo(D_80147448) # addiu $a2, $a2, 0x7448
/* B4D4A4 800D6304 24040078 */  li    $a0, 120
/* B4D4A8 800D6308 0C035C26 */  jal   FaultDrawer_DrawText
/* B4D4AC 800D630C 24050010 */   li    $a1, 16
/* B4D4B0 800D6310 02002025 */  move  $a0, $s0
/* B4D4B4 800D6314 24050024 */  li    $a1, 36
/* B4D4B8 800D6318 24060018 */  li    $a2, 24
/* B4D4BC 800D631C 0C0356E2 */  jal   Fault_DrawStackTrace
/* B4D4C0 800D6320 24070016 */   li    $a3, 22
/* B4D4C4 800D6324 02002025 */  move  $a0, $s0
/* B4D4C8 800D6328 0C035742 */  jal   Fault_LogStackTrace
/* B4D4CC 800D632C 24050032 */   li    $a1, 50
/* B4D4D0 800D6330 0C035213 */  jal   Fault_WaitForInput
/* B4D4D4 800D6334 00000000 */   nop   
/* B4D4D8 800D6338 0C0357ED */  jal   Fault_ProcessClients
/* B4D4DC 800D633C 00000000 */   nop   
/* B4D4E0 800D6340 8E04011C */  lw    $a0, 0x11c($s0)
/* B4D4E4 800D6344 8E0500F4 */  lw    $a1, 0xf4($s0)
/* B4D4E8 800D6348 00003025 */  move  $a2, $zero
/* B4D4EC 800D634C 00003825 */  move  $a3, $zero
/* B4D4F0 800D6350 0C0355FD */  jal   Fault_DrawMemDump
/* B4D4F4 800D6354 2484FF00 */   addiu $a0, $a0, -0x100
/* B4D4F8 800D6358 0C035253 */  jal   Fault_FillScreenRed
/* B4D4FC 800D635C 00000000 */   nop   
/* B4D500 800D6360 3C068014 */  lui   $a2, %hi(D_80147454) # $a2, 0x8014
/* B4D504 800D6364 24C67454 */  addiu $a2, %lo(D_80147454) # addiu $a2, $a2, 0x7454
/* B4D508 800D6368 24040040 */  li    $a0, 64
/* B4D50C 800D636C 0C035C26 */  jal   FaultDrawer_DrawText
/* B4D510 800D6370 24050050 */   li    $a1, 80
/* B4D514 800D6374 3C068014 */  lui   $a2, %hi(D_80147470) # $a2, 0x8014
/* B4D518 800D6378 24C67470 */  addiu $a2, %lo(D_80147470) # addiu $a2, $a2, 0x7470
/* B4D51C 800D637C 24040040 */  li    $a0, 64
/* B4D520 800D6380 0C035C26 */  jal   FaultDrawer_DrawText
/* B4D524 800D6384 2405005A */   li    $a1, 90
/* B4D528 800D6388 3C068014 */  lui   $a2, %hi(D_8014748C) # $a2, 0x8014
/* B4D52C 800D638C 24C6748C */  addiu $a2, %lo(D_8014748C) # addiu $a2, $a2, 0x748c
/* B4D530 800D6390 24040040 */  li    $a0, 64
/* B4D534 800D6394 0C035C26 */  jal   FaultDrawer_DrawText
/* B4D538 800D6398 24050064 */   li    $a1, 100
/* B4D53C 800D639C 3C068014 */  lui   $a2, %hi(D_801474A8) # $a2, 0x8014
/* B4D540 800D63A0 24C674A8 */  addiu $a2, %lo(D_801474A8) # addiu $a2, $a2, 0x74a8
/* B4D544 800D63A4 24040040 */  li    $a0, 64
/* B4D548 800D63A8 0C035C26 */  jal   FaultDrawer_DrawText
/* B4D54C 800D63AC 2405006E */   li    $a1, 110
/* B4D550 800D63B0 0C035213 */  jal   Fault_WaitForInput
/* B4D554 800D63B4 00000000 */   nop   
/* B4D558 800D63B8 8E390000 */  lw    $t9, ($s1)
/* B4D55C 800D63BC 932207CC */  lbu   $v0, 0x7cc($t9)
/* B4D560 800D63C0 1040FFC6 */  beqz  $v0, .L800D62DC
/* B4D564 800D63C4 00000000 */   nop   
/* B4D568 800D63C8 14400003 */  bnez  $v0, .L800D63D8
/* B4D56C 800D63CC 00000000 */   nop   
.L800D63D0:
/* B4D570 800D63D0 1040FFFF */  beqz  $v0, .L800D63D0
/* B4D574 800D63D4 00000000 */   nop   
.L800D63D8:
/* B4D578 800D63D8 0C03579E */  jal   Fault_ResumeThread
/* B4D57C 800D63DC 02002025 */   move  $a0, $s0
/* B4D580 800D63E0 1000FF65 */  b     .L800D6178
/* B4D584 800D63E4 8E240000 */   lw    $a0, ($s1)
/* B4D588 800D63E8 00000000 */  nop   
/* B4D58C 800D63EC 00000000 */  nop   
/* B4D590 800D63F0 00000000 */  nop   
/* B4D594 800D63F4 00000000 */  nop   
/* B4D598 800D63F8 00000000 */  nop   
/* B4D59C 800D63FC 00000000 */  nop   
/* B4D5A0 800D6400 8FBF003C */  lw    $ra, 0x3c($sp)
/* B4D5A4 800D6404 8FB00018 */  lw    $s0, 0x18($sp)
/* B4D5A8 800D6408 8FB1001C */  lw    $s1, 0x1c($sp)
/* B4D5AC 800D640C 8FB20020 */  lw    $s2, 0x20($sp)
/* B4D5B0 800D6410 8FB30024 */  lw    $s3, 0x24($sp)
/* B4D5B4 800D6414 8FB40028 */  lw    $s4, 0x28($sp)
/* B4D5B8 800D6418 8FB5002C */  lw    $s5, 0x2c($sp)
/* B4D5BC 800D641C 8FB60030 */  lw    $s6, 0x30($sp)
/* B4D5C0 800D6420 8FB70034 */  lw    $s7, 0x34($sp)
/* B4D5C4 800D6424 8FBE0038 */  lw    $fp, 0x38($sp)
/* B4D5C8 800D6428 03E00008 */  jr    $ra
/* B4D5CC 800D642C 27BD0058 */   addiu $sp, $sp, 0x58

