.rdata
glabel D_8013C240
    .asciz "\x1b[43;30m\n\nフィールド常駐以外、太陽設定！よって強制解除！\n\x1b[m"
    # EUC-JP: フィールド常駐以外、太陽設定！よって強制解除！ | "Sun setting except field resident! So forced release!"?
    .balign 4

.late_rodata
glabel jtbl_8013C790
    .word L8006F4A8
    .word L8006F4CC
    .word L8006F4CC
    .word L8006F4CC
    .word L8006F4F0

.text
glabel func_8006F140
/* AE62E0 8006F140 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AE62E4 8006F144 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AE62E8 8006F148 9502000C */  lhu   $v0, 0xc($t0)
/* AE62EC 8006F14C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AE62F0 8006F150 3401C001 */  li    $at, 49153
/* AE62F4 8006F154 AFB10028 */  sw    $s1, 0x28($sp)
/* AE62F8 8006F158 AFB00024 */  sw    $s0, 0x24($sp)
/* AE62FC 8006F15C 0041082A */  slt   $at, $v0, $at
/* AE6300 8006F160 00A08025 */  move  $s0, $a1
/* AE6304 8006F164 00808825 */  move  $s1, $a0
/* AE6308 8006F168 AFBF002C */  sw    $ra, 0x2c($sp)
/* AE630C 8006F16C AFA60060 */  sw    $a2, 0x60($sp)
/* AE6310 8006F170 10200003 */  beqz  $at, .L8006F180
/* AE6314 8006F174 A5001422 */   sh    $zero, 0x1422($t0)
/* AE6318 8006F178 28414555 */  slti  $at, $v0, 0x4555
/* AE631C 8006F17C 10200003 */  beqz  $at, .L8006F18C
.L8006F180:
/* AE6320 8006F180 240E0001 */   li    $t6, 1
/* AE6324 8006F184 10000002 */  b     .L8006F190
/* AE6328 8006F188 AD0E0010 */   sw    $t6, 0x10($t0)
.L8006F18C:
/* AE632C 8006F18C AD000010 */  sw    $zero, 0x10($t0)
.L8006F190:
/* AE6330 8006F190 8E380000 */  lw    $t8, ($s1)
/* AE6334 8006F194 3C0F8007 */  lui   $t7, %hi(func_8006F0FC)
/* AE6338 8006F198 25EFF0FC */  addiu $t7, %lo(func_8006F0FC) # addiu $t7, $t7, -0xf04
/* AE633C 8006F19C AF0F02EC */  sw    $t7, 0x2ec($t8)
/* AE6340 8006F1A0 8E390000 */  lw    $t9, ($s1)
/* AE6344 8006F1A4 26040028 */  addiu $a0, $s0, 0x28
/* AE6348 8006F1A8 240B0050 */  li    $t3, 80
/* AE634C 8006F1AC AF3102F0 */  sw    $s1, 0x2f0($t9)
/* AE6350 8006F1B0 240C0050 */  li    $t4, 80
/* AE6354 8006F1B4 240D0050 */  li    $t5, 80
/* AE6358 8006F1B8 AFAD0018 */  sw    $t5, 0x18($sp)
/* AE635C 8006F1BC AFAC0014 */  sw    $t4, 0x14($sp)
/* AE6360 8006F1C0 AFA40038 */  sw    $a0, 0x38($sp)
/* AE6364 8006F1C4 AFAB0010 */  sw    $t3, 0x10($sp)
/* AE6368 8006F1C8 24050050 */  li    $a1, 80
/* AE636C 8006F1CC 24060050 */  li    $a2, 80
/* AE6370 8006F1D0 0C01E79F */  jal   Lights_DirectionalSetInfo
/* AE6374 8006F1D4 24070050 */   li    $a3, 80
/* AE6378 8006F1D8 262507A8 */  addiu $a1, $s1, 0x7a8
/* AE637C 8006F1DC AFA50034 */  sw    $a1, 0x34($sp)
/* AE6380 8006F1E0 02202025 */  move  $a0, $s1
/* AE6384 8006F1E4 0C01E9D9 */  jal   LightContext_InsertLight
/* AE6388 8006F1E8 8FA60038 */   lw    $a2, 0x38($sp)
/* AE638C 8006F1EC 26040036 */  addiu $a0, $s0, 0x36
/* AE6390 8006F1F0 240E0050 */  li    $t6, 80
/* AE6394 8006F1F4 240F0050 */  li    $t7, 80
/* AE6398 8006F1F8 24180050 */  li    $t8, 80
/* AE639C 8006F1FC AFB80018 */  sw    $t8, 0x18($sp)
/* AE63A0 8006F200 AFAF0014 */  sw    $t7, 0x14($sp)
/* AE63A4 8006F204 AFAE0010 */  sw    $t6, 0x10($sp)
/* AE63A8 8006F208 AFA40038 */  sw    $a0, 0x38($sp)
/* AE63AC 8006F20C 24050050 */  li    $a1, 80
/* AE63B0 8006F210 24060050 */  li    $a2, 80
/* AE63B4 8006F214 0C01E79F */  jal   Lights_DirectionalSetInfo
/* AE63B8 8006F218 24070050 */   li    $a3, 80
/* AE63BC 8006F21C 02202025 */  move  $a0, $s1
/* AE63C0 8006F220 8FA50034 */  lw    $a1, 0x34($sp)
/* AE63C4 8006F224 0C01E9D9 */  jal   LightContext_InsertLight
/* AE63C8 8006F228 8FA60038 */   lw    $a2, 0x38($sp)
/* AE63CC 8006F22C 44800000 */  mtc1  $zero, $f0
/* AE63D0 8006F230 24030063 */  li    $v1, 99
/* AE63D4 8006F234 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AE63D8 8006F238 44812000 */  mtc1  $at, $f4
/* AE63DC 8006F23C A2030010 */  sb    $v1, 0x10($s0)
/* AE63E0 8006F240 A2030011 */  sb    $v1, 0x11($s0)
/* AE63E4 8006F244 3C038016 */  lui   $v1, %hi(D_8015FD70) # $v1, 0x8016
/* AE63E8 8006F248 A2000019 */  sb    $zero, 0x19($s0)
/* AE63EC 8006F24C A600001A */  sh    $zero, 0x1a($s0)
/* AE63F0 8006F250 A2000021 */  sb    $zero, 0x21($s0)
/* AE63F4 8006F254 A6000022 */  sh    $zero, 0x22($s0)
/* AE63F8 8006F258 A2000044 */  sb    $zero, 0x44($s0)
/* AE63FC 8006F25C A200001F */  sb    $zero, 0x1f($s0)
/* AE6400 8006F260 A2000020 */  sb    $zero, 0x20($s0)
/* AE6404 8006F264 A20000BD */  sb    $zero, 0xbd($s0)
/* AE6408 8006F268 A20000BE */  sb    $zero, 0xbe($s0)
/* AE640C 8006F26C A20000DC */  sb    $zero, 0xdc($s0)
/* AE6410 8006F270 A20000DD */  sb    $zero, 0xdd($s0)
/* AE6414 8006F274 A20000DE */  sb    $zero, 0xde($s0)
/* AE6418 8006F278 A20000DF */  sb    $zero, 0xdf($s0)
/* AE641C 8006F27C A20000E0 */  sb    $zero, 0xe0($s0)
/* AE6420 8006F280 2463FD70 */  addiu $v1, %lo(D_8015FD70) # addiu $v1, $v1, -0x290
/* AE6424 8006F284 A20000E1 */  sb    $zero, 0xe1($s0)
/* AE6428 8006F288 A20000E2 */  sb    $zero, 0xe2($s0)
/* AE642C 8006F28C A20000E3 */  sb    $zero, 0xe3($s0)
/* AE6430 8006F290 A20000E4 */  sb    $zero, 0xe4($s0)
/* AE6434 8006F294 A20000E5 */  sb    $zero, 0xe5($s0)
/* AE6438 8006F298 A20000E9 */  sb    $zero, 0xe9($s0)
/* AE643C 8006F29C A20000EA */  sb    $zero, 0xea($s0)
/* AE6440 8006F2A0 A20000EB */  sb    $zero, 0xeb($s0)
/* AE6444 8006F2A4 A20000EC */  sb    $zero, 0xec($s0)
/* AE6448 8006F2A8 A20000ED */  sb    $zero, 0xed($s0)
/* AE644C 8006F2AC A20000E6 */  sb    $zero, 0xe6($s0)
/* AE6450 8006F2B0 A20000E7 */  sb    $zero, 0xe7($s0)
/* AE6454 8006F2B4 A20000E8 */  sb    $zero, 0xe8($s0)
/* AE6458 8006F2B8 E6000084 */  swc1  $f0, 0x84($s0)
/* AE645C 8006F2BC E6000088 */  swc1  $f0, 0x88($s0)
/* AE6460 8006F2C0 E60400D8 */  swc1  $f4, 0xd8($s0)
/* AE6464 8006F2C4 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AE6468 8006F2C8 A0600000 */  sb    $zero, ($v1)
/* AE646C 8006F2CC A0600001 */  sb    $zero, 1($v1)
/* AE6470 8006F2D0 A0600002 */  sb    $zero, 2($v1)
/* AE6474 8006F2D4 A0600003 */  sb    $zero, 3($v1)
/* AE6478 8006F2D8 3C018016 */  lui   $at, %hi(D_8015FD7C) # $at, 0x8016
/* AE647C 8006F2DC 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AE6480 8006F2E0 A420FD7C */  sh    $zero, %lo(D_8015FD7C)($at)
/* AE6484 8006F2E4 A1001410 */  sb    $zero, 0x1410($t0)
/* AE6488 8006F2E8 A60000A0 */  sh    $zero, 0xa0($s0)
/* AE648C 8006F2EC 860200A0 */  lh    $v0, 0xa0($s0)
/* AE6490 8006F2F0 24018000 */  li    $at, -32768
/* AE6494 8006F2F4 A602009E */  sh    $v0, 0x9e($s0)
/* AE6498 8006F2F8 A602009C */  sh    $v0, 0x9c($s0)
/* AE649C 8006F2FC A602009A */  sh    $v0, 0x9a($s0)
/* AE64A0 8006F300 A6020098 */  sh    $v0, 0x98($s0)
/* AE64A4 8006F304 A6020096 */  sh    $v0, 0x96($s0)
/* AE64A8 8006F308 A6020094 */  sh    $v0, 0x94($s0)
/* AE64AC 8006F30C A6020092 */  sh    $v0, 0x92($s0)
/* AE64B0 8006F310 A6020090 */  sh    $v0, 0x90($s0)
/* AE64B4 8006F314 A602008E */  sh    $v0, 0x8e($s0)
/* AE64B8 8006F318 A602008C */  sh    $v0, 0x8c($s0)
/* AE64BC 8006F31C 8503000C */  lh    $v1, 0xc($t0)
/* AE64C0 8006F320 00612021 */  addu  $a0, $v1, $at
/* AE64C4 8006F324 00042400 */  sll   $a0, $a0, 0x10
/* AE64C8 8006F328 0C01DE1C */  jal   Math_SinS
/* AE64CC 8006F32C 00042403 */   sra   $a0, $a0, 0x10
/* AE64D0 8006F330 3C0142F0 */  li    $at, 0x42F00000 # 0.000000
/* AE64D4 8006F334 44813000 */  mtc1  $at, $f6
/* AE64D8 8006F338 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AE64DC 8006F33C 44818000 */  mtc1  $at, $f16
/* AE64E0 8006F340 46060202 */  mul.s $f8, $f0, $f6
/* AE64E4 8006F344 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AE64E8 8006F348 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AE64EC 8006F34C 24018000 */  li    $at, -32768
/* AE64F0 8006F350 46004287 */  neg.s $f10, $f8
/* AE64F4 8006F354 46105482 */  mul.s $f18, $f10, $f16
/* AE64F8 8006F358 E6120004 */  swc1  $f18, 4($s0)
/* AE64FC 8006F35C 9503000C */  lhu   $v1, 0xc($t0)
/* AE6500 8006F360 00612021 */  addu  $a0, $v1, $at
/* AE6504 8006F364 00042400 */  sll   $a0, $a0, 0x10
/* AE6508 8006F368 0C01DE0D */  jal   Math_CosS
/* AE650C 8006F36C 00042403 */   sra   $a0, $a0, 0x10
/* AE6510 8006F370 3C0142F0 */  li    $at, 0x42F00000 # 0.000000
/* AE6514 8006F374 44812000 */  mtc1  $at, $f4
/* AE6518 8006F378 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AE651C 8006F37C 44814000 */  mtc1  $at, $f8
/* AE6520 8006F380 46040182 */  mul.s $f6, $f0, $f4
/* AE6524 8006F384 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AE6528 8006F388 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AE652C 8006F38C 24018000 */  li    $at, -32768
/* AE6530 8006F390 46083282 */  mul.s $f10, $f6, $f8
/* AE6534 8006F394 E60A0008 */  swc1  $f10, 8($s0)
/* AE6538 8006F398 9503000C */  lhu   $v1, 0xc($t0)
/* AE653C 8006F39C 00612021 */  addu  $a0, $v1, $at
/* AE6540 8006F3A0 00042400 */  sll   $a0, $a0, 0x10
/* AE6544 8006F3A4 0C01DE0D */  jal   Math_CosS
/* AE6548 8006F3A8 00042403 */   sra   $a0, $a0, 0x10
/* AE654C 8006F3AC 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AE6550 8006F3B0 44818000 */  mtc1  $at, $f16
/* AE6554 8006F3B4 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AE6558 8006F3B8 44812000 */  mtc1  $at, $f4
/* AE655C 8006F3BC 46100482 */  mul.s $f18, $f0, $f16
/* AE6560 8006F3C0 24070050 */  li    $a3, 80
/* AE6564 8006F3C4 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AE6568 8006F3C8 240500FF */  li    $a1, 255
/* AE656C 8006F3CC 3419FFFF */  li    $t9, 65535
/* AE6570 8006F3D0 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* AE6574 8006F3D4 A60700A8 */  sh    $a3, 0xa8($s0)
/* AE6578 8006F3D8 46049182 */  mul.s $f6, $f18, $f4
/* AE657C 8006F3DC A60700AA */  sh    $a3, 0xaa($s0)
/* AE6580 8006F3E0 A60700AC */  sh    $a3, 0xac($s0)
/* AE6584 8006F3E4 A20000BC */  sb    $zero, 0xbc($s0)
/* AE6588 8006F3E8 A20500BF */  sb    $a1, 0xbf($s0)
/* AE658C 8006F3EC A61900D6 */  sh    $t9, 0xd6($s0)
/* AE6590 8006F3F0 A6000002 */  sh    $zero, 2($s0)
/* AE6594 8006F3F4 E606000C */  swc1  $f6, 0xc($s0)
/* AE6598 8006F3F8 8C6D0000 */  lw    $t5, ($v1)
/* AE659C 8006F3FC 3C048012 */  lui   $a0, %hi(D_8011FB40) # $a0, 0x8012
/* AE65A0 8006F400 2484FB40 */  addiu $a0, %lo(D_8011FB40) # addiu $a0, $a0, -0x4c0
/* AE65A4 8006F404 A4800000 */  sh    $zero, ($a0)
/* AE65A8 8006F408 A5A00032 */  sh    $zero, 0x32($t5)
/* AE65AC 8006F40C 8C6E0000 */  lw    $t6, ($v1)
/* AE65B0 8006F410 240A0001 */  li    $t2, 1
/* AE65B4 8006F414 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* AE65B8 8006F418 A5CA0026 */  sh    $t2, 0x26($t6)
/* AE65BC 8006F41C 8C6F0000 */  lw    $t7, ($v1)
/* AE65C0 8006F420 3C010001 */  lui   $at, 1
/* AE65C4 8006F424 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* AE65C8 8006F428 85E2085A */  lh    $v0, 0x85a($t7)
/* AE65CC 8006F42C 02213021 */  addu  $a2, $s1, $at
/* AE65D0 8006F430 3C048012 */  lui   $a0, %hi(D_8011FB30) # $a0, 0x8012
/* AE65D4 8006F434 10400002 */  beqz  $v0, .L8006F440
/* AE65D8 8006F438 2458FFFF */   addiu $t8, $v0, -1
/* AE65DC 8006F43C A1181415 */  sb    $t8, 0x1415($t0)
.L8006F440:
/* AE65E0 8006F440 A0C00B12 */  sb    $zero, 0xb12($a2)
/* AE65E4 8006F444 A0C00B13 */  sb    $zero, 0xb13($a2)
/* AE65E8 8006F448 A0C00B14 */  sb    $zero, 0xb14($a2)
/* AE65EC 8006F44C A0C00B15 */  sb    $zero, 0xb15($a2)
/* AE65F0 8006F450 A0C00B16 */  sb    $zero, 0xb16($a2)
/* AE65F4 8006F454 911913C3 */  lbu   $t9, 0x13c3($t0)
/* AE65F8 8006F458 2484FB30 */  addiu $a0, %lo(D_8011FB30) # addiu $a0, $a0, -0x4d0
/* AE65FC 8006F45C 24090001 */  li    $t1, 1
/* AE6600 8006F460 53200046 */  beql  $t9, $zero, .L8006F57C
/* AE6604 8006F464 A0800000 */   sb    $zero, ($a0)
/* AE6608 8006F468 8D0B1360 */  lw    $t3, 0x1360($t0)
/* AE660C 8006F46C 3C048012 */  lui   $a0, %hi(D_8011FB30) # $a0, 0x8012
/* AE6610 8006F470 2484FB30 */  addiu $a0, %lo(D_8011FB30) # addiu $a0, $a0, -0x4d0
/* AE6614 8006F474 29610004 */  slti  $at, $t3, 4
/* AE6618 8006F478 1020003D */  beqz  $at, .L8006F570
/* AE661C 8006F47C 00000000 */   nop   
/* AE6620 8006F480 908C0000 */  lbu   $t4, ($a0)
/* AE6624 8006F484 258DFFFF */  addiu $t5, $t4, -1
/* AE6628 8006F488 2DA10005 */  sltiu $at, $t5, 5
/* AE662C 8006F48C 10200021 */  beqz  $at, .L8006F514
/* AE6630 8006F490 000D6880 */   sll   $t5, $t5, 2
/* AE6634 8006F494 3C018014 */  lui   $at, %hi(jtbl_8013C790)
/* AE6638 8006F498 002D0821 */  addu  $at, $at, $t5
/* AE663C 8006F49C 8C2DC790 */  lw    $t5, %lo(jtbl_8013C790)($at)
/* AE6640 8006F4A0 01A00008 */  jr    $t5
/* AE6644 8006F4A4 00000000 */   nop   
glabel L8006F4A8
/* AE6648 8006F4A8 24020003 */  li    $v0, 3
/* AE664C 8006F4AC 24090001 */  li    $t1, 1
/* AE6650 8006F4B0 A2090017 */  sb    $t1, 0x17($s0)
/* AE6654 8006F4B4 A2090018 */  sb    $t1, 0x18($s0)
/* AE6658 8006F4B8 A202001F */  sb    $v0, 0x1f($s0)
/* AE665C 8006F4BC A2020020 */  sb    $v0, 0x20($s0)
/* AE6660 8006F4C0 A0C00B15 */  sb    $zero, 0xb15($a2)
/* AE6664 8006F4C4 10000013 */  b     .L8006F514
/* AE6668 8006F4C8 A0C00B14 */   sb    $zero, 0xb14($a2)
glabel L8006F4CC
/* AE666C 8006F4CC 24020002 */  li    $v0, 2
/* AE6670 8006F4D0 24090001 */  li    $t1, 1
/* AE6674 8006F4D4 A2090017 */  sb    $t1, 0x17($s0)
/* AE6678 8006F4D8 A2090018 */  sb    $t1, 0x18($s0)
/* AE667C 8006F4DC A202001F */  sb    $v0, 0x1f($s0)
/* AE6680 8006F4E0 A2020020 */  sb    $v0, 0x20($s0)
/* AE6684 8006F4E4 A0C00B15 */  sb    $zero, 0xb15($a2)
/* AE6688 8006F4E8 1000000A */  b     .L8006F514
/* AE668C 8006F4EC A0C00B14 */   sb    $zero, 0xb14($a2)
glabel L8006F4F0
/* AE6690 8006F4F0 24020004 */  li    $v0, 4
/* AE6694 8006F4F4 24090001 */  li    $t1, 1
/* AE6698 8006F4F8 A2090017 */  sb    $t1, 0x17($s0)
/* AE669C 8006F4FC A2090018 */  sb    $t1, 0x18($s0)
/* AE66A0 8006F500 A202001F */  sb    $v0, 0x1f($s0)
/* AE66A4 8006F504 A2020020 */  sb    $v0, 0x20($s0)
/* AE66A8 8006F508 A0C00B15 */  sb    $zero, 0xb15($a2)
/* AE66AC 8006F50C 10000001 */  b     .L8006F514
/* AE66B0 8006F510 A0C00B14 */   sb    $zero, 0xb14($a2)
.L8006F514:
/* AE66B4 8006F514 90CE1E14 */  lbu   $t6, 0x1e14($a2)
/* AE66B8 8006F518 154E0015 */  bne   $t2, $t6, .L8006F570
/* AE66BC 8006F51C 00000000 */   nop   
/* AE66C0 8006F520 90820000 */  lbu   $v0, ($a0)
/* AE66C4 8006F524 24010003 */  li    $at, 3
/* AE66C8 8006F528 24180040 */  li    $t8, 64
/* AE66CC 8006F52C 14410004 */  bne   $v0, $at, .L8006F540
/* AE66D0 8006F530 24090001 */   li    $t1, 1
/* AE66D4 8006F534 A0D80B15 */  sb    $t8, 0xb15($a2)
/* AE66D8 8006F538 10000010 */  b     .L8006F57C
/* AE66DC 8006F53C A0D80B14 */   sb    $t8, 0xb14($a2)
.L8006F540:
/* AE66E0 8006F540 24010004 */  li    $at, 4
/* AE66E4 8006F544 14410005 */  bne   $v0, $at, .L8006F55C
/* AE66E8 8006F548 24090001 */   li    $t1, 1
/* AE66EC 8006F54C 24020014 */  li    $v0, 20
/* AE66F0 8006F550 A0C20B12 */  sb    $v0, 0xb12($a2)
/* AE66F4 8006F554 10000009 */  b     .L8006F57C
/* AE66F8 8006F558 A0C20B13 */   sb    $v0, 0xb13($a2)
.L8006F55C:
/* AE66FC 8006F55C 24010005 */  li    $at, 5
/* AE6700 8006F560 14410003 */  bne   $v0, $at, .L8006F570
/* AE6704 8006F564 2402001E */   li    $v0, 30
/* AE6708 8006F568 A0C20B12 */  sb    $v0, 0xb12($a2)
/* AE670C 8006F56C A0C20B13 */  sb    $v0, 0xb13($a2)
.L8006F570:
/* AE6710 8006F570 10000002 */  b     .L8006F57C
/* AE6714 8006F574 24090001 */   li    $t1, 1
/* AE6718 8006F578 A0800000 */  sb    $zero, ($a0)
.L8006F57C:
/* AE671C 8006F57C 3C018012 */  lui   $at, %hi(D_8011FB38) # $at, 0x8012
/* AE6720 8006F580 A020FB38 */  sb    $zero, %lo(D_8011FB38)($at)
/* AE6724 8006F584 3C018012 */  lui   $at, %hi(D_8011FB34) # $at, 0x8012
/* AE6728 8006F588 A020FB34 */  sb    $zero, %lo(D_8011FB34)($at)
/* AE672C 8006F58C 3C018012 */  lui   $at, %hi(D_8011FB3C) # $at, 0x8012
/* AE6730 8006F590 A020FB3C */  sb    $zero, %lo(D_8011FB3C)($at)
/* AE6734 8006F594 8C790000 */  lw    $t9, ($v1)
/* AE6738 8006F598 A10013C3 */  sb    $zero, 0x13c3($t0)
/* AE673C 8006F59C 2404FFB0 */  li    $a0, -80
/* AE6740 8006F5A0 A7270B5A */  sh    $a3, 0xb5a($t9)
/* AE6744 8006F5A4 8C6B0000 */  lw    $t3, ($v1)
/* AE6748 8006F5A8 2418000A */  li    $t8, 10
/* AE674C 8006F5AC 3C018016 */  lui   $at, %hi(D_8015FCC8) # $at, 0x8016
/* AE6750 8006F5B0 A5670B5C */  sh    $a3, 0xb5c($t3)
/* AE6754 8006F5B4 8C6C0000 */  lw    $t4, ($v1)
/* AE6758 8006F5B8 00001025 */  move  $v0, $zero
/* AE675C 8006F5BC A5870B5E */  sh    $a3, 0xb5e($t4)
/* AE6760 8006F5C0 8C6D0000 */  lw    $t5, ($v1)
/* AE6764 8006F5C4 A5A40B60 */  sh    $a0, 0xb60($t5)
/* AE6768 8006F5C8 8C6E0000 */  lw    $t6, ($v1)
/* AE676C 8006F5CC A5C40B62 */  sh    $a0, 0xb62($t6)
/* AE6770 8006F5D0 8C6F0000 */  lw    $t7, ($v1)
/* AE6774 8006F5D4 A5E40B64 */  sh    $a0, 0xb64($t7)
/* AE6778 8006F5D8 8C790000 */  lw    $t9, ($v1)
/* AE677C 8006F5DC A7380B66 */  sh    $t8, 0xb66($t9)
/* AE6780 8006F5E0 8C6B0000 */  lw    $t3, ($v1)
/* AE6784 8006F5E4 A5600B68 */  sh    $zero, 0xb68($t3)
/* AE6788 8006F5E8 8C6C0000 */  lw    $t4, ($v1)
/* AE678C 8006F5EC A5800B6A */  sh    $zero, 0xb6a($t4)
/* AE6790 8006F5F0 8C6D0000 */  lw    $t5, ($v1)
/* AE6794 8006F5F4 A5A00B6C */  sh    $zero, 0xb6c($t5)
/* AE6798 8006F5F8 8C6E0000 */  lw    $t6, ($v1)
/* AE679C 8006F5FC A5C00B6E */  sh    $zero, 0xb6e($t6)
/* AE67A0 8006F600 8C6F0000 */  lw    $t7, ($v1)
/* AE67A4 8006F604 3C038016 */  lui   $v1, %hi(D_8015FD10) # $v1, 0x8016
/* AE67A8 8006F608 2463FD10 */  addiu $v1, %lo(D_8015FD10) # addiu $v1, $v1, -0x2f0
/* AE67AC 8006F60C A5E00B70 */  sh    $zero, 0xb70($t7)
/* AE67B0 8006F610 A029FCC8 */  sb    $t1, %lo(D_8015FCC8)($at)
.L8006F614:
/* AE67B4 8006F614 0002C140 */  sll   $t8, $v0, 5
/* AE67B8 8006F618 24420001 */  addiu $v0, $v0, 1
/* AE67BC 8006F61C 304200FF */  andi  $v0, $v0, 0xff
/* AE67C0 8006F620 28410003 */  slti  $at, $v0, 3
/* AE67C4 8006F624 0078C821 */  addu  $t9, $v1, $t8
/* AE67C8 8006F628 1420FFFA */  bnez  $at, .L8006F614
/* AE67CC 8006F62C A3250000 */   sb    $a1, ($t9)
/* AE67D0 8006F630 A4C01D30 */  sh    $zero, 0x1d30($a2)
/* AE67D4 8006F634 A4C01D32 */  sh    $zero, 0x1d32($a2)
/* AE67D8 8006F638 00001025 */  move  $v0, $zero
.L8006F63C:
/* AE67DC 8006F63C 00025880 */  sll   $t3, $v0, 2
/* AE67E0 8006F640 24420001 */  addiu $v0, $v0, 1
/* AE67E4 8006F644 304200FF */  andi  $v0, $v0, 0xff
/* AE67E8 8006F648 2841000A */  slti  $at, $v0, 0xa
/* AE67EC 8006F64C 022B6021 */  addu  $t4, $s1, $t3
/* AE67F0 8006F650 1420FFFA */  bnez  $at, .L8006F63C
/* AE67F4 8006F654 AD801D8C */   sw    $zero, 0x1d8c($t4)
/* AE67F8 8006F658 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* AE67FC 8006F65C 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* AE6800 8006F660 02212021 */  addu  $a0, $s1, $at
/* AE6804 8006F664 24050002 */  li    $a1, 2
/* AE6808 8006F668 0C02604B */  jal   Object_GetIndex
/* AE680C 8006F66C AFA60034 */   sw    $a2, 0x34($sp)
/* AE6810 8006F670 8FA60034 */  lw    $a2, 0x34($sp)
/* AE6814 8006F674 04410009 */  bgez  $v0, .L8006F69C
/* AE6818 8006F678 24090001 */   li    $t1, 1
/* AE681C 8006F67C 90CD0A3A */  lbu   $t5, 0xa3a($a2)
/* AE6820 8006F680 3C010001 */  lui   $at, 1
/* AE6824 8006F684 00310821 */  addu  $at, $at, $s1
/* AE6828 8006F688 15A00004 */  bnez  $t5, .L8006F69C
/* AE682C 8006F68C 3C048014 */   lui   $a0, %hi(D_8013C240) # $a0, 0x8014
/* AE6830 8006F690 A0290A3A */  sb    $t1, 0xa3a($at)
/* AE6834 8006F694 0C00084C */  jal   osSyncPrintf
/* AE6838 8006F698 2484C240 */   addiu $a0, %lo(D_8013C240) # addiu $a0, $a0, -0x3dc0
.L8006F69C:
/* AE683C 8006F69C 3C018016 */  lui   $at, %hi(D_8015FCF0) # $at, 0x8016
/* AE6840 8006F6A0 0C02A857 */  jal   func_800AA15C
/* AE6844 8006F6A4 A020FCF0 */   sb    $zero, %lo(D_8015FCF0)($at)
/* AE6848 8006F6A8 8FBF002C */  lw    $ra, 0x2c($sp)
/* AE684C 8006F6AC 8FB00024 */  lw    $s0, 0x24($sp)
/* AE6850 8006F6B0 8FB10028 */  lw    $s1, 0x28($sp)
/* AE6854 8006F6B4 03E00008 */  jr    $ra
/* AE6858 8006F6B8 27BD0058 */   addiu $sp, $sp, 0x58

