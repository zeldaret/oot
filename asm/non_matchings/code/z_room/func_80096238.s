.rdata
glabel D_8013EF8C
    .asciz "JPEGデータを展開します\n"
    .balign 4

glabel D_8013EFA4
    .asciz "JPEGデータアドレス %08x\n"
    .balign 4

glabel D_8013EFC0
    .asciz "ワークバッファアドレス（Ｚバッファ）%08x\n"
    .balign 4

glabel D_8013EFEC
    .asciz "成功…だと思う。 time = %6.3f ms \n"
    .balign 4

glabel D_8013F010
    .asciz "ワークバッファから元のアドレスに書き戻します。\n"
    .balign 4

glabel D_8013F040
    .asciz "元のバッファのサイズが150キロバイト無いと暴走するでしょう。\n"
    .balign 4

glabel D_8013F080
    .asciz "失敗！なんで〜\n"
    .balign 4

.text
glabel func_80096238
/* B0D3D8 80096238 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B0D3DC 8009623C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0D3E0 80096240 AFA40020 */  sw    $a0, 0x20($sp)
/* B0D3E4 80096244 8C8F0000 */  lw    $t7, ($a0)
/* B0D3E8 80096248 3C01FFD8 */  lui   $at, (0xFFD8FFE0 >> 16) # lui $at, 0xffd8
/* B0D3EC 8009624C 3421FFE0 */  ori   $at, (0xFFD8FFE0 & 0xFFFF) # ori $at, $at, 0xffe0
/* B0D3F0 80096250 15E10049 */  bne   $t7, $at, .L80096378
/* B0D3F4 80096254 3C048014 */   lui   $a0, %hi(D_8013EF8C) # $a0, 0x8014
/* B0D3F8 80096258 0C00084C */  jal   osSyncPrintf
/* B0D3FC 8009625C 2484EF8C */   addiu $a0, %lo(D_8013EF8C) # addiu $a0, $a0, -0x1074
/* B0D400 80096260 3C048014 */  lui   $a0, %hi(D_8013EFA4) # $a0, 0x8014
/* B0D404 80096264 2484EFA4 */  addiu $a0, %lo(D_8013EFA4) # addiu $a0, $a0, -0x105c
/* B0D408 80096268 0C00084C */  jal   osSyncPrintf
/* B0D40C 8009626C 8FA50020 */   lw    $a1, 0x20($sp)
/* B0D410 80096270 3C048014 */  lui   $a0, %hi(D_8013EFC0) # $a0, 0x8014
/* B0D414 80096274 3C058017 */  lui   $a1, %hi(D_801759C0) # $a1, 0x8017
/* B0D418 80096278 24A559C0 */  addiu $a1, %lo(D_801759C0) # addiu $a1, $a1, 0x59c0
/* B0D41C 8009627C 0C00084C */  jal   osSyncPrintf
/* B0D420 80096280 2484EFC0 */   addiu $a0, %lo(D_8013EFC0) # addiu $a0, $a0, -0x1040
/* B0D424 80096284 0C001A78 */  jal   osGetTime
/* B0D428 80096288 00000000 */   nop   
/* B0D42C 8009628C 3C058017 */  lui   $a1, %hi(D_801759C0) # $a1, 0x8017
/* B0D430 80096290 3C06801A */  lui   $a2, %hi(gGfxSPTaskOutputBuffer) # $a2, 0x801a
/* B0D434 80096294 3C070001 */  lui   $a3, (0x00018000 >> 16) # lui $a3, 1
/* B0D438 80096298 AFA20018 */  sw    $v0, 0x18($sp)
/* B0D43C 8009629C AFA3001C */  sw    $v1, 0x1c($sp)
/* B0D440 800962A0 34E78000 */  ori   $a3, (0x00018000 & 0xFFFF) # ori $a3, $a3, 0x8000
/* B0D444 800962A4 24C6B1C0 */  addiu $a2, %lo(gGfxSPTaskOutputBuffer) # addiu $a2, $a2, -0x4e40
/* B0D448 800962A8 24A559C0 */  addiu $a1, %lo(D_801759C0) # addiu $a1, $a1, 0x59c0
/* B0D44C 800962AC 0C01B906 */  jal   func_8006E418
/* B0D450 800962B0 8FA40020 */   lw    $a0, 0x20($sp)
/* B0D454 800962B4 1440002E */  bnez  $v0, .L80096370
/* B0D458 800962B8 3C048014 */   lui   $a0, %hi(D_8013F080)
/* B0D45C 800962BC 0C001A78 */  jal   osGetTime
/* B0D460 800962C0 00000000 */   nop   
/* B0D464 800962C4 8FB80018 */  lw    $t8, 0x18($sp)
/* B0D468 800962C8 8FB9001C */  lw    $t9, 0x1c($sp)
/* B0D46C 800962CC 24060000 */  li    $a2, 0
/* B0D470 800962D0 00584023 */  subu  $t0, $v0, $t8
/* B0D474 800962D4 0079082B */  sltu  $at, $v1, $t9
/* B0D478 800962D8 01012023 */  subu  $a0, $t0, $at
/* B0D47C 800962DC 00792823 */  subu  $a1, $v1, $t9
/* B0D480 800962E0 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0D484 800962E4 AFA40018 */  sw    $a0, 0x18($sp)
/* B0D488 800962E8 0C000E1E */  jal   __ll_mul
/* B0D48C 800962EC 24070040 */   li    $a3, 64
/* B0D490 800962F0 00402025 */  move  $a0, $v0
/* B0D494 800962F4 00602825 */  move  $a1, $v1
/* B0D498 800962F8 24060000 */  li    $a2, 0
/* B0D49C 800962FC 0C000DDE */  jal   __ull_div
/* B0D4A0 80096300 24070BB8 */   li    $a3, 3000
/* B0D4A4 80096304 00402025 */  move  $a0, $v0
/* B0D4A8 80096308 0C0419CA */  jal   __ull_to_f
/* B0D4AC 8009630C 00602825 */   move  $a1, $v1
/* B0D4B0 80096310 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* B0D4B4 80096314 44812000 */  mtc1  $at, $f4
/* B0D4B8 80096318 3C048014 */  lui   $a0, %hi(D_8013EFEC) # $a0, 0x8014
/* B0D4BC 8009631C 2484EFEC */  addiu $a0, %lo(D_8013EFEC) # addiu $a0, $a0, -0x1014
/* B0D4C0 80096320 46040183 */  div.s $f6, $f0, $f4
/* B0D4C4 80096324 46003221 */  cvt.d.s $f8, $f6
/* B0D4C8 80096328 44074000 */  mfc1  $a3, $f8
/* B0D4CC 8009632C 44064800 */  mfc1  $a2, $f9
/* B0D4D0 80096330 0C00084C */  jal   osSyncPrintf
/* B0D4D4 80096334 00000000 */   nop   
/* B0D4D8 80096338 3C048014 */  lui   $a0, %hi(D_8013F010) # $a0, 0x8014
/* B0D4DC 8009633C 0C00084C */  jal   osSyncPrintf
/* B0D4E0 80096340 2484F010 */   addiu $a0, %lo(D_8013F010) # addiu $a0, $a0, -0xff0
/* B0D4E4 80096344 3C048014 */  lui   $a0, %hi(D_8013F040) # $a0, 0x8014
/* B0D4E8 80096348 0C00084C */  jal   osSyncPrintf
/* B0D4EC 8009634C 2484F040 */   addiu $a0, %lo(D_8013F040) # addiu $a0, $a0, -0xfc0
/* B0D4F0 80096350 3C048017 */  lui   $a0, %hi(D_801759C0) # $a0, 0x8017
/* B0D4F4 80096354 3C060002 */  lui   $a2, (0x00025800 >> 16) # lui $a2, 2
/* B0D4F8 80096358 34C65800 */  ori   $a2, (0x00025800 & 0xFFFF) # ori $a2, $a2, 0x5800
/* B0D4FC 8009635C 248459C0 */  addiu $a0, %lo(D_801759C0) # addiu $a0, $a0, 0x59c0
/* B0D500 80096360 0C001BC4 */  jal   bcopy
/* B0D504 80096364 8FA50020 */   lw    $a1, 0x20($sp)
/* B0D508 80096368 10000004 */  b     .L8009637C
/* B0D50C 8009636C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80096370:
/* B0D510 80096370 0C00084C */  jal   osSyncPrintf
/* B0D514 80096374 2484F080 */   addiu $a0, %lo(D_8013F080)
.L80096378:
/* B0D518 80096378 8FBF0014 */  lw    $ra, 0x14($sp)
.L8009637C:
/* B0D51C 8009637C 27BD0020 */  addiu $sp, $sp, 0x20
/* B0D520 80096380 00001025 */  move  $v0, $zero
/* B0D524 80096384 03E00008 */  jr    $ra
/* B0D528 80096388 00000000 */   nop   

