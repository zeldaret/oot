.late_rodata
glabel jtbl_80AB9B1C
.word L80AB947C
.word L80AB94A0
.word L80AB9488
.word L80AB9494
.word L80AB94A0
.word L80AB9494
.word L80AB9494
.word L80AB94A0
.word 0x00000000

.text
glabel func_80AB93C0
/* 00440 80AB93C0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00444 80AB93C4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00448 80AB93C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0044C 80AB93CC AFBF002C */  sw      $ra, 0x002C($sp)
/* 00450 80AB93D0 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00454 80AB93D4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00458 80AB93D8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0045C 80AB93DC 24849C78 */  addiu   $a0, $a0, 0x9C78           ## $a0 = 06009C78
/* 00460 80AB93E0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00464 80AB93E4 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00468 80AB93E8 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 0046C 80AB93EC 468021A0 */  cvt.s.w $f6, $f4
/* 00470 80AB93F0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00474 80AB93F4 24A59C78 */  addiu   $a1, $a1, 0x9C78           ## $a1 = 06009C78
/* 00478 80AB93F8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0047C 80AB93FC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00480 80AB9400 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00484 80AB9404 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00488 80AB9408 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0048C 80AB940C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00490 80AB9410 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00494 80AB9414 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00498 80AB9418 24187000 */  addiu   $t8, $zero, 0x7000         ## $t8 = 00007000
/* 0049C 80AB941C A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 004A0 80AB9420 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 004A4 80AB9424 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 004A8 80AB9428 3C198016 */  lui     $t9, %hi(gSaveContext+0xee4)
/* 004AC 80AB942C 9739F544 */  lhu     $t9, %lo(gSaveContext+0xee4)($t9)
/* 004B0 80AB9430 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 004B4 80AB9434 11000006 */  beq     $t0, $zero, .L80AB9450
/* 004B8 80AB9438 00000000 */  nop
/* 004BC 80AB943C 8609027A */  lh      $t1, 0x027A($s0)           ## 0000027A
/* 004C0 80AB9440 240A70EA */  addiu   $t2, $zero, 0x70EA         ## $t2 = 000070EA
/* 004C4 80AB9444 15200002 */  bne     $t1, $zero, .L80AB9450
/* 004C8 80AB9448 00000000 */  nop
/* 004CC 80AB944C A60A010E */  sh      $t2, 0x010E($s0)           ## 0000010E
.L80AB9450:
/* 004D0 80AB9450 0C023C20 */  jal     func_8008F080
/* 004D4 80AB9454 8FA40034 */  lw      $a0, 0x0034($sp)
/* 004D8 80AB9458 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 004DC 80AB945C 2D610008 */  sltiu   $at, $t3, 0x0008
/* 004E0 80AB9460 10200011 */  beq     $at, $zero, .L80AB94A8
/* 004E4 80AB9464 000B5880 */  sll     $t3, $t3,  2
/* 004E8 80AB9468 3C0180AC */  lui     $at, %hi(jtbl_80AB9B1C)       ## $at = 80AC0000
/* 004EC 80AB946C 002B0821 */  addu    $at, $at, $t3
/* 004F0 80AB9470 8C2B9B1C */  lw      $t3, %lo(jtbl_80AB9B1C)($at)
/* 004F4 80AB9474 01600008 */  jr      $t3
/* 004F8 80AB9478 00000000 */  nop
glabel L80AB947C
/* 004FC 80AB947C 240C7118 */  addiu   $t4, $zero, 0x7118         ## $t4 = 00007118
/* 00500 80AB9480 10000009 */  beq     $zero, $zero, .L80AB94A8
/* 00504 80AB9484 A60C010E */  sh      $t4, 0x010E($s0)           ## 0000010E
glabel L80AB9488
/* 00508 80AB9488 240D7119 */  addiu   $t5, $zero, 0x7119         ## $t5 = 00007119
/* 0050C 80AB948C 10000006 */  beq     $zero, $zero, .L80AB94A8
/* 00510 80AB9490 A60D010E */  sh      $t5, 0x010E($s0)           ## 0000010E
glabel L80AB9494
/* 00514 80AB9494 240E711A */  addiu   $t6, $zero, 0x711A         ## $t6 = 0000711A
/* 00518 80AB9498 10000003 */  beq     $zero, $zero, .L80AB94A8
/* 0051C 80AB949C A60E010E */  sh      $t6, 0x010E($s0)           ## 0000010E
glabel L80AB94A0
/* 00520 80AB94A0 240F711B */  addiu   $t7, $zero, 0x711B         ## $t7 = 0000711B
/* 00524 80AB94A4 A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
.L80AB94A8:
/* 00528 80AB94A8 3C1980AC */  lui     $t9, %hi(func_80AB94D0)    ## $t9 = 80AC0000
/* 0052C 80AB94AC 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 00530 80AB94B0 273994D0 */  addiu   $t9, $t9, %lo(func_80AB94D0) ## $t9 = 80AB94D0
/* 00534 80AB94B4 A6180270 */  sh      $t8, 0x0270($s0)           ## 00000270
/* 00538 80AB94B8 AE19025C */  sw      $t9, 0x025C($s0)           ## 0000025C
/* 0053C 80AB94BC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00540 80AB94C0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00544 80AB94C4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00548 80AB94C8 03E00008 */  jr      $ra
/* 0054C 80AB94CC 00000000 */  nop