/* AE685C 8006F6BC AFA50004 */  sw    $a1, 4($sp)
/* AE6860 8006F6C0 AFA60008 */  sw    $a2, 8($sp)
/* AE6864 8006F6C4 AFA7000C */  sw    $a3, 0xc($sp)
/* AE6868 8006F6C8 90890000 */  lbu   $t1, ($a0)
/* AE686C 8006F6CC 30A500FF */  andi  $a1, $a1, 0xff
/* AE6870 8006F6D0 30C600FF */  andi  $a2, $a2, 0xff
/* AE6874 8006F6D4 00A91823 */  subu  $v1, $a1, $t1
/* AE6878 8006F6D8 00031C00 */  sll   $v1, $v1, 0x10
/* AE687C 8006F6DC 00031C03 */  sra   $v1, $v1, 0x10
/* AE6880 8006F6E0 10A90043 */  beq   $a1, $t1, .L8006F7F0
/* AE6884 8006F6E4 00A04025 */   move  $t0, $a1
/* AE6888 8006F6E8 0066001A */  div   $zero, $v1, $a2
/* AE688C 8006F6EC 93AB0013 */  lbu   $t3, 0x13($sp)
/* AE6890 8006F6F0 14C00002 */  bnez  $a2, .L8006F6FC
/* AE6894 8006F6F4 00000000 */   nop   
/* AE6898 8006F6F8 0007000D */  break 7
.L8006F6FC:
/* AE689C 8006F6FC 2401FFFF */  li    $at, -1
/* AE68A0 8006F700 14C10004 */  bne   $a2, $at, .L8006F714
/* AE68A4 8006F704 3C018000 */   lui   $at, 0x8000
/* AE68A8 8006F708 14610002 */  bne   $v1, $at, .L8006F714
/* AE68AC 8006F70C 00000000 */   nop   
/* AE68B0 8006F710 0006000D */  break 6
.L8006F714:
/* AE68B4 8006F714 00003812 */  mflo  $a3
/* AE68B8 8006F718 00075400 */  sll   $t2, $a3, 0x10
/* AE68BC 8006F71C 000B6400 */  sll   $t4, $t3, 0x10
/* AE68C0 8006F720 000C6403 */  sra   $t4, $t4, 0x10
/* AE68C4 8006F724 000A5403 */  sra   $t2, $t2, 0x10
/* AE68C8 8006F728 00071400 */  sll   $v0, $a3, 0x10
/* AE68CC 8006F72C 014C082A */  slt   $at, $t2, $t4
/* AE68D0 8006F730 10200007 */  beqz  $at, .L8006F750
/* AE68D4 8006F734 00021403 */   sra   $v0, $v0, 0x10
/* AE68D8 8006F738 000B3023 */  negu  $a2, $t3
/* AE68DC 8006F73C 00063400 */  sll   $a2, $a2, 0x10
/* AE68E0 8006F740 00063403 */  sra   $a2, $a2, 0x10
/* AE68E4 8006F744 00CA082A */  slt   $at, $a2, $t2
/* AE68E8 8006F748 54200016 */  bnezl $at, .L8006F7A4
/* AE68EC 8006F74C 014C082A */   slt   $at, $t2, $t4
.L8006F750:
/* AE68F0 8006F750 93A5000F */  lbu   $a1, 0xf($sp)
/* AE68F4 8006F754 00057400 */  sll   $t6, $a1, 0x10
/* AE68F8 8006F758 000E7C03 */  sra   $t7, $t6, 0x10
/* AE68FC 8006F75C 01EA082A */  slt   $at, $t7, $t2
/* AE6900 8006F760 10200003 */  beqz  $at, .L8006F770
/* AE6904 8006F764 00053023 */   negu  $a2, $a1
/* AE6908 8006F768 00051400 */  sll   $v0, $a1, 0x10
/* AE690C 8006F76C 00021403 */  sra   $v0, $v0, 0x10
.L8006F770:
/* AE6910 8006F770 0006C400 */  sll   $t8, $a2, 0x10
/* AE6914 8006F774 0018CC03 */  sra   $t9, $t8, 0x10
/* AE6918 8006F778 0059082A */  slt   $at, $v0, $t9
/* AE691C 8006F77C 50200004 */  beql  $at, $zero, .L8006F790
/* AE6920 8006F780 00406825 */   move  $t5, $v0
/* AE6924 8006F784 00061400 */  sll   $v0, $a2, 0x10
/* AE6928 8006F788 00021403 */  sra   $v0, $v0, 0x10
/* AE692C 8006F78C 00406825 */  move  $t5, $v0
.L8006F790:
/* AE6930 8006F790 012D7021 */  addu  $t6, $t1, $t5
/* AE6934 8006F794 A08E0000 */  sb    $t6, ($a0)
/* AE6938 8006F798 03E00008 */  jr    $ra
/* AE693C 8006F79C 306200FF */   andi  $v0, $v1, 0xff

