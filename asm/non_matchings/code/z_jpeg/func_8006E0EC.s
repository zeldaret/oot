.rdata
glabel D_8013BD40
    .asciz "MARKER_SOI\n"
    .balign 4

glabel D_8013BD4C
    .asciz "MARKER_APP0 %d\n"
    .balign 4

glabel D_8013BD5C
    .asciz "MARKER_APP1 %d\n"
    .balign 4

glabel D_8013BD6C
    .asciz "MARKER_APP2 %d\n"
    .balign 4

glabel D_8013BD7C
    .asciz "MARKER_DQT %d %d %02x\n"
    .balign 4

glabel D_8013BD94
    .asciz "MARKER_DHT %d %d %02x\n"
    .balign 4

glabel D_8013BDAC
    .asciz "MARKER_DRI %d\n"
    .balign 4

glabel D_8013BDBC
    .asciz "MARKER_SOF   %d 精度%02x 垂直%d 水平%d compo%02x (1:Y)%d (H0=2,V0=1(422) or 2(420))%02x (量子化テーブル)%02x (2:Cb)%d (H1=1,V1=1)%02x (量子化テーブル)%02x (3:Cr)%d (H2=1,V2=1)%02x (量子化テーブル)%02x\n"
    # EUC-JP: 精度%02x 垂直%d 水平%d compo%02x (1:Y)%d (H0=2,V0=1(422) or 2(420))%02x (量子化テーブル)%02x (2:Cb)%d (H1=1,V1=1)%02x (量子化テーブル)%02x (3:Cr)%d (H2=1,V2=1)%02x (量子化テーブル)%02x | Accuracy% 02x Vertical% d Horizontal% d compo% 02x (1: Y)% d (H0 = 2, V0 = 1 (422) or 2 (420))% 02x (quantization table)% 02x (2: Cb) % d (H1 = 1, V1 = 1)% 02x (quantization table)% 02x (3: Cr)% d (H2 = 1, V2 = 1)% 02x (quantization table)% 02x
    .balign 4

glabel D_8013BE88
    .asciz "MARKER_SOS %d\n"
    .balign 4

glabel D_8013BE98
     .asciz "MARKER_EOI\n"
    .balign 4

glabel D_8013BEA4
    .asciz "マーカー不明 %02x\n"
    # EUC-JP: マーカー不明 | Unknown marker
    .balign 4

.late_rodata
glabel jtbl_8013C0CC
    .word L8006E2D0
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E258
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E17C
    .word L8006E3C0
    .word L8006E394
    .word L8006E208
    .word L8006E3D8
    .word L8006E2A8
    .word L8006E3D8
    .word L8006E3D8
    .word L8006E190
    .word L8006E1B8
    .word L8006E1E0

