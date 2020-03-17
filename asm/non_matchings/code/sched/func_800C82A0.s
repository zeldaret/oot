.rdata
glabel D_80145D40
    .asciz "cfbinfo->swapbuffer"
    .balign 4

glabel D_80145D54
    .asciz "../sched.c"
    .balign 4

glabel D_80145D60
    .asciz "osViSwapBuffer %08x %08x %08x\n"
    .balign 4

.text
glabel func_800C82A0
/* B3F440 800C82A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3F444 800C82A4 AFA40028 */  sw    $a0, 0x28($sp)
/* B3F448 800C82A8 8FAE0028 */  lw    $t6, 0x28($sp)
/* B3F44C 800C82AC AFBF0014 */  sw    $ra, 0x14($sp)
/* B3F450 800C82B0 3C048014 */  lui   $a0, %hi(D_80145D40) # $a0, 0x8014
/* B3F454 800C82B4 3C068014 */  lui   $a2, %hi(D_80145D54) # $a2, 0x8014
/* B3F458 800C82B8 24C65D54 */  addiu $a2, %lo(D_80145D54) # addiu $a2, $a2, 0x5d54
/* B3F45C 800C82BC 24845D40 */  addiu $a0, %lo(D_80145D40) # addiu $a0, $a0, 0x5d40
/* B3F460 800C82C0 24070154 */  li    $a3, 340
/* B3F464 800C82C4 0C000B68 */  jal   LogUtils_CheckValidPointer
/* B3F468 800C82C8 8DC50004 */   lw    $a1, 4($t6)
/* B3F46C 800C82CC 8FAF0028 */  lw    $t7, 0x28($sp)
/* B3F470 800C82D0 8DE40004 */  lw    $a0, 4($t7)
/* B3F474 800C82D4 5080007E */  beql  $a0, $zero, .L800C84D0
/* B3F478 800C82D8 8FAD0028 */   lw    $t5, 0x28($sp)
/* B3F47C 800C82DC 0C0019A4 */  jal   osViSwapBuffer
/* B3F480 800C82E0 00000000 */   nop   
/* B3F484 800C82E4 8FA30028 */  lw    $v1, 0x28($sp)
/* B3F488 800C82E8 3C198013 */  lui   $t9, %hi(D_8012D290) # $t9, 0x8013
/* B3F48C 800C82EC 2739D290 */  addiu $t9, %lo(D_8012D290) # addiu $t9, $t9, -0x2d70
/* B3F490 800C82F0 80780011 */  lb    $t8, 0x11($v1)
/* B3F494 800C82F4 A0780012 */  sb    $t8, 0x12($v1)
/* B3F498 800C82F8 8F280000 */  lw    $t0, ($t9)
/* B3F49C 800C82FC 51000011 */  beql  $t0, $zero, .L800C8344
/* B3F4A0 800C8300 8C620008 */   lw    $v0, 8($v1)
/* B3F4A4 800C8304 0C0419D8 */  jal   func_80106760
/* B3F4A8 800C8308 00000000 */   nop   
/* B3F4AC 800C830C 0C0011D0 */  jal   osViGetNextFramebuffer
/* B3F4B0 800C8310 AFA20018 */   sw    $v0, 0x18($sp)
/* B3F4B4 800C8314 8FA90028 */  lw    $t1, 0x28($sp)
/* B3F4B8 800C8318 3C048014 */  lui   $a0, %hi(D_80145D60) # $a0, 0x8014
/* B3F4BC 800C831C 24845D60 */  addiu $a0, %lo(D_80145D60) # addiu $a0, $a0, 0x5d60
/* B3F4C0 800C8320 11200003 */  beqz  $t1, .L800C8330
/* B3F4C4 800C8324 00403025 */   move  $a2, $v0
/* B3F4C8 800C8328 10000002 */  b     .L800C8334
/* B3F4CC 800C832C 8D270004 */   lw    $a3, 4($t1)
.L800C8330:
/* B3F4D0 800C8330 00003825 */  move  $a3, $zero
.L800C8334:
/* B3F4D4 800C8334 0C00084C */  jal   osSyncPrintf
/* B3F4D8 800C8338 8FA50018 */   lw    $a1, 0x18($sp)
/* B3F4DC 800C833C 8FA30028 */  lw    $v1, 0x28($sp)
/* B3F4E0 800C8340 8C620008 */  lw    $v0, 8($v1)
.L800C8344:
/* B3F4E4 800C8344 3C058013 */  lui   $a1, %hi(gScreenWidth+2) # $a1, 0x8013
/* B3F4E8 800C8348 24060010 */  li    $a2, 16
/* B3F4EC 800C834C 10400003 */  beqz  $v0, .L800C835C
/* B3F4F0 800C8350 00000000 */   nop   
/* B3F4F4 800C8354 10000002 */  b     .L800C8360
/* B3F4F8 800C8358 9445000A */   lhu   $a1, 0xa($v0)
.L800C835C:
/* B3F4FC 800C835C 94A5D272 */  lhu   $a1, %lo(gScreenWidth+2)($a1)
.L800C8360:
/* B3F500 800C8360 0C03590C */  jal   Fault_SetFB
/* B3F504 800C8364 8C640004 */   lw    $a0, 4($v1)
/* B3F508 800C8368 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3F50C 800C836C 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B3F510 800C8370 8C430000 */  lw    $v1, ($v0)
/* B3F514 800C8374 2405000D */  li    $a1, 13
/* B3F518 800C8378 84641074 */  lh    $a0, 0x1074($v1)
/* B3F51C 800C837C 14A40024 */  bne   $a1, $a0, .L800C8410
/* B3F520 800C8380 00000000 */   nop   
/* B3F524 800C8384 846A1092 */  lh    $t2, 0x1092($v1)
/* B3F528 800C8388 10AA0021 */  beq   $a1, $t2, .L800C8410
/* B3F52C 800C838C 00000000 */   nop   
/* B3F530 800C8390 A4601076 */  sh    $zero, 0x1076($v1)
/* B3F534 800C8394 8C4B0000 */  lw    $t3, ($v0)
/* B3F538 800C8398 24060001 */  li    $a2, 1
/* B3F53C 800C839C A5601078 */  sh    $zero, 0x1078($t3)
/* B3F540 800C83A0 8C4C0000 */  lw    $t4, ($v0)
/* B3F544 800C83A4 A586107A */  sh    $a2, 0x107a($t4)
/* B3F548 800C83A8 8C4D0000 */  lw    $t5, ($v0)
/* B3F54C 800C83AC A5A0107C */  sh    $zero, 0x107c($t5)
/* B3F550 800C83B0 8C4E0000 */  lw    $t6, ($v0)
/* B3F554 800C83B4 A5C6107E */  sh    $a2, 0x107e($t6)
/* B3F558 800C83B8 8C4F0000 */  lw    $t7, ($v0)
/* B3F55C 800C83BC A5E01080 */  sh    $zero, 0x1080($t7)
/* B3F560 800C83C0 8C580000 */  lw    $t8, ($v0)
/* B3F564 800C83C4 A7001082 */  sh    $zero, 0x1082($t8)
/* B3F568 800C83C8 8C590000 */  lw    $t9, ($v0)
/* B3F56C 800C83CC A7201084 */  sh    $zero, 0x1084($t9)
/* B3F570 800C83D0 8C480000 */  lw    $t0, ($v0)
/* B3F574 800C83D4 A5001086 */  sh    $zero, 0x1086($t0)
/* B3F578 800C83D8 8C490000 */  lw    $t1, ($v0)
/* B3F57C 800C83DC A5201088 */  sh    $zero, 0x1088($t1)
/* B3F580 800C83E0 8C4A0000 */  lw    $t2, ($v0)
/* B3F584 800C83E4 A540108A */  sh    $zero, 0x108a($t2)
/* B3F588 800C83E8 8C4B0000 */  lw    $t3, ($v0)
/* B3F58C 800C83EC A560108C */  sh    $zero, 0x108c($t3)
/* B3F590 800C83F0 8C4C0000 */  lw    $t4, ($v0)
/* B3F594 800C83F4 A580108E */  sh    $zero, 0x108e($t4)
/* B3F598 800C83F8 8C4D0000 */  lw    $t5, ($v0)
/* B3F59C 800C83FC A5A01090 */  sh    $zero, 0x1090($t5)
/* B3F5A0 800C8400 8C4E0000 */  lw    $t6, ($v0)
/* B3F5A4 800C8404 A5C51092 */  sh    $a1, 0x1092($t6)
/* B3F5A8 800C8408 8C430000 */  lw    $v1, ($v0)
/* B3F5AC 800C840C 84641074 */  lh    $a0, 0x1074($v1)
.L800C8410:
/* B3F5B0 800C8410 54A4002F */  bnel  $a1, $a0, .L800C84D0
/* B3F5B4 800C8414 8FAD0028 */   lw    $t5, 0x28($sp)
/* B3F5B8 800C8418 846F1076 */  lh    $t7, 0x1076($v1)
/* B3F5BC 800C841C 24010002 */  li    $at, 2
/* B3F5C0 800C8420 55E1002B */  bnel  $t7, $at, .L800C84D0
/* B3F5C4 800C8424 8FAD0028 */   lw    $t5, 0x28($sp)
/* B3F5C8 800C8428 84781078 */  lh    $t8, 0x1078($v1)
/* B3F5CC 800C842C 24070002 */  li    $a3, 2
/* B3F5D0 800C8430 13000003 */  beqz  $t8, .L800C8440
/* B3F5D4 800C8434 00000000 */   nop   
/* B3F5D8 800C8438 10000001 */  b     .L800C8440
/* B3F5DC 800C843C 24070001 */   li    $a3, 1
.L800C8440:
/* B3F5E0 800C8440 0C001DEC */  jal   osViSetSpecialFeatures
/* B3F5E4 800C8444 00E02025 */   move  $a0, $a3
/* B3F5E8 800C8448 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3F5EC 800C844C 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B3F5F0 800C8450 8C590000 */  lw    $t9, ($v0)
/* B3F5F4 800C8454 24070080 */  li    $a3, 128
/* B3F5F8 800C8458 8728107A */  lh    $t0, 0x107a($t9)
/* B3F5FC 800C845C 11000003 */  beqz  $t0, .L800C846C
/* B3F600 800C8460 00000000 */   nop   
/* B3F604 800C8464 10000001 */  b     .L800C846C
/* B3F608 800C8468 24070040 */   li    $a3, 64
.L800C846C:
/* B3F60C 800C846C 0C001DEC */  jal   osViSetSpecialFeatures
/* B3F610 800C8470 00E02025 */   move  $a0, $a3
/* B3F614 800C8474 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3F618 800C8478 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B3F61C 800C847C 8C490000 */  lw    $t1, ($v0)
/* B3F620 800C8480 24070008 */  li    $a3, 8
/* B3F624 800C8484 852A107C */  lh    $t2, 0x107c($t1)
/* B3F628 800C8488 11400003 */  beqz  $t2, .L800C8498
/* B3F62C 800C848C 00000000 */   nop   
/* B3F630 800C8490 10000001 */  b     .L800C8498
/* B3F634 800C8494 24070004 */   li    $a3, 4
.L800C8498:
/* B3F638 800C8498 0C001DEC */  jal   osViSetSpecialFeatures
/* B3F63C 800C849C 00E02025 */   move  $a0, $a3
/* B3F640 800C84A0 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3F644 800C84A4 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B3F648 800C84A8 8C4B0000 */  lw    $t3, ($v0)
/* B3F64C 800C84AC 24070020 */  li    $a3, 32
/* B3F650 800C84B0 856C107E */  lh    $t4, 0x107e($t3)
/* B3F654 800C84B4 11800003 */  beqz  $t4, .L800C84C4
/* B3F658 800C84B8 00000000 */   nop   
/* B3F65C 800C84BC 10000001 */  b     .L800C84C4
/* B3F660 800C84C0 24070010 */   li    $a3, 16
.L800C84C4:
/* B3F664 800C84C4 0C001DEC */  jal   osViSetSpecialFeatures
/* B3F668 800C84C8 00E02025 */   move  $a0, $a3
/* B3F66C 800C84CC 8FAD0028 */  lw    $t5, 0x28($sp)
.L800C84D0:
/* B3F670 800C84D0 A1A00010 */  sb    $zero, 0x10($t5)
/* B3F674 800C84D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3F678 800C84D8 27BD0028 */  addiu $sp, $sp, 0x28
/* B3F67C 800C84DC 03E00008 */  jr    $ra
/* B3F680 800C84E0 00000000 */   nop   

