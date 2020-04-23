.rdata
glabel D_801452A4
    .asciz "../graph.c"
    .balign 4

glabel D_801452B0
    .asciz "WORK_DISP 開始"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452C0
    .asciz "POLY_OPA_DISP 開始"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452D4
    .asciz "POLY_XLU_DISP 開始"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452E8
    .asciz "OVERLAY_DISP 開始"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452FC
    .asciz "../graph.c"
    .balign 4

glabel D_80145308
    .asciz "../graph.c"
    .balign 4

glabel D_80145314
    .asciz "WORK_DISP 終了"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_80145324
    .asciz "POLY_OPA_DISP 終了"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_80145338
    .asciz "POLY_XLU_DISP 終了"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_8014534C
    .asciz "OVERLAY_DISP 終了"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_80145360
    .asciz "../graph.c"
    .balign 4

glabel D_8014536C
    .asciz "../graph.c"
    .balign 4

glabel D_80145378
    .asciz "../graph.c"
    .balign 4

glabel D_80145384
    .asciz "do_count_fault"
    .balign 4

glabel D_80145394
    .asciz "%c"
    .balign 4

glabel D_80145398
    .asciz "\x1b[41;37mダイナミック領域先頭が破壊されています\n\x1b[m"
    #ダイナミック領域先頭が破壊されています | Dynamic area head is destroyed
    .balign 4

glabel D_801453CC
    .asciz "../graph.c"
    .balign 4

glabel D_801453D8
    .asciz "%c"
    .balign 4

glabel D_801453DC
    .asciz "\x1b[41;37mダイナミック領域末尾が破壊されています\n\x1b[m"
    # EUC-JP: ダイナミック領域末尾が破壊されています | Dynamic region tail is destroyed
    .balign 4

glabel D_80145410
    .asciz "../graph.c"
    .balign 4

glabel D_8014541C
    .asciz "%c"
    .balign 4

glabel D_80145420
    .asciz "\x1b[41;37mゼルダ0は死んでしまった(graph_alloc is empty)\n\x1b[m"
    # EUC-JP: ゼルダ0は死んでしまった | 'Zelda 0 is dead'?
    .balign 4

glabel D_8014545C
    .asciz "%c"
    .balign 4

glabel D_80145460
    .asciz "\x1b[41;37mゼルダ1は死んでしまった(graph_alloc is empty)\n\x1b[m"
    # EUC-JP: ゼルダ1は死んでしまった | 'Zelda 1 is dead'?
    .balign 4

glabel D_8014549C
    .asciz "%c"
    .balign 4

glabel D_801454A0
    .asciz "\x1b[41;37mゼルダ4は死んでしまった(graph_alloc is empty)\n\x1b[m"
    # EUC-JP: ゼルダ4は死んでしまった | 'Zelda 4 is dead'?
    .balign 4

glabel D_801454DC
    .asciz "\x1b[43;30mPRE-NMIによりリセットモードに移行します\n\x1b[m"
    # EUC-JP: によりリセットモードに移行します | To reset mode
    .balign 4