.text
glabel func_8006E0EC
/* AE528C 8006E0EC 27BDFFA0 */  addiu $sp, $sp, -0x60
/* AE5290 8006E0F0 AFB40058 */  sw    $s4, 0x58($sp)
/* AE5294 8006E0F4 AFB30054 */  sw    $s3, 0x54($sp)
/* AE5298 8006E0F8 AFB00048 */  sw    $s0, 0x48($sp)
/* AE529C 8006E0FC AFBF005C */  sw    $ra, 0x5c($sp)
/* AE52A0 8006E100 AFB20050 */  sw    $s2, 0x50($sp)
/* AE52A4 8006E104 AFB1004C */  sw    $s1, 0x4c($sp)
/* AE52A8 8006E108 00808025 */  move  $s0, $a0
/* AE52AC 8006E10C 00A09825 */  move  $s3, $a1
/* AE52B0 8006E110 0000A025 */  move  $s4, $zero
/* AE52B4 8006E114 A0A00000 */  sb    $zero, ($a1)
/* AE52B8 8006E118 A0A00010 */  sb    $zero, 0x10($a1)
.L8006E11C:
/* AE52BC 8006E11C 568000B7 */  bnezl $s4, .L8006E3FC
/* AE52C0 8006E120 8FBF005C */   lw    $ra, 0x5c($sp)
.L8006E124:
/* AE52C4 8006E124 92020000 */  lbu   $v0, ($s0)
/* AE52C8 8006E128 26100001 */  addiu $s0, $s0, 1
/* AE52CC 8006E12C 384200FF */  xori  $v0, $v0, 0xff
/* AE52D0 8006E130 2C420001 */  sltiu $v0, $v0, 1
/* AE52D4 8006E134 1040FFF9 */  beqz  $v0, .L8006E11C
/* AE52D8 8006E138 00000000 */   nop   
/* AE52DC 8006E13C 92020000 */  lbu   $v0, ($s0)
/* AE52E0 8006E140 26100001 */  addiu $s0, $s0, 1
/* AE52E4 8006E144 18400009 */  blez  $v0, .L8006E16C
/* AE52E8 8006E148 244EFF40 */   addiu $t6, $v0, -0xc0
/* AE52EC 8006E14C 2DC10023 */  sltiu $at, $t6, 0x23
/* AE52F0 8006E150 102000A1 */  beqz  $at, .L8006E3D8
/* AE52F4 8006E154 000E7080 */   sll   $t6, $t6, 2
/* AE52F8 8006E158 3C018014 */  lui   $at, %hi(jtbl_8013C0CC)
/* AE52FC 8006E15C 002E0821 */  addu  $at, $at, $t6
/* AE5300 8006E160 8C2EC0CC */  lw    $t6, %lo(jtbl_8013C0CC)($at)
/* AE5304 8006E164 01C00008 */  jr    $t6
/* AE5308 8006E168 00000000 */   nop   
.L8006E16C:
/* AE530C 8006E16C 1040FFEB */  beqz  $v0, .L8006E11C
/* AE5310 8006E170 00000000 */   nop   
/* AE5314 8006E174 10000098 */  b     .L8006E3D8
/* AE5318 8006E178 00000000 */   nop   
glabel L8006E17C
/* AE531C 8006E17C 3C048014 */  lui   $a0, %hi(D_8013BD40) # $a0, 0x8014
/* AE5320 8006E180 0C00084C */  jal   osSyncPrintf
/* AE5324 8006E184 2484BD40 */   addiu $a0, %lo(D_8013BD40) # addiu $a0, $a0, -0x42c0
/* AE5328 8006E188 1000FFE4 */  b     .L8006E11C
/* AE532C 8006E18C 00000000 */   nop   
glabel L8006E190
/* AE5330 8006E190 0C01B828 */  jal   func_8006E0A0
/* AE5334 8006E194 02002025 */   move  $a0, $s0
/* AE5338 8006E198 3C048014 */  lui   $a0, %hi(D_8013BD4C) # $a0, 0x8014
/* AE533C 8006E19C 2484BD4C */  addiu $a0, %lo(D_8013BD4C) # addiu $a0, $a0, -0x42b4
/* AE5340 8006E1A0 0C00084C */  jal   osSyncPrintf
/* AE5344 8006E1A4 00402825 */   move  $a1, $v0
/* AE5348 8006E1A8 0C01B828 */  jal   func_8006E0A0
/* AE534C 8006E1AC 02002025 */   move  $a0, $s0
/* AE5350 8006E1B0 1000FFDA */  b     .L8006E11C
/* AE5354 8006E1B4 02028021 */   addu  $s0, $s0, $v0
glabel L8006E1B8
/* AE5358 8006E1B8 0C01B828 */  jal   func_8006E0A0
/* AE535C 8006E1BC 02002025 */   move  $a0, $s0
/* AE5360 8006E1C0 3C048014 */  lui   $a0, %hi(D_8013BD5C) # $a0, 0x8014
/* AE5364 8006E1C4 2484BD5C */  addiu $a0, %lo(D_8013BD5C) # addiu $a0, $a0, -0x42a4
/* AE5368 8006E1C8 0C00084C */  jal   osSyncPrintf
/* AE536C 8006E1CC 00402825 */   move  $a1, $v0
/* AE5370 8006E1D0 0C01B828 */  jal   func_8006E0A0
/* AE5374 8006E1D4 02002025 */   move  $a0, $s0
/* AE5378 8006E1D8 1000FFD0 */  b     .L8006E11C
/* AE537C 8006E1DC 02028021 */   addu  $s0, $s0, $v0
glabel L8006E1E0
/* AE5380 8006E1E0 0C01B828 */  jal   func_8006E0A0
/* AE5384 8006E1E4 02002025 */   move  $a0, $s0
/* AE5388 8006E1E8 3C048014 */  lui   $a0, %hi(D_8013BD6C) # $a0, 0x8014
/* AE538C 8006E1EC 2484BD6C */  addiu $a0, %lo(D_8013BD6C) # addiu $a0, $a0, -0x4294
/* AE5390 8006E1F0 0C00084C */  jal   osSyncPrintf
/* AE5394 8006E1F4 00402825 */   move  $a1, $v0
/* AE5398 8006E1F8 0C01B828 */  jal   func_8006E0A0
/* AE539C 8006E1FC 02002025 */   move  $a0, $s0
/* AE53A0 8006E200 1000FFC6 */  b     .L8006E11C
/* AE53A4 8006E204 02028021 */   addu  $s0, $s0, $v0
glabel L8006E208
/* AE53A8 8006E208 0C01B828 */  jal   func_8006E0A0
/* AE53AC 8006E20C 02002025 */   move  $a0, $s0
/* AE53B0 8006E210 3C048014 */  lui   $a0, %hi(D_8013BD7C) # $a0, 0x8014
/* AE53B4 8006E214 2484BD7C */  addiu $a0, %lo(D_8013BD7C) # addiu $a0, $a0, -0x4284
/* AE53B8 8006E218 92650000 */  lbu   $a1, ($s3)
/* AE53BC 8006E21C 00403025 */  move  $a2, $v0
/* AE53C0 8006E220 0C00084C */  jal   osSyncPrintf
/* AE53C4 8006E224 92070002 */   lbu   $a3, 2($s0)
/* AE53C8 8006E228 92780000 */  lbu   $t8, ($s3)
/* AE53CC 8006E22C 260F0002 */  addiu $t7, $s0, 2
/* AE53D0 8006E230 02002025 */  move  $a0, $s0
/* AE53D4 8006E234 0018C880 */  sll   $t9, $t8, 2
/* AE53D8 8006E238 02794021 */  addu  $t0, $s3, $t9
/* AE53DC 8006E23C AD0F0004 */  sw    $t7, 4($t0)
/* AE53E0 8006E240 92690000 */  lbu   $t1, ($s3)
/* AE53E4 8006E244 252A0001 */  addiu $t2, $t1, 1
/* AE53E8 8006E248 0C01B828 */  jal   func_8006E0A0
/* AE53EC 8006E24C A26A0000 */   sb    $t2, ($s3)
/* AE53F0 8006E250 1000FFB2 */  b     .L8006E11C
/* AE53F4 8006E254 02028021 */   addu  $s0, $s0, $v0
glabel L8006E258
/* AE53F8 8006E258 0C01B828 */  jal   func_8006E0A0
/* AE53FC 8006E25C 02002025 */   move  $a0, $s0
/* AE5400 8006E260 3C048014 */  lui   $a0, %hi(D_8013BD94) # $a0, 0x8014
/* AE5404 8006E264 2484BD94 */  addiu $a0, %lo(D_8013BD94) # addiu $a0, $a0, -0x426c
/* AE5408 8006E268 92650010 */  lbu   $a1, 0x10($s3)
/* AE540C 8006E26C 00403025 */  move  $a2, $v0
/* AE5410 8006E270 0C00084C */  jal   osSyncPrintf
/* AE5414 8006E274 92070002 */   lbu   $a3, 2($s0)
/* AE5418 8006E278 926C0010 */  lbu   $t4, 0x10($s3)
/* AE541C 8006E27C 260B0002 */  addiu $t3, $s0, 2
/* AE5420 8006E280 02002025 */  move  $a0, $s0
/* AE5424 8006E284 000C6880 */  sll   $t5, $t4, 2
/* AE5428 8006E288 026D7021 */  addu  $t6, $s3, $t5
/* AE542C 8006E28C ADCB0014 */  sw    $t3, 0x14($t6)
/* AE5430 8006E290 92780010 */  lbu   $t8, 0x10($s3)
/* AE5434 8006E294 27190001 */  addiu $t9, $t8, 1
/* AE5438 8006E298 0C01B828 */  jal   func_8006E0A0
/* AE543C 8006E29C A2790010 */   sb    $t9, 0x10($s3)
/* AE5440 8006E2A0 1000FF9E */  b     .L8006E11C
/* AE5444 8006E2A4 02028021 */   addu  $s0, $s0, $v0
glabel L8006E2A8
/* AE5448 8006E2A8 0C01B828 */  jal   func_8006E0A0
/* AE544C 8006E2AC 02002025 */   move  $a0, $s0
/* AE5450 8006E2B0 3C048014 */  lui   $a0, %hi(D_8013BDAC) # $a0, 0x8014
/* AE5454 8006E2B4 2484BDAC */  addiu $a0, %lo(D_8013BDAC) # addiu $a0, $a0, -0x4254
/* AE5458 8006E2B8 0C00084C */  jal   osSyncPrintf
/* AE545C 8006E2BC 00402825 */   move  $a1, $v0
/* AE5460 8006E2C0 0C01B828 */  jal   func_8006E0A0
/* AE5464 8006E2C4 02002025 */   move  $a0, $s0
/* AE5468 8006E2C8 1000FF94 */  b     .L8006E11C
/* AE546C 8006E2CC 02028021 */   addu  $s0, $s0, $v0
glabel L8006E2D0
/* AE5470 8006E2D0 0C01B828 */  jal   func_8006E0A0
/* AE5474 8006E2D4 02002025 */   move  $a0, $s0
/* AE5478 8006E2D8 3051FFFF */  andi  $s1, $v0, 0xffff
/* AE547C 8006E2DC 0C01B828 */  jal   func_8006E0A0
/* AE5480 8006E2E0 26040003 */   addiu $a0, $s0, 3
/* AE5484 8006E2E4 3052FFFF */  andi  $s2, $v0, 0xffff
/* AE5488 8006E2E8 0C01B828 */  jal   func_8006E0A0
/* AE548C 8006E2EC 26040005 */   addiu $a0, $s0, 5
/* AE5490 8006E2F0 92060002 */  lbu   $a2, 2($s0)
/* AE5494 8006E2F4 AFA20010 */  sw    $v0, 0x10($sp)
/* AE5498 8006E2F8 920F0007 */  lbu   $t7, 7($s0)
/* AE549C 8006E2FC 3C048014 */  lui   $a0, %hi(D_8013BDBC) # $a0, 0x8014
/* AE54A0 8006E300 2484BDBC */  addiu $a0, %lo(D_8013BDBC) # addiu $a0, $a0, -0x4244
/* AE54A4 8006E304 AFAF0014 */  sw    $t7, 0x14($sp)
/* AE54A8 8006E308 92080008 */  lbu   $t0, 8($s0)
/* AE54AC 8006E30C 02202825 */  move  $a1, $s1
/* AE54B0 8006E310 02403825 */  move  $a3, $s2
/* AE54B4 8006E314 AFA80018 */  sw    $t0, 0x18($sp)
/* AE54B8 8006E318 92090009 */  lbu   $t1, 9($s0)
/* AE54BC 8006E31C AFA9001C */  sw    $t1, 0x1c($sp)
/* AE54C0 8006E320 920A000A */  lbu   $t2, 0xa($s0)
/* AE54C4 8006E324 AFAA0020 */  sw    $t2, 0x20($sp)
/* AE54C8 8006E328 920C000B */  lbu   $t4, 0xb($s0)
/* AE54CC 8006E32C AFAC0024 */  sw    $t4, 0x24($sp)
/* AE54D0 8006E330 920D000C */  lbu   $t5, 0xc($s0)
/* AE54D4 8006E334 AFAD0028 */  sw    $t5, 0x28($sp)
/* AE54D8 8006E338 920B000D */  lbu   $t3, 0xd($s0)
/* AE54DC 8006E33C AFAB002C */  sw    $t3, 0x2c($sp)
/* AE54E0 8006E340 920E000E */  lbu   $t6, 0xe($s0)
/* AE54E4 8006E344 AFAE0030 */  sw    $t6, 0x30($sp)
/* AE54E8 8006E348 9218000F */  lbu   $t8, 0xf($s0)
/* AE54EC 8006E34C AFB80034 */  sw    $t8, 0x34($sp)
/* AE54F0 8006E350 92190010 */  lbu   $t9, 0x10($s0)
/* AE54F4 8006E354 0C00084C */  jal   osSyncPrintf
/* AE54F8 8006E358 AFB90038 */   sw    $t9, 0x38($sp)
/* AE54FC 8006E35C 92020009 */  lbu   $v0, 9($s0)
/* AE5500 8006E360 24010021 */  li    $at, 33
/* AE5504 8006E364 54410004 */  bnel  $v0, $at, .L8006E378
/* AE5508 8006E368 24010022 */   li    $at, 34
/* AE550C 8006E36C 10000005 */  b     .L8006E384
/* AE5510 8006E370 AE600028 */   sw    $zero, 0x28($s3)
/* AE5514 8006E374 24010022 */  li    $at, 34
.L8006E378:
/* AE5518 8006E378 14410002 */  bne   $v0, $at, .L8006E384
/* AE551C 8006E37C 240F0002 */   li    $t7, 2
/* AE5520 8006E380 AE6F0028 */  sw    $t7, 0x28($s3)
.L8006E384:
/* AE5524 8006E384 0C01B828 */  jal   func_8006E0A0
/* AE5528 8006E388 02002025 */   move  $a0, $s0
/* AE552C 8006E38C 1000FF63 */  b     .L8006E11C
/* AE5530 8006E390 02028021 */   addu  $s0, $s0, $v0
glabel L8006E394
/* AE5534 8006E394 0C01B828 */  jal   func_8006E0A0
/* AE5538 8006E398 02002025 */   move  $a0, $s0
/* AE553C 8006E39C 3C048014 */  lui   $a0, %hi(D_8013BE88) # $a0, 0x8014
/* AE5540 8006E3A0 2484BE88 */  addiu $a0, %lo(D_8013BE88) # addiu $a0, $a0, -0x4178
/* AE5544 8006E3A4 0C00084C */  jal   osSyncPrintf
/* AE5548 8006E3A8 00402825 */   move  $a1, $v0
/* AE554C 8006E3AC 0C01B828 */  jal   func_8006E0A0
/* AE5550 8006E3B0 02002025 */   move  $a0, $s0
/* AE5554 8006E3B4 02028021 */  addu  $s0, $s0, $v0
/* AE5558 8006E3B8 1000FF58 */  b     .L8006E11C
/* AE555C 8006E3BC AE700024 */   sw    $s0, 0x24($s3)
glabel L8006E3C0
/* AE5560 8006E3C0 3C048014 */  lui   $a0, %hi(D_8013BE98) # $a0, 0x8014
/* AE5564 8006E3C4 2484BE98 */  addiu $a0, %lo(D_8013BE98) # addiu $a0, $a0, -0x4168
/* AE5568 8006E3C8 0C00084C */  jal   osSyncPrintf
/* AE556C 8006E3CC 24140001 */   li    $s4, 1
/* AE5570 8006E3D0 1000FF52 */  b     .L8006E11C
/* AE5574 8006E3D4 00000000 */   nop   
glabel L8006E3D8
.L8006E3D8:
/* AE5578 8006E3D8 3C048014 */  lui   $a0, %hi(D_8013BEA4) # $a0, 0x8014
/* AE557C 8006E3DC 2484BEA4 */  addiu $a0, %lo(D_8013BEA4) # addiu $a0, $a0, -0x415c
/* AE5580 8006E3E0 0C00084C */  jal   osSyncPrintf
/* AE5584 8006E3E4 9205FFFF */   lbu   $a1, -1($s0)
/* AE5588 8006E3E8 0C01B828 */  jal   func_8006E0A0
/* AE558C 8006E3EC 02002025 */   move  $a0, $s0
/* AE5590 8006E3F0 1280FF4C */  beqz  $s4, .L8006E124
/* AE5594 8006E3F4 02028021 */   addu  $s0, $s0, $v0
/* AE5598 8006E3F8 8FBF005C */  lw    $ra, 0x5c($sp)
.L8006E3FC:
/* AE559C 8006E3FC 8FB00048 */  lw    $s0, 0x48($sp)
/* AE55A0 8006E400 8FB1004C */  lw    $s1, 0x4c($sp)
/* AE55A4 8006E404 8FB20050 */  lw    $s2, 0x50($sp)
/* AE55A8 8006E408 8FB30054 */  lw    $s3, 0x54($sp)
/* AE55AC 8006E40C 8FB40058 */  lw    $s4, 0x58($sp)
/* AE55B0 8006E410 03E00008 */  jr    $ra
/* AE55B4 8006E414 27BD0060 */   addiu $sp, $sp, 0x60