/* AE6940 8006F7A0 014C082A */  slt   $at, $t2, $t4
.L8006F7A4:
/* AE6944 8006F7A4 10200008 */  beqz  $at, .L8006F7C8
/* AE6948 8006F7A8 012CC021 */   addu  $t8, $t1, $t4
/* AE694C 8006F7AC 331900FF */  andi  $t9, $t8, 0xff
/* AE6950 8006F7B0 000B1400 */  sll   $v0, $t3, 0x10
/* AE6954 8006F7B4 0119082A */  slt   $at, $t0, $t9
/* AE6958 8006F7B8 00021403 */  sra   $v0, $v0, 0x10
/* AE695C 8006F7BC 10200002 */  beqz  $at, .L8006F7C8
/* AE6960 8006F7C0 A0980000 */   sb    $t8, ($a0)
/* AE6964 8006F7C4 A0850000 */  sb    $a1, ($a0)
.L8006F7C8:
/* AE6968 8006F7C8 00C2082A */  slt   $at, $a2, $v0
/* AE696C 8006F7CC 10200008 */  beqz  $at, .L8006F7F0
/* AE6970 8006F7D0 00000000 */   nop   
/* AE6974 8006F7D4 908D0000 */  lbu   $t5, ($a0)
/* AE6978 8006F7D8 01A67821 */  addu  $t7, $t5, $a2
/* AE697C 8006F7DC 31F800FF */  andi  $t8, $t7, 0xff
/* AE6980 8006F7E0 0308082A */  slt   $at, $t8, $t0
/* AE6984 8006F7E4 10200002 */  beqz  $at, .L8006F7F0
/* AE6988 8006F7E8 A08F0000 */   sb    $t7, ($a0)
/* AE698C 8006F7EC A0850000 */  sb    $a1, ($a0)
.L8006F7F0:
/* AE6990 8006F7F0 03E00008 */  jr    $ra
/* AE6994 8006F7F4 306200FF */   andi  $v0, $v1, 0xff

