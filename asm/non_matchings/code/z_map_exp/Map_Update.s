.rdata
glabel D_8013D998
    .asciz "現在階＝%d  現在部屋＝%x  部屋数＝%d\n"
    # EUC-JP: 現在階＝%d 現在部屋＝%x 部屋数＝%d | Current floor =% d Current room =% x Number of rooms =% d
    .balign 4

glabel D_8013D9C0
    .asciz "\x1b[33m"
    .balign 4

glabel D_8013D9C8
    .asciz "階層切替＝%x\n"
    # EUC-JP: 階層切替＝ | Tier switching = 
    .balign 4

glabel D_8013D9D8
    .asciz "\x1b[m"
    .balign 4

.late_rodata
glabel jtbl_8013DC8C
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800822DC
    .word L800825BC
    .word L800825BC
    .word L800825BC
    .word L800825BC
    .word L800825BC
    .word L800825BC
    .word L800825BC
    .word L8008255C
    .word L8008255C
    .word L8008255C
    .word L8008255C
    .word L8008255C
    .word L8008255C
    .word L8008255C
    .word L8008255C

.text
glabel Map_Update
/* AF940C 8008226C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AF9410 80082270 3C010001 */  lui   $at, 1
/* AF9414 80082274 AFBF002C */  sw    $ra, 0x2c($sp)
/* AF9418 80082278 AFB40028 */  sw    $s4, 0x28($sp)
/* AF941C 8008227C AFB30024 */  sw    $s3, 0x24($sp)
/* AF9420 80082280 AFB20020 */  sw    $s2, 0x20($sp)
/* AF9424 80082284 AFB1001C */  sw    $s1, 0x1c($sp)
/* AF9428 80082288 AFB00018 */  sw    $s0, 0x18($sp)
/* AF942C 8008228C 00811021 */  addu  $v0, $a0, $at
/* AF9430 80082290 944E0934 */  lhu   $t6, 0x934($v0)
/* AF9434 80082294 3C068016 */  lui   $a2, %hi(gSaveContext) # $a2, 0x8016
/* AF9438 80082298 24C6E660 */  addiu $a2, %lo(gSaveContext) # addiu $a2, $a2, -0x19a0
/* AF943C 8008229C 0080A025 */  move  $s4, $a0
/* AF9440 800822A0 8C851C44 */  lw    $a1, 0x1c44($a0)
/* AF9444 800822A4 15C000C5 */  bnez  $t6, .L800825BC
/* AF9448 800822A8 94D31402 */   lhu   $s3, 0x1402($a2)
/* AF944C 800822AC 944F0936 */  lhu   $t7, 0x936($v0)
/* AF9450 800822B0 55E000C3 */  bnezl $t7, .L800825C0
/* AF9454 800822B4 8FBF002C */   lw    $ra, 0x2c($sp)
/* AF9458 800822B8 848200A4 */  lh    $v0, 0xa4($a0)
/* AF945C 800822BC 2C410019 */  sltiu $at, $v0, 0x19
/* AF9460 800822C0 102000BE */  beqz  $at, .L800825BC
/* AF9464 800822C4 0002C080 */   sll   $t8, $v0, 2
/* AF9468 800822C8 3C018014 */  lui   $at, %hi(jtbl_8013DC8C)
/* AF946C 800822CC 00380821 */  addu  $at, $at, $t8
/* AF9470 800822D0 8C38DC8C */  lw    $t8, %lo(jtbl_8013DC8C)($at)
/* AF9474 800822D4 03000008 */  jr    $t8
/* AF9478 800822D8 00000000 */   nop   
glabel L800822DC
/* AF947C 800822DC 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF9480 800822E0 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF9484 800822E4 02819021 */  addu  $s2, $s4, $at
/* AF9488 800822E8 3C078012 */  lui   $a3, %hi(gBitFlags) # $a3, 0x8012
/* AF948C 800822EC A240015E */  sb    $zero, 0x15e($s2)
/* AF9490 800822F0 24E77120 */  addiu $a3, %lo(gBitFlags) # addiu $a3, $a3, 0x7120
/* AF9494 800822F4 00D34021 */  addu  $t0, $a2, $s3
/* AF9498 800822F8 910900A8 */  lbu   $t1, 0xa8($t0)
/* AF949C 800822FC 8CF90008 */  lw    $t9, 8($a3)
/* AF94A0 80082300 0013C0C0 */  sll   $t8, $s3, 3
/* AF94A4 80082304 3C0C8016 */  lui   $t4, %hi(gMapData) # $t4, 0x8016
/* AF94A8 80082308 03295024 */  and   $t2, $t9, $t1
/* AF94AC 8008230C 11400004 */  beqz  $t2, .L80082320
/* AF94B0 80082310 0313C023 */   subu  $t8, $t8, $s3
/* AF94B4 80082314 240B0001 */  li    $t3, 1
/* AF94B8 80082318 10000002 */  b     .L80082324
/* AF94BC 8008231C A24B015F */   sb    $t3, 0x15f($s2)
.L80082320:
/* AF94C0 80082320 A240015F */  sb    $zero, 0x15f($s2)
.L80082324:
/* AF94C4 80082324 8D8CFFD0 */  lw    $t4, %lo(gMapData)($t4)
/* AF94C8 80082328 00137140 */  sll   $t6, $s3, 5
/* AF94CC 8008232C 00008825 */  move  $s1, $zero
/* AF94D0 80082330 8D8D0054 */  lw    $t5, 0x54($t4)
/* AF94D4 80082334 C4A00028 */  lwc1  $f0, 0x28($a1)
/* AF94D8 80082338 0018C080 */  sll   $t8, $t8, 2
/* AF94DC 8008233C 01AE1821 */  addu  $v1, $t5, $t6
/* AF94E0 80082340 00111080 */  sll   $v0, $s1, 2
.L80082344:
/* AF94E4 80082344 00627821 */  addu  $t7, $v1, $v0
/* AF94E8 80082348 C5E40000 */  lwc1  $f4, ($t7)
/* AF94EC 8008234C 4600203C */  c.lt.s $f4, $f0
/* AF94F0 80082350 00000000 */  nop   
/* AF94F4 80082354 45030009 */  bc1tl .L8008237C
/* AF94F8 80082358 00D81821 */   addu  $v1, $a2, $t8
/* AF94FC 8008235C 26310001 */  addiu $s1, $s1, 1
/* AF9500 80082360 00118C00 */  sll   $s1, $s1, 0x10
/* AF9504 80082364 00118C03 */  sra   $s1, $s1, 0x10
/* AF9508 80082368 2A210008 */  slti  $at, $s1, 8
/* AF950C 8008236C 5420FFF5 */  bnezl $at, .L80082344
/* AF9510 80082370 00111080 */   sll   $v0, $s1, 2
/* AF9514 80082374 00111080 */  sll   $v0, $s1, 2
/* AF9518 80082378 00D81821 */  addu  $v1, $a2, $t8
.L8008237C:
/* AF951C 8008237C 00E2C821 */  addu  $t9, $a3, $v0
/* AF9520 80082380 8F290000 */  lw    $t1, ($t9)
/* AF9524 80082384 8C6800EC */  lw    $t0, 0xec($v1)
/* AF9528 80082388 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* AF952C 8008238C 02602025 */  move  $a0, $s3
/* AF9530 80082390 01095025 */  or    $t2, $t0, $t1
/* AF9534 80082394 AC6A00EC */  sw    $t2, 0xec($v1)
/* AF9538 80082398 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AF953C 8008239C 02202825 */  move  $a1, $s1
/* AF9540 800823A0 0C020892 */  jal   Map_GetFloorTextIndexOffset
/* AF9544 800823A4 A5710F50 */   sh    $s1, 0xf50($t3)
/* AF9548 800823A8 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF954C 800823AC 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AF9550 800823B0 02602025 */  move  $a0, $s3
/* AF9554 800823B4 846D0F2C */  lh    $t5, 0xf2c($v1)
/* AF9558 800823B8 846C0F2E */  lh    $t4, 0xf2e($v1)
/* AF955C 800823BC 004D7021 */  addu  $t6, $v0, $t5
/* AF9560 800823C0 118E0008 */  beq   $t4, $t6, .L800823E4
/* AF9564 800823C4 00000000 */   nop   
/* AF9568 800823C8 0C020892 */  jal   Map_GetFloorTextIndexOffset
/* AF956C 800823CC 02202825 */   move  $a1, $s1
/* AF9570 800823D0 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF9574 800823D4 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AF9578 800823D8 846F0F2C */  lh    $t7, 0xf2c($v1)
/* AF957C 800823DC 004FC021 */  addu  $t8, $v0, $t7
/* AF9580 800823E0 A4780F2E */  sh    $t8, 0xf2e($v1)
.L800823E4:
/* AF9584 800823E4 3C198012 */  lui   $t9, %hi(sLastRoomNum) # $t9, 0x8012
/* AF9588 800823E8 87393A60 */  lh    $t9, %lo(sLastRoomNum)($t9)
/* AF958C 800823EC 8646025C */  lh    $a2, 0x25c($s2)
/* AF9590 800823F0 3C088016 */  lui   $t0, %hi(gMapData) # $t0, 0x8016
/* AF9594 800823F4 1326000D */  beq   $t9, $a2, .L8008242C
/* AF9598 800823F8 00000000 */   nop   
/* AF959C 800823FC 8D08FFD0 */  lw    $t0, %lo(gMapData)($t0)
/* AF95A0 80082400 00135040 */  sll   $t2, $s3, 1
/* AF95A4 80082404 3C048014 */  lui   $a0, %hi(D_8013D998) # $a0, 0x8014
/* AF95A8 80082408 8D090058 */  lw    $t1, 0x58($t0)
/* AF95AC 8008240C 2484D998 */  addiu $a0, %lo(D_8013D998) # addiu $a0, $a0, -0x2668
/* AF95B0 80082410 02202825 */  move  $a1, $s1
/* AF95B4 80082414 012A5821 */  addu  $t3, $t1, $t2
/* AF95B8 80082418 0C00084C */  jal   osSyncPrintf
/* AF95BC 8008241C 95670000 */   lhu   $a3, ($t3)
/* AF95C0 80082420 8646025C */  lh    $a2, 0x25c($s2)
/* AF95C4 80082424 3C018012 */  lui   $at, %hi(sLastRoomNum) # $at, 0x8012
/* AF95C8 80082428 A4263A60 */  sh    $a2, %lo(sLastRoomNum)($at)
.L8008242C:
/* AF95CC 8008242C 3C028016 */  lui   $v0, %hi(gMapData) # $v0, 0x8016
/* AF95D0 80082430 8C42FFD0 */  lw    $v0, %lo(gMapData)($v0)
/* AF95D4 80082434 00136840 */  sll   $t5, $s3, 1
/* AF95D8 80082438 AFAD0034 */  sw    $t5, 0x34($sp)
/* AF95DC 8008243C 8C4C0058 */  lw    $t4, 0x58($v0)
/* AF95E0 80082440 00008025 */  move  $s0, $zero
/* AF95E4 80082444 018D7821 */  addu  $t7, $t4, $t5
/* AF95E8 80082448 95E30000 */  lhu   $v1, ($t7)
/* AF95EC 8008244C 1860003F */  blez  $v1, .L8008254C
/* AF95F0 80082450 0013C880 */   sll   $t9, $s3, 2
.L80082454:
/* AF95F4 80082454 0333C823 */  subu  $t9, $t9, $s3
/* AF95F8 80082458 0019C880 */  sll   $t9, $t9, 2
/* AF95FC 8008245C 8C58005C */  lw    $t8, 0x5c($v0)
/* AF9600 80082460 0333C821 */  addu  $t9, $t9, $s3
/* AF9604 80082464 0019C880 */  sll   $t9, $t9, 2
/* AF9608 80082468 0333C823 */  subu  $t9, $t9, $s3
/* AF960C 8008246C 03194021 */  addu  $t0, $t8, $t9
/* AF9610 80082470 01104821 */  addu  $t1, $t0, $s0
/* AF9614 80082474 912A0000 */  lbu   $t2, ($t1)
/* AF9618 80082478 00136880 */  sll   $t5, $s3, 2
/* AF961C 8008247C 01B36823 */  subu  $t5, $t5, $s3
/* AF9620 80082480 14CA002C */  bne   $a2, $t2, .L80082534
/* AF9624 80082484 000D6880 */   sll   $t5, $t5, 2
/* AF9628 80082488 8C4B0060 */  lw    $t3, 0x60($v0)
/* AF962C 8008248C 01B36821 */  addu  $t5, $t5, $s3
/* AF9630 80082490 000D6880 */  sll   $t5, $t5, 2
/* AF9634 80082494 01B36823 */  subu  $t5, $t5, $s3
/* AF9638 80082498 016D6021 */  addu  $t4, $t3, $t5
/* AF963C 8008249C 01907021 */  addu  $t6, $t4, $s0
/* AF9640 800824A0 91CF0000 */  lbu   $t7, ($t6)
/* AF9644 800824A4 0013C880 */  sll   $t9, $s3, 2
/* AF9648 800824A8 0333C823 */  subu  $t9, $t9, $s3
/* AF964C 800824AC 162F0021 */  bne   $s1, $t7, .L80082534
/* AF9650 800824B0 0019C880 */   sll   $t9, $t9, 2
/* AF9654 800824B4 8C580064 */  lw    $t8, 0x64($v0)
/* AF9658 800824B8 0333C821 */  addu  $t9, $t9, $s3
/* AF965C 800824BC 0019C880 */  sll   $t9, $t9, 2
/* AF9660 800824C0 0333C823 */  subu  $t9, $t9, $s3
/* AF9664 800824C4 03194021 */  addu  $t0, $t8, $t9
/* AF9668 800824C8 01104821 */  addu  $t1, $t0, $s0
/* AF966C 800824CC 912A0000 */  lbu   $t2, ($t1)
/* AF9670 800824D0 3C048014 */  lui   $a0, %hi(D_8013D9C0) # $a0, 0x8014
/* AF9674 800824D4 2484D9C0 */  addiu $a0, %lo(D_8013D9C0) # addiu $a0, $a0, -0x2640
/* AF9678 800824D8 0C00084C */  jal   osSyncPrintf
/* AF967C 800824DC A64A025C */   sh    $t2, 0x25c($s2)
/* AF9680 800824E0 3C048014 */  lui   $a0, %hi(D_8013D9C8) # $a0, 0x8014
/* AF9684 800824E4 2484D9C8 */  addiu $a0, %lo(D_8013D9C8) # addiu $a0, $a0, -0x2638
/* AF9688 800824E8 0C00084C */  jal   osSyncPrintf
/* AF968C 800824EC 8645025C */   lh    $a1, 0x25c($s2)
/* AF9690 800824F0 3C048014 */  lui   $a0, %hi(D_8013D9D8) # $a0, 0x8014
/* AF9694 800824F4 0C00084C */  jal   osSyncPrintf
/* AF9698 800824F8 2484D9D8 */   addiu $a0, %lo(D_8013D9D8) # addiu $a0, $a0, -0x2628
/* AF969C 800824FC 02802025 */  move  $a0, $s4
/* AF96A0 80082500 0C0202AD */  jal   Map_InitData
/* AF96A4 80082504 8645025C */   lh    $a1, 0x25c($s2)
/* AF96A8 80082508 3C018016 */  lui   $at, %hi(gSaveContext+0x1422) # $at, 0x8016
/* AF96AC 8008250C A420FA82 */  sh    $zero, %lo(gSaveContext+0x1422)($at)
/* AF96B0 80082510 0C0201E8 */  jal   Map_SavePlayerInitialInfo
/* AF96B4 80082514 02802025 */   move  $a0, $s4
/* AF96B8 80082518 3C028016 */  lui   $v0, %hi(gMapData) # $v0, 0x8016
/* AF96BC 8008251C 8C42FFD0 */  lw    $v0, %lo(gMapData)($v0)
/* AF96C0 80082520 8FAD0034 */  lw    $t5, 0x34($sp)
/* AF96C4 80082524 8646025C */  lh    $a2, 0x25c($s2)
/* AF96C8 80082528 8C4B0058 */  lw    $t3, 0x58($v0)
/* AF96CC 8008252C 016D6021 */  addu  $t4, $t3, $t5
/* AF96D0 80082530 95830000 */  lhu   $v1, ($t4)
.L80082534:
/* AF96D4 80082534 26100001 */  addiu $s0, $s0, 1
/* AF96D8 80082538 00108400 */  sll   $s0, $s0, 0x10
/* AF96DC 8008253C 00108403 */  sra   $s0, $s0, 0x10
/* AF96E0 80082540 0203082A */  slt   $at, $s0, $v1
/* AF96E4 80082544 5420FFC3 */  bnezl $at, .L80082454
/* AF96E8 80082548 0013C880 */   sll   $t9, $s3, 2
.L8008254C:
/* AF96EC 8008254C 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AF96F0 80082550 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AF96F4 80082554 10000019 */  b     .L800825BC
/* AF96F8 80082558 A5C60F28 */   sh    $a2, 0xf28($t6)
glabel L8008255C
/* AF96FC 8008255C 3C0F8016 */  lui   $t7, %hi(gMapData) # $t7, 0x8016
/* AF9700 80082560 8DEFFFD0 */  lw    $t7, %lo(gMapData)($t7)
/* AF9704 80082564 0002C840 */  sll   $t9, $v0, 1
/* AF9708 80082568 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AF970C 8008256C 8DF80004 */  lw    $t8, 4($t7)
/* AF9710 80082570 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AF9714 80082574 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF9718 80082578 03194021 */  addu  $t0, $t8, $t9
/* AF971C 8008257C 8509FFDE */  lh    $t1, -0x22($t0)
/* AF9720 80082580 3C0B8016 */  lui   $t3, %hi(gMapData) # $t3, 0x8016
/* AF9724 80082584 A5490F50 */  sh    $t1, 0xf50($t2)
/* AF9728 80082588 8D6BFFD0 */  lw    $t3, %lo(gMapData)($t3)
/* AF972C 8008258C 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AF9730 80082590 868C00A4 */  lh    $t4, 0xa4($s4)
/* AF9734 80082594 8D6D0000 */  lw    $t5, ($t3)
/* AF9738 80082598 84780F50 */  lh    $t8, 0xf50($v1)
/* AF973C 8008259C 000C7100 */  sll   $t6, $t4, 4
/* AF9740 800825A0 01AE7821 */  addu  $t7, $t5, $t6
/* AF9744 800825A4 0018C840 */  sll   $t9, $t8, 1
/* AF9748 800825A8 01F94021 */  addu  $t0, $t7, $t9
/* AF974C 800825AC 8509FEF0 */  lh    $t1, -0x110($t0)
/* AF9750 800825B0 846A0F2C */  lh    $t2, 0xf2c($v1)
/* AF9754 800825B4 012A5821 */  addu  $t3, $t1, $t2
/* AF9758 800825B8 A46B0F2E */  sh    $t3, 0xf2e($v1)
glabel L800825BC
.L800825BC:
/* AF975C 800825BC 8FBF002C */  lw    $ra, 0x2c($sp)
.L800825C0:
/* AF9760 800825C0 8FB00018 */  lw    $s0, 0x18($sp)
/* AF9764 800825C4 8FB1001C */  lw    $s1, 0x1c($sp)
/* AF9768 800825C8 8FB20020 */  lw    $s2, 0x20($sp)
/* AF976C 800825CC 8FB30024 */  lw    $s3, 0x24($sp)
/* AF9770 800825D0 8FB40028 */  lw    $s4, 0x28($sp)
/* AF9774 800825D4 03E00008 */  jr    $ra
/* AF9778 800825D8 27BD0050 */   addiu $sp, $sp, 0x50