.text
glabel Graph_Update
/* B3D378 800C61D8 27BDFF38 */  addiu $sp, $sp, -0xc8
/* B3D37C 800C61DC AFBF001C */  sw    $ra, 0x1c($sp)
/* B3D380 800C61E0 AFB00018 */  sw    $s0, 0x18($sp)
/* B3D384 800C61E4 AFA500CC */  sw    $a1, 0xcc($sp)
/* B3D388 800C61E8 00808025 */  move  $s0, $a0
/* B3D38C 800C61EC 0C0316C5 */  jal   Graph_InitTHGA
/* B3D390 800C61F0 ACA000A0 */   sw    $zero, 0xa0($a1)
/* B3D394 800C61F4 3C068014 */  lui   $a2, %hi(D_801452A4) # $a2, 0x8014
/* B3D398 800C61F8 24C652A4 */  addiu $a2, %lo(D_801452A4) # addiu $a2, $a2, 0x52a4
/* B3D39C 800C61FC 27A400B0 */  addiu $a0, $sp, 0xb0
/* B3D3A0 800C6200 02002825 */  move  $a1, $s0
/* B3D3A4 800C6204 0C031AB1 */  jal   Graph_OpenDisps
/* B3D3A8 800C6208 240703C6 */   li    $a3, 966
/* B3D3AC 800C620C 8E0201BC */  lw    $v0, 0x1bc($s0)
/* B3D3B0 800C6210 3C188014 */  lui   $t8, %hi(D_801452B0) # $t8, 0x8014
/* B3D3B4 800C6214 271852B0 */  addiu $t8, %lo(D_801452B0) # addiu $t8, $t8, 0x52b0
/* B3D3B8 800C6218 244F0008 */  addiu $t7, $v0, 8
/* B3D3BC 800C621C AE0F01BC */  sw    $t7, 0x1bc($s0)
/* B3D3C0 800C6220 3C080002 */  lui   $t0, 2
/* B3D3C4 800C6224 AC480000 */  sw    $t0, ($v0)
/* B3D3C8 800C6228 AC580004 */  sw    $t8, 4($v0)
/* B3D3CC 800C622C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B3D3D0 800C6230 3C098014 */  lui   $t1, %hi(D_801452C0) # $t1, 0x8014
/* B3D3D4 800C6234 252952C0 */  addiu $t1, %lo(D_801452C0) # addiu $t1, $t1, 0x52c0
/* B3D3D8 800C6238 24590008 */  addiu $t9, $v0, 8
/* B3D3DC 800C623C AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B3D3E0 800C6240 AC490004 */  sw    $t1, 4($v0)
/* B3D3E4 800C6244 AC480000 */  sw    $t0, ($v0)
/* B3D3E8 800C6248 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B3D3EC 800C624C 3C0B8014 */  lui   $t3, %hi(D_801452D4) # $t3, 0x8014
/* B3D3F0 800C6250 256B52D4 */  addiu $t3, %lo(D_801452D4) # addiu $t3, $t3, 0x52d4
/* B3D3F4 800C6254 244A0008 */  addiu $t2, $v0, 8
/* B3D3F8 800C6258 AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* B3D3FC 800C625C AC4B0004 */  sw    $t3, 4($v0)
/* B3D400 800C6260 AC480000 */  sw    $t0, ($v0)
/* B3D404 800C6264 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B3D408 800C6268 3C0D8014 */  lui   $t5, %hi(D_801452E8) # $t5, 0x8014
/* B3D40C 800C626C 25AD52E8 */  addiu $t5, %lo(D_801452E8) # addiu $t5, $t5, 0x52e8
/* B3D410 800C6270 244C0008 */  addiu $t4, $v0, 8
/* B3D414 800C6274 AE0C02B0 */  sw    $t4, 0x2b0($s0)
/* B3D418 800C6278 3C068014 */  lui   $a2, %hi(D_801452FC) # $a2, 0x8014
/* B3D41C 800C627C 24C652FC */  addiu $a2, %lo(D_801452FC) # addiu $a2, $a2, 0x52fc
/* B3D420 800C6280 27A400B0 */  addiu $a0, $sp, 0xb0
/* B3D424 800C6284 02002825 */  move  $a1, $s0
/* B3D428 800C6288 240703CF */  li    $a3, 975
/* B3D42C 800C628C AC4D0004 */  sw    $t5, 4($v0)
/* B3D430 800C6290 0C031AD5 */  jal   Graph_CloseDisps
/* B3D434 800C6294 AC480000 */   sw    $t0, ($v0)
/* B3D438 800C6298 0C0312A6 */  jal   func_800C4A98
/* B3D43C 800C629C 8FA400CC */   lw    $a0, 0xcc($sp)
/* B3D440 800C62A0 0C0312B2 */  jal   func_800C4AC8
/* B3D444 800C62A4 8FA400CC */   lw    $a0, 0xcc($sp)
/* B3D448 800C62A8 3C068014 */  lui   $a2, %hi(D_80145308) # $a2, 0x8014
/* B3D44C 800C62AC 24C65308 */  addiu $a2, %lo(D_80145308) # addiu $a2, $a2, 0x5308
/* B3D450 800C62B0 27A4008C */  addiu $a0, $sp, 0x8c
/* B3D454 800C62B4 02002825 */  move  $a1, $s0
/* B3D458 800C62B8 0C031AB1 */  jal   Graph_OpenDisps
/* B3D45C 800C62BC 240703DB */   li    $a3, 987
/* B3D460 800C62C0 8E0201BC */  lw    $v0, 0x1bc($s0)
/* B3D464 800C62C4 3C0F8014 */  lui   $t7, %hi(D_80145314) # $t7, 0x8014
/* B3D468 800C62C8 3C080002 */  lui   $t0, 2
/* B3D46C 800C62CC 244E0008 */  addiu $t6, $v0, 8
/* B3D470 800C62D0 AE0E01BC */  sw    $t6, 0x1bc($s0)
/* B3D474 800C62D4 25EF5314 */  addiu $t7, %lo(D_80145314) # addiu $t7, $t7, 0x5314
/* B3D478 800C62D8 AC4F0004 */  sw    $t7, 4($v0)
/* B3D47C 800C62DC AC480000 */  sw    $t0, ($v0)
/* B3D480 800C62E0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B3D484 800C62E4 3C198014 */  lui   $t9, %hi(D_80145324) # $t9, 0x8014
/* B3D488 800C62E8 27395324 */  addiu $t9, %lo(D_80145324) # addiu $t9, $t9, 0x5324
/* B3D48C 800C62EC 24580008 */  addiu $t8, $v0, 8
/* B3D490 800C62F0 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B3D494 800C62F4 AC590004 */  sw    $t9, 4($v0)
/* B3D498 800C62F8 AC480000 */  sw    $t0, ($v0)
/* B3D49C 800C62FC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B3D4A0 800C6300 3C0A8014 */  lui   $t2, %hi(D_80145338) # $t2, 0x8014
/* B3D4A4 800C6304 254A5338 */  addiu $t2, %lo(D_80145338) # addiu $t2, $t2, 0x5338
/* B3D4A8 800C6308 24490008 */  addiu $t1, $v0, 8
/* B3D4AC 800C630C AE0902D0 */  sw    $t1, 0x2d0($s0)
/* B3D4B0 800C6310 AC4A0004 */  sw    $t2, 4($v0)
/* B3D4B4 800C6314 AC480000 */  sw    $t0, ($v0)
/* B3D4B8 800C6318 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B3D4BC 800C631C 3C0C8014 */  lui   $t4, %hi(D_8014534C) # $t4, 0x8014
/* B3D4C0 800C6320 258C534C */  addiu $t4, %lo(D_8014534C) # addiu $t4, $t4, 0x534c
/* B3D4C4 800C6324 244B0008 */  addiu $t3, $v0, 8
/* B3D4C8 800C6328 AE0B02B0 */  sw    $t3, 0x2b0($s0)
/* B3D4CC 800C632C 3C068014 */  lui   $a2, %hi(D_80145360) # $a2, 0x8014
/* B3D4D0 800C6330 24C65360 */  addiu $a2, %lo(D_80145360) # addiu $a2, $a2, 0x5360
/* B3D4D4 800C6334 27A4008C */  addiu $a0, $sp, 0x8c
/* B3D4D8 800C6338 02002825 */  move  $a1, $s0
/* B3D4DC 800C633C 240703E4 */  li    $a3, 996
/* B3D4E0 800C6340 AC4C0004 */  sw    $t4, 4($v0)
/* B3D4E4 800C6344 0C031AD5 */  jal   Graph_CloseDisps
/* B3D4E8 800C6348 AC480000 */   sw    $t0, ($v0)
/* B3D4EC 800C634C 3C068014 */  lui   $a2, %hi(D_8014536C) # $a2, 0x8014
/* B3D4F0 800C6350 24C6536C */  addiu $a2, %lo(D_8014536C) # addiu $a2, $a2, 0x536c
/* B3D4F4 800C6354 27A40068 */  addiu $a0, $sp, 0x68
/* B3D4F8 800C6358 02002825 */  move  $a1, $s0
/* B3D4FC 800C635C 0C031AB1 */  jal   Graph_OpenDisps
/* B3D500 800C6360 240703E7 */   li    $a3, 999
/* B3D504 800C6364 8E0201BC */  lw    $v0, 0x1bc($s0)
/* B3D508 800C6368 3C04DE01 */  lui   $a0, 0xde01
/* B3D50C 800C636C 3C0BE700 */  lui   $t3, 0xe700
/* B3D510 800C6370 244D0008 */  addiu $t5, $v0, 8
/* B3D514 800C6374 AE0D01BC */  sw    $t5, 0x1bc($s0)
/* B3D518 800C6378 AC440000 */  sw    $a0, ($v0)
/* B3D51C 800C637C 8E0E0000 */  lw    $t6, ($s0)
/* B3D520 800C6380 3C0DE900 */  lui   $t5, 0xe900
/* B3D524 800C6384 3C068014 */  lui   $a2, %hi(D_80145378) # $a2, 0x8014
/* B3D528 800C6388 AC4E0004 */  sw    $t6, 4($v0)
/* B3D52C 800C638C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B3D530 800C6390 24C65378 */  addiu $a2, %lo(D_80145378) # addiu $a2, $a2, 0x5378
/* B3D534 800C6394 02002825 */  move  $a1, $s0
/* B3D538 800C6398 244F0008 */  addiu $t7, $v0, 8
/* B3D53C 800C639C AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B3D540 800C63A0 AC440000 */  sw    $a0, ($v0)
/* B3D544 800C63A4 8E180004 */  lw    $t8, 4($s0)
/* B3D548 800C63A8 3C0FDF00 */  lui   $t7, 0xdf00
/* B3D54C 800C63AC 24070404 */  li    $a3, 1028
/* B3D550 800C63B0 AC580004 */  sw    $t8, 4($v0)
/* B3D554 800C63B4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B3D558 800C63B8 24590008 */  addiu $t9, $v0, 8
/* B3D55C 800C63BC AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B3D560 800C63C0 AC440000 */  sw    $a0, ($v0)
/* B3D564 800C63C4 8E090010 */  lw    $t1, 0x10($s0)
/* B3D568 800C63C8 27A40068 */  addiu $a0, $sp, 0x68
/* B3D56C 800C63CC AC490004 */  sw    $t1, 4($v0)
/* B3D570 800C63D0 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B3D574 800C63D4 244A0008 */  addiu $t2, $v0, 8
/* B3D578 800C63D8 AE0A02B0 */  sw    $t2, 0x2b0($s0)
/* B3D57C 800C63DC AC400004 */  sw    $zero, 4($v0)
/* B3D580 800C63E0 AC4B0000 */  sw    $t3, ($v0)
/* B3D584 800C63E4 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B3D588 800C63E8 244C0008 */  addiu $t4, $v0, 8
/* B3D58C 800C63EC AE0C02B0 */  sw    $t4, 0x2b0($s0)
/* B3D590 800C63F0 AC400004 */  sw    $zero, 4($v0)
/* B3D594 800C63F4 AC4D0000 */  sw    $t5, ($v0)
/* B3D598 800C63F8 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B3D59C 800C63FC 244E0008 */  addiu $t6, $v0, 8
/* B3D5A0 800C6400 AE0E02B0 */  sw    $t6, 0x2b0($s0)
/* B3D5A4 800C6404 AC400004 */  sw    $zero, 4($v0)
/* B3D5A8 800C6408 0C031AD5 */  jal   Graph_CloseDisps
/* B3D5AC 800C640C AC4F0000 */   sw    $t7, ($v0)
/* B3D5B0 800C6410 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B3D5B4 800C6414 2508FA90 */  addiu $t0, %lo(gGameInfo) # addiu $t0, $t0, -0x570
/* B3D5B8 800C6418 8D020000 */  lw    $v0, ($t0)
/* B3D5BC 800C641C 2401000A */  li    $at, 10
/* B3D5C0 800C6420 84431074 */  lh    $v1, 0x1074($v0)
/* B3D5C4 800C6424 54610010 */  bnel  $v1, $at, .L800C6468
/* B3D5C8 800C6428 24010007 */   li    $at, 7
/* B3D5CC 800C642C 8458108E */  lh    $t8, 0x108e($v0)
/* B3D5D0 800C6430 24010002 */  li    $at, 2
/* B3D5D4 800C6434 24190007 */  li    $t9, 7
/* B3D5D8 800C6438 5701000B */  bnel  $t8, $at, .L800C6468
/* B3D5DC 800C643C 24010007 */   li    $at, 7
/* B3D5E0 800C6440 A4591074 */  sh    $t9, 0x1074($v0)
/* B3D5E4 800C6444 8D0A0000 */  lw    $t2, ($t0)
/* B3D5E8 800C6448 2409FFFF */  li    $t1, -1
/* B3D5EC 800C644C A5491076 */  sh    $t1, 0x1076($t2)
/* B3D5F0 800C6450 8D020000 */  lw    $v0, ($t0)
/* B3D5F4 800C6454 844B108C */  lh    $t3, 0x108c($v0)
/* B3D5F8 800C6458 A44B107A */  sh    $t3, 0x107a($v0)
/* B3D5FC 800C645C 8D020000 */  lw    $v0, ($t0)
/* B3D600 800C6460 84431074 */  lh    $v1, 0x1074($v0)
/* B3D604 800C6464 24010007 */  li    $at, 7
.L800C6468:
/* B3D608 800C6468 5461002D */  bnel  $v1, $at, .L800C6520
/* B3D60C 800C646C AFA000C4 */   sw    $zero, 0xc4($sp)
/* B3D610 800C6470 844C1076 */  lh    $t4, 0x1076($v0)
/* B3D614 800C6474 5180002A */  beql  $t4, $zero, .L800C6520
/* B3D618 800C6478 AFA000C4 */   sw    $zero, 0xc4($sp)
/* B3D61C 800C647C 844D1078 */  lh    $t5, 0x1078($v0)
/* B3D620 800C6480 24010003 */  li    $at, 3
/* B3D624 800C6484 3C048016 */  lui   $a0, %hi(sGraphUcodeFaultClient) # $a0, 0x8016
/* B3D628 800C6488 15A10007 */  bne   $t5, $at, .L800C64A8
/* B3D62C 800C648C 24846648 */   addiu $a0, %lo(sGraphUcodeFaultClient) # addiu $a0, $a0, 0x6648
/* B3D630 800C6490 3C05800C */  lui   $a1, %hi(Graph_UCodeFaultClient) # $a1, 0x800c
/* B3D634 800C6494 3C078014 */  lui   $a3, %hi(D_80145384) # $a3, 0x8014
/* B3D638 800C6498 24E75384 */  addiu $a3, %lo(D_80145384) # addiu $a3, $a3, 0x5384
/* B3D63C 800C649C 24A55AB0 */  addiu $a1, %lo(Graph_UCodeFaultClient) # addiu $a1, $a1, 0x5ab0
/* B3D640 800C64A0 0C035077 */  jal   Fault_AddClient
/* B3D644 800C64A4 8E0601B0 */   lw    $a2, 0x1b0($s0)
.L800C64A8:
/* B3D648 800C64A8 0C03162F */  jal   Graph_DisassembleUCode
/* B3D64C 800C64AC 8E0401B0 */   lw    $a0, 0x1b0($s0)
/* B3D650 800C64B0 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B3D654 800C64B4 2508FA90 */  addiu $t0, %lo(gGameInfo) # addiu $t0, $t0, -0x570
/* B3D658 800C64B8 8D020000 */  lw    $v0, ($t0)
/* B3D65C 800C64BC 24010003 */  li    $at, 3
/* B3D660 800C64C0 3C048016 */  lui   $a0, %hi(sGraphUcodeFaultClient) # $a0, 0x8016
/* B3D664 800C64C4 844E1078 */  lh    $t6, 0x1078($v0)
/* B3D668 800C64C8 55C10006 */  bnel  $t6, $at, .L800C64E4
/* B3D66C 800C64CC 84431076 */   lh    $v1, 0x1076($v0)
/* B3D670 800C64D0 0C0350B0 */  jal   Fault_RemoveClient
/* B3D674 800C64D4 24846648 */   addiu $a0, %lo(sGraphUcodeFaultClient) # addiu $a0, $a0, 0x6648
/* B3D678 800C64D8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3D67C 800C64DC 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3D680 800C64E0 84431076 */  lh    $v1, 0x1076($v0)
.L800C64E4:
/* B3D684 800C64E4 3C04A404 */  lui   $a0, 0xa404
/* B3D688 800C64E8 04610009 */  bgez  $v1, .L800C6510
/* B3D68C 800C64EC 00000000 */   nop   
/* B3D690 800C64F0 0C000AC4 */  jal   LogUtils_LogHexDump
/* B3D694 800C64F4 24050020 */   li    $a1, 32
/* B3D698 800C64F8 3C04A410 */  lui   $a0, 0xa410
/* B3D69C 800C64FC 0C000AC4 */  jal   LogUtils_LogHexDump
/* B3D6A0 800C6500 24050020 */   li    $a1, 32
/* B3D6A4 800C6504 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3D6A8 800C6508 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3D6AC 800C650C 84431076 */  lh    $v1, 0x1076($v0)
.L800C6510:
/* B3D6B0 800C6510 04630003 */  bgezl $v1, .L800C6520
/* B3D6B4 800C6514 AFA000C4 */   sw    $zero, 0xc4($sp)
/* B3D6B8 800C6518 A4401076 */  sh    $zero, 0x1076($v0)
/* B3D6BC 800C651C AFA000C4 */  sw    $zero, 0xc4($sp)
.L800C6520:
/* B3D6C0 800C6520 8E0F02D8 */  lw    $t7, 0x2d8($s0)
/* B3D6C4 800C6524 3C09801B */  lui   $t1, %hi(gGfxPools) # $t1, 0x801b
/* B3D6C8 800C6528 252941C0 */  addiu $t1, %lo(gGfxPools) # addiu $t1, $t1, 0x41c0
/* B3D6CC 800C652C 31F80001 */  andi  $t8, $t7, 1
/* B3D6D0 800C6530 0018C8C0 */  sll   $t9, $t8, 3
/* B3D6D4 800C6534 0338C821 */  addu  $t9, $t9, $t8
/* B3D6D8 800C6538 0019C8C0 */  sll   $t9, $t9, 3
/* B3D6DC 800C653C 0338C821 */  addu  $t9, $t9, $t8
/* B3D6E0 800C6540 0019C980 */  sll   $t9, $t9, 6
/* B3D6E4 800C6544 0338C821 */  addu  $t9, $t9, $t8
/* B3D6E8 800C6548 0019C900 */  sll   $t9, $t9, 4
/* B3D6EC 800C654C 03295021 */  addu  $t2, $t9, $t1
/* B3D6F0 800C6550 AFAA004C */  sw    $t2, 0x4c($sp)
/* B3D6F4 800C6554 954B0000 */  lhu   $t3, ($t2)
/* B3D6F8 800C6558 24011234 */  li    $at, 4660
/* B3D6FC 800C655C 1161000B */  beq   $t3, $at, .L800C658C
/* B3D700 800C6560 3C048014 */   lui   $a0, %hi(D_80145394) # $a0, 0x8014
/* B3D704 800C6564 24845394 */  addiu $a0, %lo(D_80145394) # addiu $a0, $a0, 0x5394
/* B3D708 800C6568 0C00084C */  jal   osSyncPrintf
/* B3D70C 800C656C 24050007 */   li    $a1, 7
/* B3D710 800C6570 3C048014 */  lui   $a0, %hi(D_80145398) # $a0, 0x8014
/* B3D714 800C6574 0C00084C */  jal   osSyncPrintf
/* B3D718 800C6578 24845398 */   addiu $a0, %lo(D_80145398) # addiu $a0, $a0, 0x5398
/* B3D71C 800C657C 3C048014 */  lui   $a0, %hi(D_801453CC) # $a0, 0x8014
/* B3D720 800C6580 248453CC */  addiu $a0, %lo(D_801453CC) # addiu $a0, $a0, 0x53cc
/* B3D724 800C6584 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* B3D728 800C6588 2405042E */   li    $a1, 1070
.L800C658C:
/* B3D72C 800C658C 8FAC004C */  lw    $t4, 0x4c($sp)
/* B3D730 800C6590 3C0D0001 */  lui   $t5, 1
/* B3D734 800C6594 24015678 */  li    $at, 22136
/* B3D738 800C6598 01AC6821 */  addu  $t5, $t5, $t4
/* B3D73C 800C659C 95AD2408 */  lhu   $t5, 0x2408($t5)
/* B3D740 800C65A0 11A1000D */  beq   $t5, $at, .L800C65D8
/* B3D744 800C65A4 240E0001 */   li    $t6, 1
/* B3D748 800C65A8 3C048014 */  lui   $a0, %hi(D_801453D8) # $a0, 0x8014
/* B3D74C 800C65AC AFAE00C4 */  sw    $t6, 0xc4($sp)
/* B3D750 800C65B0 248453D8 */  addiu $a0, %lo(D_801453D8) # addiu $a0, $a0, 0x53d8
/* B3D754 800C65B4 0C00084C */  jal   osSyncPrintf
/* B3D758 800C65B8 24050007 */   li    $a1, 7
/* B3D75C 800C65BC 3C048014 */  lui   $a0, %hi(D_801453DC) # $a0, 0x8014
/* B3D760 800C65C0 0C00084C */  jal   osSyncPrintf
/* B3D764 800C65C4 248453DC */   addiu $a0, %lo(D_801453DC) # addiu $a0, $a0, 0x53dc
/* B3D768 800C65C8 3C048014 */  lui   $a0, %hi(D_80145410) # $a0, 0x8014
/* B3D76C 800C65CC 24845410 */  addiu $a0, %lo(D_80145410) # addiu $a0, $a0, 0x5410
/* B3D770 800C65D0 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* B3D774 800C65D4 24050434 */   li    $a1, 1076
.L800C65D8:
/* B3D778 800C65D8 0C030E30 */  jal   THGA_IsCrash
/* B3D77C 800C65DC 260402B8 */   addiu $a0, $s0, 0x2b8
/* B3D780 800C65E0 10400009 */  beqz  $v0, .L800C6608
/* B3D784 800C65E4 240F0001 */   li    $t7, 1
/* B3D788 800C65E8 3C048014 */  lui   $a0, %hi(D_8014541C) # $a0, 0x8014
/* B3D78C 800C65EC AFAF00C4 */  sw    $t7, 0xc4($sp)
/* B3D790 800C65F0 2484541C */  addiu $a0, %lo(D_8014541C) # addiu $a0, $a0, 0x541c
/* B3D794 800C65F4 0C00084C */  jal   osSyncPrintf
/* B3D798 800C65F8 24050007 */   li    $a1, 7
/* B3D79C 800C65FC 3C048014 */  lui   $a0, %hi(D_80145420) # $a0, 0x8014
/* B3D7A0 800C6600 0C00084C */  jal   osSyncPrintf
/* B3D7A4 800C6604 24845420 */   addiu $a0, %lo(D_80145420) # addiu $a0, $a0, 0x5420
.L800C6608:
/* B3D7A8 800C6608 0C030E30 */  jal   THGA_IsCrash
/* B3D7AC 800C660C 260402C8 */   addiu $a0, $s0, 0x2c8
/* B3D7B0 800C6610 10400009 */  beqz  $v0, .L800C6638
/* B3D7B4 800C6614 24180001 */   li    $t8, 1
/* B3D7B8 800C6618 3C048014 */  lui   $a0, %hi(D_8014545C) # $a0, 0x8014
/* B3D7BC 800C661C AFB800C4 */  sw    $t8, 0xc4($sp)
/* B3D7C0 800C6620 2484545C */  addiu $a0, %lo(D_8014545C) # addiu $a0, $a0, 0x545c
/* B3D7C4 800C6624 0C00084C */  jal   osSyncPrintf
/* B3D7C8 800C6628 24050007 */   li    $a1, 7
/* B3D7CC 800C662C 3C048014 */  lui   $a0, %hi(D_80145460) # $a0, 0x8014
/* B3D7D0 800C6630 0C00084C */  jal   osSyncPrintf
/* B3D7D4 800C6634 24845460 */   addiu $a0, %lo(D_80145460) # addiu $a0, $a0, 0x5460
.L800C6638:
/* B3D7D8 800C6638 0C030E30 */  jal   THGA_IsCrash
/* B3D7DC 800C663C 260402A8 */   addiu $a0, $s0, 0x2a8
/* B3D7E0 800C6640 10400009 */  beqz  $v0, .L800C6668
/* B3D7E4 800C6644 24190001 */   li    $t9, 1
/* B3D7E8 800C6648 3C048014 */  lui   $a0, %hi(D_8014549C) # $a0, 0x8014
/* B3D7EC 800C664C AFB900C4 */  sw    $t9, 0xc4($sp)
/* B3D7F0 800C6650 2484549C */  addiu $a0, %lo(D_8014549C) # addiu $a0, $a0, 0x549c
/* B3D7F4 800C6654 0C00084C */  jal   osSyncPrintf
/* B3D7F8 800C6658 24050007 */   li    $a1, 7
/* B3D7FC 800C665C 3C048014 */  lui   $a0, %hi(D_801454A0) # $a0, 0x8014
/* B3D800 800C6660 0C00084C */  jal   osSyncPrintf
/* B3D804 800C6664 248454A0 */   addiu $a0, %lo(D_801454A0) # addiu $a0, $a0, 0x54a0
.L800C6668:
/* B3D808 800C6668 8FA900C4 */  lw    $t1, 0xc4($sp)
/* B3D80C 800C666C 15200009 */  bnez  $t1, .L800C6694
/* B3D810 800C6670 00000000 */   nop   
/* B3D814 800C6674 0C031770 */  jal   Graph_TaskSet00
/* B3D818 800C6678 02002025 */   move  $a0, $s0
/* B3D81C 800C667C 8E0A02D8 */  lw    $t2, 0x2d8($s0)
/* B3D820 800C6680 8E0C02E8 */  lw    $t4, 0x2e8($s0)
/* B3D824 800C6684 254B0001 */  addiu $t3, $t2, 1
/* B3D828 800C6688 258D0001 */  addiu $t5, $t4, 1
/* B3D82C 800C668C AE0B02D8 */  sw    $t3, 0x2d8($s0)
/* B3D830 800C6690 AE0D02E8 */  sw    $t5, 0x2e8($s0)
.L800C6694:
/* B3D834 800C6694 0C03CC15 */  jal   func_800F3054
/* B3D838 800C6698 00000000 */   nop   
/* B3D83C 800C669C 0C001A78 */  jal   osGetTime
/* B3D840 800C66A0 00000000 */   nop   
/* B3D844 800C66A4 3C048017 */  lui   $a0, %hi(D_8016A568) # $a0, 0x8017
/* B3D848 800C66A8 2484A568 */  addiu $a0, %lo(D_8016A568) # addiu $a0, $a0, -0x5a98
/* B3D84C 800C66AC 8C8E0000 */  lw    $t6, ($a0)
/* B3D850 800C66B0 8C8F0004 */  lw    $t7, 4($a0)
/* B3D854 800C66B4 3C188017 */  lui   $t8, %hi(D_8016A538) # $t8, 0x8017
/* B3D858 800C66B8 2718A538 */  addiu $t8, %lo(D_8016A538) # addiu $t8, $t8, -0x5ac8
/* B3D85C 800C66BC 3C058017 */  lui   $a1, %hi(D_8016A560) # $a1, 0x8017
/* B3D860 800C66C0 AF0E0000 */  sw    $t6, ($t8)
/* B3D864 800C66C4 24A5A560 */  addiu $a1, %lo(D_8016A560) # addiu $a1, $a1, -0x5aa0
/* B3D868 800C66C8 AF0F0004 */  sw    $t7, 4($t8)
/* B3D86C 800C66CC 8CAA0000 */  lw    $t2, ($a1)
/* B3D870 800C66D0 8CAB0004 */  lw    $t3, 4($a1)
/* B3D874 800C66D4 3C198017 */  lui   $t9, %hi(D_8016A530) # $t9, 0x8017
/* B3D878 800C66D8 2739A530 */  addiu $t9, %lo(D_8016A530) # addiu $t9, $t9, -0x5ad0
/* B3D87C 800C66DC 3C068017 */  lui   $a2, %hi(D_8016A580) # $a2, 0x8017
/* B3D880 800C66E0 AF2A0000 */  sw    $t2, ($t9)
/* B3D884 800C66E4 24C6A580 */  addiu $a2, %lo(D_8016A580) # addiu $a2, $a2, -0x5a80
/* B3D888 800C66E8 AF2B0004 */  sw    $t3, 4($t9)
/* B3D88C 800C66EC 8CCC0000 */  lw    $t4, ($a2)
/* B3D890 800C66F0 8CCD0004 */  lw    $t5, 4($a2)
/* B3D894 800C66F4 3C098017 */  lui   $t1, %hi(D_8016A540) # $t1, 0x8017
/* B3D898 800C66F8 2529A540 */  addiu $t1, %lo(D_8016A540) # addiu $t1, $t1, -0x5ac0
/* B3D89C 800C66FC AD2C0000 */  sw    $t4, ($t1)
/* B3D8A0 800C6700 AD2D0004 */  sw    $t5, 4($t1)
/* B3D8A4 800C6704 240E0000 */  li    $t6, 0
/* B3D8A8 800C6708 AC8E0000 */  sw    $t6, ($a0)
/* B3D8AC 800C670C 240F0000 */  li    $t7, 0
/* B3D8B0 800C6710 AC8F0004 */  sw    $t7, 4($a0)
/* B3D8B4 800C6714 24180000 */  li    $t8, 0
/* B3D8B8 800C6718 ACB80000 */  sw    $t8, ($a1)
/* B3D8BC 800C671C 24190000 */  li    $t9, 0
/* B3D8C0 800C6720 ACB90004 */  sw    $t9, 4($a1)
/* B3D8C4 800C6724 240A0000 */  li    $t2, 0
/* B3D8C8 800C6728 ACCA0000 */  sw    $t2, ($a2)
/* B3D8CC 800C672C 240B0000 */  li    $t3, 0
/* B3D8D0 800C6730 ACCB0004 */  sw    $t3, 4($a2)
/* B3D8D4 800C6734 3C0C8016 */  lui   $t4, %hi(sGraphUpdateTime) # $t4, 0x8016
/* B3D8D8 800C6738 8D8C65D0 */  lw    $t4, %lo(sGraphUpdateTime)($t4)
/* B3D8DC 800C673C 3C0D8016 */  lui   $t5, %hi(sGraphUpdateTime+4) # $t5, 0x8016
/* B3D8E0 800C6740 8DAD65D4 */  lw    $t5, %lo(sGraphUpdateTime+4)($t5)
/* B3D8E4 800C6744 AFAC0020 */  sw    $t4, 0x20($sp)
/* B3D8E8 800C6748 15800002 */  bnez  $t4, .L800C6754
/* B3D8EC 800C674C AFAD0024 */   sw    $t5, 0x24($sp)
/* B3D8F0 800C6750 11A00008 */  beqz  $t5, .L800C6774
.L800C6754:
/* B3D8F4 800C6754 006D082B */   sltu  $at, $v1, $t5
/* B3D8F8 800C6758 004C7023 */  subu  $t6, $v0, $t4
/* B3D8FC 800C675C 3C098017 */  lui   $t1, %hi(D_8016A548) # $t1, 0x8017
/* B3D900 800C6760 2529A548 */  addiu $t1, %lo(D_8016A548) # addiu $t1, $t1, -0x5ab8
/* B3D904 800C6764 01C17023 */  subu  $t6, $t6, $at
/* B3D908 800C6768 AD2E0000 */  sw    $t6, ($t1)
/* B3D90C 800C676C 006D7823 */  subu  $t7, $v1, $t5
/* B3D910 800C6770 AD2F0004 */  sw    $t7, 4($t1)
.L800C6774:
/* B3D914 800C6774 3C048013 */  lui   $a0, %hi(D_8012DBC0) # $a0, 0x8013
/* B3D918 800C6778 8C84DBC0 */  lw    $a0, %lo(D_8012DBC0)($a0)
/* B3D91C 800C677C 3C018016 */  lui   $at, %hi(sGraphUpdateTime+4) # $at, 0x8016
/* B3D920 800C6780 AC2265D0 */  sw    $v0, %lo(sGraphUpdateTime)($at)
/* B3D924 800C6784 10800015 */  beqz  $a0, .L800C67DC
/* B3D928 800C6788 AC2365D4 */   sw    $v1, %lo(sGraphUpdateTime+4)($at)
/* B3D92C 800C678C 8FA200CC */  lw    $v0, 0xcc($sp)
/* B3D930 800C6790 2401DFFF */  li    $at, -8193
/* B3D934 800C6794 94580020 */  lhu   $t8, 0x20($v0)
/* B3D938 800C6798 0301C827 */  nor   $t9, $t8, $at
/* B3D93C 800C679C 1720000F */  bnez  $t9, .L800C67DC
/* B3D940 800C67A0 00000000 */   nop   
/* B3D944 800C67A4 944A0014 */  lhu   $t2, 0x14($v0)
/* B3D948 800C67A8 2401FFCF */  li    $at, -49
/* B3D94C 800C67AC 3C0C8080 */  lui   $t4, %hi(func_80801E44) # $t4, 0x8080
/* B3D950 800C67B0 01415827 */  nor   $t3, $t2, $at
/* B3D954 800C67B4 15600009 */  bnez  $t3, .L800C67DC
/* B3D958 800C67B8 3C018016 */   lui   $at, %hi(gSaveContext+0x135c) # $at, 0x8016
/* B3D95C 800C67BC AC20F9BC */  sw    $zero, %lo(gSaveContext+0x135c)($at)
/* B3D960 800C67C0 258C1E44 */  addiu $t4, %lo(func_80801E44) # addiu $t4, $t4, 0x1e44
/* B3D964 800C67C4 240D0240 */  li    $t5, 576
/* B3D968 800C67C8 AC4D0010 */  sw    $t5, 0x10($v0)
/* B3D96C 800C67CC AC4C000C */  sw    $t4, 0xc($v0)
/* B3D970 800C67D0 AC400098 */  sw    $zero, 0x98($v0)
/* B3D974 800C67D4 3C048013 */  lui   $a0, %hi(D_8012DBC0) # $a0, 0x8013
/* B3D978 800C67D8 8C84DBC0 */  lw    $a0, %lo(D_8012DBC0)($a0)
.L800C67DC:
/* B3D97C 800C67DC 10800014 */  beqz  $a0, .L800C6830
/* B3D980 800C67E0 3C048016 */   lui   $a0, %hi(gAppNmiBufferPtr) # $a0, 0x8016
/* B3D984 800C67E4 0C01EFC2 */  jal   PreNmiBuff_IsResetting
/* B3D988 800C67E8 8C846660 */   lw    $a0, %lo(gAppNmiBufferPtr)($a0)
/* B3D98C 800C67EC 10400010 */  beqz  $v0, .L800C6830
/* B3D990 800C67F0 8FAE00CC */   lw    $t6, 0xcc($sp)
/* B3D994 800C67F4 8DCF00A0 */  lw    $t7, 0xa0($t6)
/* B3D998 800C67F8 3C048014 */  lui   $a0, %hi(D_801454DC) # $a0, 0x8014
/* B3D99C 800C67FC 55E0000D */  bnezl $t7, .L800C6834
/* B3D9A0 800C6800 8FBF001C */   lw    $ra, 0x1c($sp)
/* B3D9A4 800C6804 0C00084C */  jal   osSyncPrintf
/* B3D9A8 800C6808 248454DC */   addiu $a0, %lo(D_801454DC) # addiu $a0, $a0, 0x54dc
/* B3D9AC 800C680C 8FB800CC */  lw    $t8, 0xcc($sp)
/* B3D9B0 800C6810 3C098009 */  lui   $t1, %hi(PreNMI_Init) # $t1, 0x8009
/* B3D9B4 800C6814 252924B8 */  addiu $t1, %lo(PreNMI_Init) # addiu $t1, $t1, 0x24b8
/* B3D9B8 800C6818 AF09000C */  sw    $t1, 0xc($t8)
/* B3D9BC 800C681C 8FAA00CC */  lw    $t2, 0xcc($sp)
/* B3D9C0 800C6820 241900AC */  li    $t9, 172
/* B3D9C4 800C6824 AD590010 */  sw    $t9, 0x10($t2)
/* B3D9C8 800C6828 8FAB00CC */  lw    $t3, 0xcc($sp)
/* B3D9CC 800C682C AD600098 */  sw    $zero, 0x98($t3)
.L800C6830:
/* B3D9D0 800C6830 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C6834:
/* B3D9D4 800C6834 8FB00018 */  lw    $s0, 0x18($sp)
/* B3D9D8 800C6838 27BD00C8 */  addiu $sp, $sp, 0xc8
/* B3D9DC 800C683C 03E00008 */  jr    $ra
/* B3D9E0 800C6840 00000000 */   nop   