/* AE6998 8006F7F8 AFA50004 */  sw    $a1, 4($sp)
/* AE699C 8006F7FC AFA60008 */  sw    $a2, 8($sp)
/* AE69A0 8006F800 AFA7000C */  sw    $a3, 0xc($sp)
/* AE69A4 8006F804 80880000 */  lb    $t0, ($a0)
/* AE69A8 8006F808 00052E00 */  sll   $a1, $a1, 0x18
/* AE69AC 8006F80C 00052E03 */  sra   $a1, $a1, 0x18
/* AE69B0 8006F810 00A81823 */  subu  $v1, $a1, $t0
/* AE69B4 8006F814 00031C00 */  sll   $v1, $v1, 0x10
/* AE69B8 8006F818 30C600FF */  andi  $a2, $a2, 0xff
/* AE69BC 8006F81C 10A80045 */  beq   $a1, $t0, .L8006F934
/* AE69C0 8006F820 00031C03 */   sra   $v1, $v1, 0x10
/* AE69C4 8006F824 0066001A */  div   $zero, $v1, $a2
/* AE69C8 8006F828 93AA0013 */  lbu   $t2, 0x13($sp)
/* AE69CC 8006F82C 14C00002 */  bnez  $a2, .L8006F838
/* AE69D0 8006F830 00000000 */   nop   
/* AE69D4 8006F834 0007000D */  break 7
.L8006F838:
/* AE69D8 8006F838 2401FFFF */  li    $at, -1
/* AE69DC 8006F83C 14C10004 */  bne   $a2, $at, .L8006F850
/* AE69E0 8006F840 3C018000 */   lui   $at, 0x8000
/* AE69E4 8006F844 14610002 */  bne   $v1, $at, .L8006F850
/* AE69E8 8006F848 00000000 */   nop   
/* AE69EC 8006F84C 0006000D */  break 6
.L8006F850:
/* AE69F0 8006F850 00003812 */  mflo  $a3
/* AE69F4 8006F854 00074C00 */  sll   $t1, $a3, 0x10
/* AE69F8 8006F858 000A5C00 */  sll   $t3, $t2, 0x10
/* AE69FC 8006F85C 000B5C03 */  sra   $t3, $t3, 0x10
/* AE6A00 8006F860 00094C03 */  sra   $t1, $t1, 0x10
/* AE6A04 8006F864 00071400 */  sll   $v0, $a3, 0x10
/* AE6A08 8006F868 012B082A */  slt   $at, $t1, $t3
/* AE6A0C 8006F86C 10200007 */  beqz  $at, .L8006F88C
/* AE6A10 8006F870 00021403 */   sra   $v0, $v0, 0x10
/* AE6A14 8006F874 000A3023 */  negu  $a2, $t2
/* AE6A18 8006F878 00063400 */  sll   $a2, $a2, 0x10
/* AE6A1C 8006F87C 00063403 */  sra   $a2, $a2, 0x10
/* AE6A20 8006F880 00C9082A */  slt   $at, $a2, $t1
/* AE6A24 8006F884 54200016 */  bnezl $at, .L8006F8E0
/* AE6A28 8006F888 012B082A */   slt   $at, $t1, $t3
.L8006F88C:
/* AE6A2C 8006F88C 93A5000F */  lbu   $a1, 0xf($sp)
/* AE6A30 8006F890 00057400 */  sll   $t6, $a1, 0x10
/* AE6A34 8006F894 000E7C03 */  sra   $t7, $t6, 0x10
/* AE6A38 8006F898 01E9082A */  slt   $at, $t7, $t1
/* AE6A3C 8006F89C 10200003 */  beqz  $at, .L8006F8AC
/* AE6A40 8006F8A0 00053023 */   negu  $a2, $a1
/* AE6A44 8006F8A4 00051400 */  sll   $v0, $a1, 0x10
/* AE6A48 8006F8A8 00021403 */  sra   $v0, $v0, 0x10
.L8006F8AC:
/* AE6A4C 8006F8AC 0006C400 */  sll   $t8, $a2, 0x10
/* AE6A50 8006F8B0 0018CC03 */  sra   $t9, $t8, 0x10
/* AE6A54 8006F8B4 0059082A */  slt   $at, $v0, $t9
/* AE6A58 8006F8B8 50200004 */  beql  $at, $zero, .L8006F8CC
/* AE6A5C 8006F8BC 00406825 */   move  $t5, $v0
/* AE6A60 8006F8C0 00061400 */  sll   $v0, $a2, 0x10
/* AE6A64 8006F8C4 00021403 */  sra   $v0, $v0, 0x10
/* AE6A68 8006F8C8 00406825 */  move  $t5, $v0
.L8006F8CC:
/* AE6A6C 8006F8CC 010D7021 */  addu  $t6, $t0, $t5
/* AE6A70 8006F8D0 A08E0000 */  sb    $t6, ($a0)
/* AE6A74 8006F8D4 03E00008 */  jr    $ra
/* AE6A78 8006F8D8 306200FF */   andi  $v0, $v1, 0xff

/* AE6A7C 8006F8DC 012B082A */  slt   $at, $t1, $t3
.L8006F8E0:
/* AE6A80 8006F8E0 10200009 */  beqz  $at, .L8006F908
/* AE6A84 8006F8E4 010BC821 */   addu  $t9, $t0, $t3
/* AE6A88 8006F8E8 A0990000 */  sb    $t9, ($a0)
/* AE6A8C 8006F8EC 808C0000 */  lb    $t4, ($a0)
/* AE6A90 8006F8F0 000A1400 */  sll   $v0, $t2, 0x10
/* AE6A94 8006F8F4 00021403 */  sra   $v0, $v0, 0x10
/* AE6A98 8006F8F8 00AC082A */  slt   $at, $a1, $t4
/* AE6A9C 8006F8FC 50200003 */  beql  $at, $zero, .L8006F90C
/* AE6AA0 8006F900 00C2082A */   slt   $at, $a2, $v0
/* AE6AA4 8006F904 A0850000 */  sb    $a1, ($a0)
.L8006F908:
/* AE6AA8 8006F908 00C2082A */  slt   $at, $a2, $v0
.L8006F90C:
/* AE6AAC 8006F90C 10200009 */  beqz  $at, .L8006F934
/* AE6AB0 8006F910 00000000 */   nop   
/* AE6AB4 8006F914 808D0000 */  lb    $t5, ($a0)
/* AE6AB8 8006F918 01A6C021 */  addu  $t8, $t5, $a2
/* AE6ABC 8006F91C A0980000 */  sb    $t8, ($a0)
/* AE6AC0 8006F920 80990000 */  lb    $t9, ($a0)
/* AE6AC4 8006F924 0325082A */  slt   $at, $t9, $a1
/* AE6AC8 8006F928 10200002 */  beqz  $at, .L8006F934
/* AE6ACC 8006F92C 00000000 */   nop   
/* AE6AD0 8006F930 A0850000 */  sb    $a1, ($a0)
.L8006F934:
/* AE6AD4 8006F934 03E00008 */  jr    $ra
/* AE6AD8 8006F938 306200FF */   andi  $v0, $v1, 0xff

