.rdata
glabel D_80154464
    # On Stage Performance
    .asciz "台上演奏\n"
    .balign 4

glabel D_80154470
    .asciz "Na_StartOcarinaSinglePlayCheck2( message->ocarina_no );\n"
    .balign 4

glabel D_801544AC
    # Performance Check=%d
    .asciz "演奏チェック=%d\n"
    .balign 4

glabel D_801544C0
    # locate=%d note_pt=%d
    .asciz "locate=%d  onpu_pt=%d\n"
    .balign 4

glabel D_801544D8
    # Ocarina_Frog Correct Example Performance=%x
    .asciz "Ocarina_Flog 正解模範演奏=%x\n"
    .balign 4

glabel D_801544F8
    # Ocarina_Frog Correct Example Performance=%x
    .asciz "Ocarina_Flog 正解模範演奏=%x\n"
    .balign 4

glabel D_80154518
    # Ocarina_Free Correct Example Performance=%x
    .asciz "Ocarina_Free 正解模範演奏=%x\n"
    .balign 4

glabel D_80154538
    # Correct Example Performance=%x
    .asciz "正解模範演奏=%x\n"
    .balign 4

glabel D_8015454C
    # kokokokokoko
    .asciz "ここここここ\n"
    .balign 4

glabel D_8015455C
    # Cancel
    .asciz "キャンセル\n"
    .balign 4

glabel D_80154568
    .asciz "\x1b[32m"
    .balign 4

glabel D_80154570
    .asciz "Na_StopOcarinaMode();\n"
    .balign 4

glabel D_80154588
    .asciz "Na_StopOcarinaMode();\n"
    .balign 4

glabel D_801545A0
    .asciz "Na_StopOcarinaMode();\n"
    .balign 4

glabel D_801545B8
    .asciz "\x1b[m"
    .balign 4

glabel D_801545BC
    # ocarina_no=%d Song Chosen=%d
    .asciz "ocarina_no=%d  選曲=%d\n"
    .balign 4

glabel D_801545D4
    # Example Performance=%x
    .asciz "模範演奏=%x\n"
    .balign 4

glabel D_801545E4
    .asciz "\x1b[33m"
    .balign 4

glabel D_801545EC
    .asciz "☆☆☆ocarina=%d   message->ocarina_no=%d  "
    .balign 4

glabel D_80154618
    .asciz "\x1b[33m"
    .balign 4

glabel D_80154620
    .asciz "Ocarina_PC_Wind=%d(%d) ☆☆☆   "
    .balign 4

glabel D_80154644
    .asciz "\x1b[32m"
    .balign 4

glabel D_8015464C
    .asciz "Ocarina_C_Wind=%d(%d) ☆☆☆   "
    .balign 4

glabel D_8015466C
    .asciz "\x1b[m"
    .balign 4

glabel D_80154670
    .asciz "→  OCARINA_MODE=%d\n"
    .balign 4

glabel D_80154688
    # note_buff[%d]=%x
    .asciz "onpu_buff[%d]=%x\n"
    .balign 4

glabel D_8015469C
    .asciz "M_OCARINA20 : ocarina_no=%x    status=%x\n"
    .balign 4

glabel D_801546C8
    .asciz "\x1b[33m"
    .balign 4

glabel D_801546D0
    # z_message.c Melody Acquired＝%d
    .asciz "z_message.c 取得メロディ＝%d\n"
    .balign 4

glabel D_801546F0
    .asciz "\x1b[m"
    .balign 4

glabel D_801546F4
    # Scarecrow Recording Initialization
    .asciz "案山子録音 初期化\n"
    .balign 4

glabel D_80154708
    # note_pt=%d, locate=%d
    .asciz "\nonpu_pt=%d, locate=%d"
    .balign 4

glabel D_80154720
    # Button Entered【%d】=%d
    .asciz "    入力ボタン【%d】=%d"
    .balign 4

glabel D_80154738
    # Recording complete！！！！！！！！！ message->info->status=%d
    .asciz "録音終了！！！！！！！！！  message->info->status=%d \n"
    .balign 4

glabel D_80154770
    .asciz "aaaaaaaaaaaaaa\n"
    .balign 4

glabel D_80154780
    # Recording complete！！！！！！！！！Recording Complete
    .asciz "録音終了！！！！！！！！！録音終了\n"
    .balign 4

glabel D_801547A4
    .asciz "\x1b[33m"
    .balign 4

glabel D_801547AC
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_801547F4
    .asciz "%d, "
    .balign 4

glabel D_801547FC
    .asciz "\x1b[m"
    .balign 4

glabel D_80154800
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_80154848
    .asciz "status=%d (%d)\n"
    .balign 4

glabel D_80154858
    .asciz "bbbbbbbbbbb\n"
    .balign 4

glabel D_80154868
    # 8 Note Recording ＯＫ！
    .asciz "８音録音ＯＫ！\n"
    .balign 4

glabel D_80154878
    .asciz "\x1b[33m"
    .balign 4

glabel D_80154880
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_801548C8
    .asciz "%d, "
    .balign 4

glabel D_801548D0
    .asciz "\x1b[m"
    .balign 4

glabel D_801548D4
    .asciz "\n====================================================================\n"
    .balign 4

glabel D_8015491C
    # Played an existing song！！！
    .asciz "すでに存在する曲吹いた！！！ \n"
    .balign 4

glabel D_8015493C
    .asciz "cccccccccccc\n"
    .balign 4

glabel D_8015494C
    # Musical round failed！！！！！！！！！
    .asciz "輪唱失敗！！！！！！！！！\n"
    .balign 4

glabel D_80154968
    # Musical round succeeded！！！！！！！！！
    .asciz "輪唱成功！！！！！！！！！\n"
    .balign 4

.late_rodata
glabel jtbl_80154BE8
    .word L8010C4F4
    .word L8010C4F4
    .word L8010C4F4
    .word L8010C4F4
    .word L8010C4FC
    .word L8010C564
    .word L8010C578
    .word L8010C564
    .word L8010C5AC
    .word L8010C5AC
    .word L8010C5AC
    .word L8010C750
    .word L8010CBFC
    .word L8010D500
    .word L8010D50C
    .word L8010D594
    .word L8010D65C
    .word L8010D768
    .word L8010DC10
    .word L8010D924
    .word L8010D968
    .word L8010D9A0
    .word L8010D9D8
    .word L8010D824
    .word L8010DC10
    .word L8010DD08
    .word L8010DD1C
    .word L8010CBFC
    .word L8010D500
    .word L8010D594
    .word L8010DEAC
    .word L8010EC60
    .word L8010DED8
    .word L8010DF4C
    .word L8010E1D8
    .word L8010E334
    .word L8010E364
    .word L8010E544
    .word L8010CBFC
    .word L8010E1D8
    .word L8010E580
    .word L8010E5F0
    .word L8010E730
    .word L8010E5F0
    .word L8010E730
    .word L8010E79C
    .word L8010E904
    .word L8010EA20
    .word L8010EA70
    .word L8010EAE0
    .word L8010EB44
    .word L8010C578
    .word L8010EB4C
    .word L8010EC58
    .word L8010EC58

.text
glabel func_8010C39C
/* B8353C 8010C39C 27BDFEA8 */  addiu $sp, $sp, -0x158
/* B83540 8010C3A0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B83544 8010C3A4 AFB20038 */  sw    $s2, 0x38($sp)
/* B83548 8010C3A8 AFB10034 */  sw    $s1, 0x34($sp)
/* B8354C 8010C3AC AFB00030 */  sw    $s0, 0x30($sp)
/* B83550 8010C3B0 AFA5015C */  sw    $a1, 0x15c($sp)
/* B83554 8010C3B4 8C8E1C44 */  lw    $t6, 0x1c44($a0)
/* B83558 8010C3B8 3C0FDB06 */  lui   $t7, (0xDB060008 >> 16) # lui $t7, 0xdb06
/* B8355C 8010C3BC 35EF0008 */  ori   $t7, (0xDB060008 & 0xFFFF) # ori $t7, $t7, 8
/* B83560 8010C3C0 AFAE0148 */  sw    $t6, 0x148($sp)
/* B83564 8010C3C4 8CA20000 */  lw    $v0, ($a1)
/* B83568 8010C3C8 3C010001 */  lui   $at, 1
/* B8356C 8010C3CC 0081C021 */  addu  $t8, $a0, $at
/* B83570 8010C3D0 AFA20140 */  sw    $v0, 0x140($sp)
/* B83574 8010C3D4 244E0008 */  addiu $t6, $v0, 8
/* B83578 8010C3D8 AFAE0140 */  sw    $t6, 0x140($sp)
/* B8357C 8010C3DC AC4F0000 */  sw    $t7, ($v0)
/* B83580 8010C3E0 AFB8008C */  sw    $t8, 0x8c($sp)
/* B83584 8010C3E4 8F0E0620 */  lw    $t6, 0x620($t8)
/* B83588 8010C3E8 3C19DB06 */  lui   $t9, (0xDB06001C >> 16) # lui $t9, 0xdb06
/* B8358C 8010C3EC 3739001C */  ori   $t9, (0xDB06001C & 0xFFFF) # ori $t9, $t9, 0x1c
/* B83590 8010C3F0 AC4E0004 */  sw    $t6, 4($v0)
/* B83594 8010C3F4 8FAF0140 */  lw    $t7, 0x140($sp)
/* B83598 8010C3F8 34018000 */  li    $at, 32768
/* B8359C 8010C3FC 249120D8 */  addiu $s1, $a0, 0x20d8
/* B835A0 8010C400 25F80008 */  addiu $t8, $t7, 8
/* B835A4 8010C404 AFB80140 */  sw    $t8, 0x140($sp)
/* B835A8 8010C408 02218021 */  addu  $s0, $s1, $at
/* B835AC 8010C40C ADF90000 */  sw    $t9, ($t7)
/* B835B0 8010C410 8E0E62B0 */  lw    $t6, 0x62b0($s0)
/* B835B4 8010C414 00809025 */  move  $s2, $a0
/* B835B8 8010C418 ADEE0004 */  sw    $t6, 4($t7)
/* B835BC 8010C41C 8E0F6300 */  lw    $t7, 0x6300($s0)
/* B835C0 8010C420 51E00BA2 */  beql  $t7, $zero, .L8010F2AC
/* B835C4 8010C424 8FB80140 */   lw    $t8, 0x140($sp)
/* B835C8 8010C428 961863F0 */  lhu   $t8, 0x63f0($s0)
/* B835CC 8010C42C 2401002F */  li    $at, 47
/* B835D0 8010C430 13010014 */  beq   $t8, $at, .L8010C484
/* B835D4 8010C434 00000000 */   nop   
/* B835D8 8010C438 92026304 */  lbu   $v0, 0x6304($s0)
/* B835DC 8010C43C 24010017 */  li    $at, 23
/* B835E0 8010C440 10410010 */  beq   $v0, $at, .L8010C484
/* B835E4 8010C444 28410002 */   slti  $at, $v0, 2
/* B835E8 8010C448 1420000E */  bnez  $at, .L8010C484
/* B835EC 8010C44C 28410036 */   slti  $at, $v0, 0x36
/* B835F0 8010C450 1020000C */  beqz  $at, .L8010C484
/* B835F4 8010C454 00000000 */   nop   
/* B835F8 8010C458 921962FD */  lbu   $t9, 0x62fd($s0)
/* B835FC 8010C45C 2B210004 */  slti  $at, $t9, 4
/* B83600 8010C460 10200008 */  beqz  $at, .L8010C484
/* B83604 8010C464 00000000 */   nop   
/* B83608 8010C468 0C0430D6 */  jal   func_8010C358
/* B8360C 8010C46C 02202025 */   move  $a0, $s1
/* B83610 8010C470 0C02515F */  jal   func_8009457C
/* B83614 8010C474 27A40140 */   addiu $a0, $sp, 0x140
/* B83618 8010C478 02402025 */  move  $a0, $s2
/* B8361C 8010C47C 0C042FB6 */  jal   func_8010BED8
/* B83620 8010C480 27A50140 */   addiu $a1, $sp, 0x140
.L8010C484:
/* B83624 8010C484 0C02515F */  jal   func_8009457C
/* B83628 8010C488 27A40140 */   addiu $a0, $sp, 0x140
/* B8362C 8010C48C 8FAE0140 */  lw    $t6, 0x140($sp)
/* B83630 8010C490 3C18E200 */  lui   $t8, (0xE2001E01 >> 16) # lui $t8, 0xe200
/* B83634 8010C494 37181E01 */  ori   $t8, (0xE2001E01 & 0xFFFF) # ori $t8, $t8, 0x1e01
/* B83638 8010C498 25CF0008 */  addiu $t7, $t6, 8
/* B8363C 8010C49C AFAF0140 */  sw    $t7, 0x140($sp)
/* B83640 8010C4A0 ADC00004 */  sw    $zero, 4($t6)
/* B83644 8010C4A4 ADD80000 */  sw    $t8, ($t6)
/* B83648 8010C4A8 8FB90140 */  lw    $t9, 0x140($sp)
/* B8364C 8010C4AC 3C18FF2D */  lui   $t8, (0xFF2DFEFF >> 16) # lui $t8, 0xff2d
/* B83650 8010C4B0 3C0FFCFF */  lui   $t7, (0xFCFF97FF >> 16) # lui $t7, 0xfcff
/* B83654 8010C4B4 272E0008 */  addiu $t6, $t9, 8
/* B83658 8010C4B8 AFAE0140 */  sw    $t6, 0x140($sp)
/* B8365C 8010C4BC 35EF97FF */  ori   $t7, (0xFCFF97FF & 0xFFFF) # ori $t7, $t7, 0x97ff
/* B83660 8010C4C0 3718FEFF */  ori   $t8, (0xFF2DFEFF & 0xFFFF) # ori $t8, $t8, 0xfeff
/* B83664 8010C4C4 AF380004 */  sw    $t8, 4($t9)
/* B83668 8010C4C8 AF2F0000 */  sw    $t7, ($t9)
/* B8366C 8010C4CC 92026304 */  lbu   $v0, 0x6304($s0)
/* B83670 8010C4D0 2459FFFF */  addiu $t9, $v0, -1
/* B83674 8010C4D4 2F210037 */  sltiu $at, $t9, 0x37
/* B83678 8010C4D8 102009E1 */  beqz  $at, .L8010EC60
/* B8367C 8010C4DC 0019C880 */   sll   $t9, $t9, 2
/* B83680 8010C4E0 3C018015 */  lui   $at, %hi(jtbl_80154BE8)
/* B83684 8010C4E4 00390821 */  addu  $at, $at, $t9
/* B83688 8010C4E8 8C394BE8 */  lw    $t9, %lo(jtbl_80154BE8)($at)
/* B8368C 8010C4EC 03200008 */  jr    $t9
/* B83690 8010C4F0 00000000 */   nop   
glabel L8010C4F4
/* B83694 8010C4F4 100009DF */  b     .L8010EC74
/* B83698 8010C4F8 2841000C */   slti  $at, $v0, 0xc
glabel L8010C4FC
/* B8369C 8010C4FC 920E63E7 */  lbu   $t6, 0x63e7($s0)
/* B836A0 8010C500 24010001 */  li    $at, 1
/* B836A4 8010C504 15C10015 */  bne   $t6, $at, .L8010C55C
/* B836A8 8010C508 26442200 */   addiu $a0, $s2, 0x2200
/* B836AC 8010C50C AFA40090 */  sw    $a0, 0x90($sp)
/* B836B0 8010C510 00003025 */  move  $a2, $zero
/* B836B4 8010C514 00003825 */  move  $a3, $zero
.L8010C518:
/* B836B8 8010C518 8FA40090 */  lw    $a0, 0x90($sp)
/* B836BC 8010C51C 34058140 */  li    $a1, 33088
/* B836C0 8010C520 A7A60132 */  sh    $a2, 0x132($sp)
/* B836C4 8010C524 0C01BB94 */  jal   func_8006EE50
/* B836C8 8010C528 A7A70138 */   sh    $a3, 0x138($sp)
/* B836CC 8010C52C 97A70138 */  lhu   $a3, 0x138($sp)
/* B836D0 8010C530 97A60132 */  lhu   $a2, 0x132($sp)
/* B836D4 8010C534 24E70001 */  addiu $a3, $a3, 1
/* B836D8 8010C538 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B836DC 8010C53C 28E10030 */  slti  $at, $a3, 0x30
/* B836E0 8010C540 24C60080 */  addiu $a2, $a2, 0x80
/* B836E4 8010C544 1420FFF4 */  bnez  $at, .L8010C518
/* B836E8 8010C548 30C6FFFF */   andi  $a2, $a2, 0xffff
/* B836EC 8010C54C 02402025 */  move  $a0, $s2
/* B836F0 8010C550 0C0421AC */  jal   func_801086B0
/* B836F4 8010C554 27A50140 */   addiu $a1, $sp, 0x140
/* B836F8 8010C558 92026304 */  lbu   $v0, 0x6304($s0)
.L8010C55C:
/* B836FC 8010C55C 100009C5 */  b     .L8010EC74
/* B83700 8010C560 2841000C */   slti  $at, $v0, 0xc
glabel L8010C564
/* B83704 8010C564 02402025 */  move  $a0, $s2
/* B83708 8010C568 0C0421AC */  jal   func_801086B0
/* B8370C 8010C56C 27A50140 */   addiu $a1, $sp, 0x140
/* B83710 8010C570 100009BF */  b     .L8010EC70
/* B83714 8010C574 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010C578
/* B83718 8010C578 02402025 */  move  $a0, $s2
/* B8371C 8010C57C 0C0421AC */  jal   func_801086B0
/* B83720 8010C580 27A50140 */   addiu $a1, $sp, 0x140
/* B83724 8010C584 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B83728 8010C588 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B8372C 8010C58C 8D280000 */  lw    $t0, ($t1)
/* B83730 8010C590 02402025 */  move  $a0, $s2
/* B83734 8010C594 27A50140 */  addiu $a1, $sp, 0x140
/* B83738 8010C598 85060B14 */  lh    $a2, 0xb14($t0)
/* B8373C 8010C59C 0C041E60 */  jal   func_80107980
/* B83740 8010C5A0 85070B16 */   lh    $a3, 0xb16($t0)
/* B83744 8010C5A4 100009B2 */  b     .L8010EC70
/* B83748 8010C5A8 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010C5AC
/* B8374C 8010C5AC 0C03B616 */  jal   func_800ED858
/* B83750 8010C5B0 24040001 */   li    $a0, 1
/* B83754 8010C5B4 0C03B8F5 */  jal   func_800EE3D4
/* B83758 8010C5B8 00000000 */   nop   
/* B8375C 8010C5BC 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B83760 8010C5C0 26217FFF */  addiu $at, $s1, 0x7fff
/* B83764 8010C5C4 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B83768 8010C5C8 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B8376C 8010C5CC A5000000 */  sh    $zero, ($t0)
/* B83770 8010C5D0 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B83774 8010C5D4 850F0000 */  lh    $t7, ($t0)
/* B83778 8010C5D8 3C010001 */  lui   $at, 1
/* B8377C 8010C5DC 00320821 */  addu  $at, $at, $s2
/* B83780 8010C5E0 24190001 */  li    $t9, 1
/* B83784 8010C5E4 A30F0002 */  sb    $t7, 2($t8)
/* B83788 8010C5E8 0C041A6C */  jal   func_801069B0
/* B8378C 8010C5EC A43904C6 */   sh    $t9, 0x4c6($at)
/* B83790 8010C5F0 240E0001 */  li    $t6, 1
/* B83794 8010C5F4 3C018015 */  lui   $at, %hi(D_80153CDC) # $at, 0x8015
/* B83798 8010C5F8 A42E3CDC */  sh    $t6, %lo(D_80153CDC)($at)
/* B8379C 8010C5FC 92026304 */  lbu   $v0, 0x6304($s0)
/* B837A0 8010C600 240A0003 */  li    $t2, 3
/* B837A4 8010C604 3C018015 */  lui   $at, %hi(D_80153CD8) # $at, 0x8015
/* B837A8 8010C608 A42A3CD8 */  sh    $t2, %lo(D_80153CD8)($at)
/* B837AC 8010C60C 24010009 */  li    $at, 9
/* B837B0 8010C610 5441002E */  bnel  $v0, $at, .L8010C6CC
/* B837B4 8010C614 2401000A */   li    $at, 10
/* B837B8 8010C618 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B837BC 8010C61C 10400008 */  beqz  $v0, .L8010C640
/* B837C0 8010C620 24010001 */   li    $at, 1
/* B837C4 8010C624 10410006 */  beq   $v0, $at, .L8010C640
/* B837C8 8010C628 2401002C */   li    $at, 44
/* B837CC 8010C62C 10410004 */  beq   $v0, $at, .L8010C640
/* B837D0 8010C630 24010030 */   li    $at, 48
/* B837D4 8010C634 10410002 */  beq   $v0, $at, .L8010C640
/* B837D8 8010C638 28410022 */   slti  $at, $v0, 0x22
/* B837DC 8010C63C 14200014 */  bnez  $at, .L8010C690
.L8010C640:
/* B837E0 8010C640 24010001 */   li    $at, 1
/* B837E4 8010C644 10410002 */  beq   $v0, $at, .L8010C650
/* B837E8 8010C648 24010030 */   li    $at, 48
/* B837EC 8010C64C 14410008 */  bne   $v0, $at, .L8010C670
.L8010C650:
/* B837F0 8010C650 3C048015 */   lui   $a0, %hi(D_8014B31C) # $a0, 0x8015
/* B837F4 8010C654 9484B31C */  lhu   $a0, %lo(D_8014B31C)($a0)
/* B837F8 8010C658 3401C000 */  li    $at, 49152
/* B837FC 8010C65C 00812021 */  addu  $a0, $a0, $at
/* B83800 8010C660 0C03B301 */  jal   func_800ECC04
/* B83804 8010C664 3084FFFF */   andi  $a0, $a0, 0xffff
/* B83808 8010C668 10000014 */  b     .L8010C6BC
/* B8380C 8010C66C 2419000C */   li    $t9, 12
.L8010C670:
/* B83810 8010C670 3C048015 */  lui   $a0, %hi(D_80154464) # $a0, 0x8015
/* B83814 8010C674 0C00084C */  jal   osSyncPrintf
/* B83818 8010C678 24844464 */   addiu $a0, %lo(D_80154464) # addiu $a0, $a0, 0x4464
/* B8381C 8010C67C 3C048015 */  lui   $a0, %hi(D_8014B31C) # $a0, 0x8015
/* B83820 8010C680 0C03B301 */  jal   func_800ECC04
/* B83824 8010C684 9484B31C */   lhu   $a0, %lo(D_8014B31C)($a0)
/* B83828 8010C688 1000000C */  b     .L8010C6BC
/* B8382C 8010C68C 2419000C */   li    $t9, 12
.L8010C690:
/* B83830 8010C690 3C048015 */  lui   $a0, %hi(D_80154470) # $a0, 0x8015
/* B83834 8010C694 0C00084C */  jal   osSyncPrintf
/* B83838 8010C698 24844470 */   addiu $a0, %lo(D_80154470) # addiu $a0, $a0, 0x4470
/* B8383C 8010C69C 960F63F0 */  lhu   $t7, 0x63f0($s0)
/* B83840 8010C6A0 24180001 */  li    $t8, 1
/* B83844 8010C6A4 34018000 */  li    $at, 32768
/* B83848 8010C6A8 01F82004 */  sllv  $a0, $t8, $t7
/* B8384C 8010C6AC 00812021 */  addu  $a0, $a0, $at
/* B83850 8010C6B0 0C03B301 */  jal   func_800ECC04
/* B83854 8010C6B4 3084FFFF */   andi  $a0, $a0, 0xffff
/* B83858 8010C6B8 2419000C */  li    $t9, 12
.L8010C6BC:
/* B8385C 8010C6BC 26217FFF */  addiu $at, $s1, 0x7fff
/* B83860 8010C6C0 10000019 */  b     .L8010C728
/* B83864 8010C6C4 A0396305 */   sb    $t9, 0x6305($at)
/* B83868 8010C6C8 2401000A */  li    $at, 10
.L8010C6CC:
/* B8386C 8010C6CC 14410006 */  bne   $v0, $at, .L8010C6E8
/* B83870 8010C6D0 240E0014 */   li    $t6, 20
/* B83874 8010C6D4 26217FFF */  addiu $at, $s1, 0x7fff
/* B83878 8010C6D8 24180018 */  li    $t8, 24
/* B8387C 8010C6DC A02E63E8 */  sb    $t6, 0x63e8($at)
/* B83880 8010C6E0 10000011 */  b     .L8010C728
/* B83884 8010C6E4 A0386305 */   sb    $t8, 0x6305($at)
.L8010C6E8:
/* B83888 8010C6E8 960F63F0 */  lhu   $t7, 0x63f0($s0)
/* B8388C 8010C6EC 240E0001 */  li    $t6, 1
/* B83890 8010C6F0 34018000 */  li    $at, 32768
/* B83894 8010C6F4 25F90011 */  addiu $t9, $t7, 0x11
/* B83898 8010C6F8 032E2004 */  sllv  $a0, $t6, $t9
/* B8389C 8010C6FC 00812021 */  addu  $a0, $a0, $at
/* B838A0 8010C700 0C03B301 */  jal   func_800ECC04
/* B838A4 8010C704 3084FFFF */   andi  $a0, $a0, 0xffff
/* B838A8 8010C708 960563F0 */  lhu   $a1, 0x63f0($s0)
/* B838AC 8010C70C 3C048015 */  lui   $a0, %hi(D_801544AC) # $a0, 0x8015
/* B838B0 8010C710 248444AC */  addiu $a0, %lo(D_801544AC) # addiu $a0, $a0, 0x44ac
/* B838B4 8010C714 0C00084C */  jal   osSyncPrintf
/* B838B8 8010C718 24A5FFF1 */   addiu $a1, $a1, -0xf
/* B838BC 8010C71C 2418001B */  li    $t8, 27
/* B838C0 8010C720 26217FFF */  addiu $at, $s1, 0x7fff
/* B838C4 8010C724 A0386305 */  sb    $t8, 0x6305($at)
.L8010C728:
/* B838C8 8010C728 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B838CC 8010C72C 24010001 */  li    $at, 1
/* B838D0 8010C730 10410005 */  beq   $v0, $at, .L8010C748
/* B838D4 8010C734 24010030 */   li    $at, 48
/* B838D8 8010C738 10410003 */  beq   $v0, $at, .L8010C748
/* B838DC 8010C73C 02402025 */   move  $a0, $s2
/* B838E0 8010C740 0C0421AC */  jal   func_801086B0
/* B838E4 8010C744 27A50140 */   addiu $a1, $sp, 0x140
.L8010C748:
/* B838E8 8010C748 10000949 */  b     .L8010EC70
/* B838EC 8010C74C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010C750
/* B838F0 8010C750 0C03B8F5 */  jal   func_800EE3D4
/* B838F4 8010C754 00000000 */   nop   
/* B838F8 8010C758 26217FFF */  addiu $at, $s1, 0x7fff
/* B838FC 8010C75C AC2262B9 */  sw    $v0, 0x62b9($at)
/* B83900 8010C760 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B83904 8010C764 90E30002 */  lbu   $v1, 2($a3)
/* B83908 8010C768 10600029 */  beqz  $v1, .L8010C810
/* B8390C 8010C76C 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B83910 8010C770 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B83914 8010C774 3C048015 */  lui   $a0, %hi(D_801544C0) # $a0, 0x8015
/* B83918 8010C778 248444C0 */  addiu $a0, %lo(D_801544C0) # addiu $a0, $a0, 0x44c0
/* B8391C 8010C77C 85060000 */  lh    $a2, ($t0)
/* B83920 8010C780 0C00084C */  jal   osSyncPrintf
/* B83924 8010C784 00602825 */   move  $a1, $v1
/* B83928 8010C788 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B8392C 8010C78C 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B83930 8010C790 24010001 */  li    $at, 1
/* B83934 8010C794 90E40002 */  lbu   $a0, 2($a3)
/* B83938 8010C798 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B8393C 8010C79C 54810009 */  bnel  $a0, $at, .L8010C7C4
/* B83940 8010C7A0 850E0000 */   lh    $t6, ($t0)
/* B83944 8010C7A4 850F0000 */  lh    $t7, ($t0)
/* B83948 8010C7A8 24010008 */  li    $at, 8
/* B8394C 8010C7AC 55E10005 */  bnel  $t7, $at, .L8010C7C4
/* B83950 8010C7B0 850E0000 */   lh    $t6, ($t0)
/* B83954 8010C7B4 A5000000 */  sh    $zero, ($t0)
/* B83958 8010C7B8 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B8395C 8010C7BC 90E40002 */  lbu   $a0, 2($a3)
/* B83960 8010C7C0 850E0000 */  lh    $t6, ($t0)
.L8010C7C4:
/* B83964 8010C7C4 25D90001 */  addiu $t9, $t6, 1
/* B83968 8010C7C8 54990012 */  bnel  $a0, $t9, .L8010C814
/* B8396C 8010C7CC 90F80001 */   lbu   $t8, 1($a3)
/* B83970 8010C7D0 90E20000 */  lbu   $v0, ($a3)
/* B83974 8010C7D4 3C018015 */  lui   $at, %hi(D_8015394B)
/* B83978 8010C7D8 00240821 */  addu  $at, $at, $a0
/* B8397C 8010C7DC A022394B */  sb    $v0, %lo(D_8015394B)($at)
/* B83980 8010C7E0 26217FFF */  addiu $at, $s1, 0x7fff
/* B83984 8010C7E4 A0226411 */  sb    $v0, 0x6411($at)
/* B83988 8010C7E8 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B8398C 8010C7EC 3C018015 */  lui   $at, %hi(D_8015394C)
/* B83990 8010C7F0 241800FF */  li    $t8, 255
/* B83994 8010C7F4 91EE0002 */  lbu   $t6, 2($t7)
/* B83998 8010C7F8 002E0821 */  addu  $at, $at, $t6
/* B8399C 8010C7FC A038394C */  sb    $t8, %lo(D_8015394C)($at)
/* B839A0 8010C800 85190000 */  lh    $t9, ($t0)
/* B839A4 8010C804 272F0001 */  addiu $t7, $t9, 1
/* B839A8 8010C808 A50F0000 */  sh    $t7, ($t0)
/* B839AC 8010C80C 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010C810:
/* B839B0 8010C810 90F80001 */  lbu   $t8, 1($a3)
.L8010C814:
/* B839B4 8010C814 26217FFF */  addiu $at, $s1, 0x7fff
/* B839B8 8010C818 A43863ED */  sh    $t8, 0x63ed($at)
/* B839BC 8010C81C 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B839C0 8010C820 91C40001 */  lbu   $a0, 1($t6)
/* B839C4 8010C824 2881000D */  slti  $at, $a0, 0xd
/* B839C8 8010C828 102000C7 */  beqz  $at, .L8010CB48
/* B839CC 8010C82C 00803025 */   move  $a2, $a0
/* B839D0 8010C830 2405000C */  li    $a1, 12
/* B839D4 8010C834 10A4000C */  beq   $a1, $a0, .L8010C868
/* B839D8 8010C838 0004C840 */   sll   $t9, $a0, 1
/* B839DC 8010C83C 3C0F8015 */  lui   $t7, %hi(D_8015396C)
/* B839E0 8010C840 01F97821 */  addu  $t7, $t7, $t9
/* B839E4 8010C844 85EF396C */  lh    $t7, %lo(D_8015396C)($t7)
/* B839E8 8010C848 3C0E8012 */  lui   $t6, %hi(gBitFlags+0x18)
/* B839EC 8010C84C 3C198016 */  lui   $t9, %hi(gSaveContext+0xa4) # $t9, 0x8016
/* B839F0 8010C850 000FC080 */  sll   $t8, $t7, 2
/* B839F4 8010C854 01D87021 */  addu  $t6, $t6, $t8
/* B839F8 8010C858 8DCE7138 */  lw    $t6, %lo(gBitFlags+0x18)($t6)
/* B839FC 8010C85C 8F39E704 */  lw    $t9, %lo(gSaveContext+0xa4)($t9)
/* B83A00 8010C860 01D97824 */  and   $t7, $t6, $t9
/* B83A04 8010C864 11E000A7 */  beqz  $t7, .L8010CB04
.L8010C868:
/* B83A08 8010C868 26217FFF */   addiu $at, $s1, 0x7fff
/* B83A0C 8010C86C A42463ED */  sh    $a0, 0x63ed($at)
/* B83A10 8010C870 A42463F3 */  sh    $a0, 0x63f3($at)
/* B83A14 8010C874 3C018015 */  lui   $at, %hi(D_8014B310) # $at, 0x8015
/* B83A18 8010C878 A424B310 */  sh    $a0, %lo(D_8014B310)($at)
/* B83A1C 8010C87C 26217FFF */  addiu $at, $s1, 0x7fff
/* B83A20 8010C880 2418000D */  li    $t8, 13
/* B83A24 8010C884 240E0014 */  li    $t6, 20
/* B83A28 8010C888 A0386305 */  sb    $t8, 0x6305($at)
/* B83A2C 8010C88C A02E63E8 */  sb    $t6, 0x63e8($at)
/* B83A30 8010C890 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B83A34 8010C894 24010030 */  li    $at, 48
/* B83A38 8010C898 54410037 */  bnel  $v0, $at, .L8010C978
/* B83A3C 8010C89C 24010028 */   li    $at, 40
/* B83A40 8010C8A0 8E1962B8 */  lw    $t9, 0x62b8($s0)
/* B83A44 8010C8A4 93260001 */  lbu   $a2, 1($t9)
/* B83A48 8010C8A8 28C10006 */  slti  $at, $a2, 6
/* B83A4C 8010C8AC 14200003 */  bnez  $at, .L8010C8BC
/* B83A50 8010C8B0 00000000 */   nop   
/* B83A54 8010C8B4 14A60012 */  bne   $a1, $a2, .L8010C900
/* B83A58 8010C8B8 00000000 */   nop   
.L8010C8BC:
/* B83A5C 8010C8BC 0C03B616 */  jal   func_800ED858
/* B83A60 8010C8C0 00002025 */   move  $a0, $zero
/* B83A64 8010C8C4 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83A68 8010C8C8 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B83A6C 8010C8CC 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83A70 8010C8D0 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B83A74 8010C8D4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83A78 8010C8D8 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83A7C 8010C8DC AFAF0014 */  sw    $t7, 0x14($sp)
/* B83A80 8010C8E0 AFA70010 */  sw    $a3, 0x10($sp)
/* B83A84 8010C8E4 24044827 */  li    $a0, 18471
/* B83A88 8010C8E8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83A8C 8010C8EC 24060004 */   li    $a2, 4
/* B83A90 8010C8F0 24180009 */  li    $t8, 9
/* B83A94 8010C8F4 26217FFF */  addiu $at, $s1, 0x7fff
/* B83A98 8010C8F8 1000007E */  b     .L8010CAF4
/* B83A9C 8010C8FC A0386305 */   sb    $t8, 0x6305($at)
.L8010C900:
/* B83AA0 8010C900 3C048015 */  lui   $a0, %hi(D_801544D8) # $a0, 0x8015
/* B83AA4 8010C904 248444D8 */  addiu $a0, %lo(D_801544D8) # addiu $a0, $a0, 0x44d8
/* B83AA8 8010C908 0C00084C */  jal   osSyncPrintf
/* B83AAC 8010C90C 960563EC */   lhu   $a1, 0x63ec($s0)
/* B83AB0 8010C910 02402025 */  move  $a0, $s2
/* B83AB4 8010C914 0C042DC8 */  jal   func_8010B720
/* B83AB8 8010C918 2405086F */   li    $a1, 2159
/* B83ABC 8010C91C 26217FFF */  addiu $at, $s1, 0x7fff
/* B83AC0 8010C920 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83AC4 8010C924 240E0011 */  li    $t6, 17
/* B83AC8 8010C928 24190003 */  li    $t9, 3
/* B83ACC 8010C92C 240F000A */  li    $t7, 10
/* B83AD0 8010C930 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B83AD4 8010C934 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83AD8 8010C938 A02E6305 */  sb    $t6, 0x6305($at)
/* B83ADC 8010C93C A03962FE */  sb    $t9, 0x62fe($at)
/* B83AE0 8010C940 A02F63E8 */  sb    $t7, 0x63e8($at)
/* B83AE4 8010C944 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B83AE8 8010C948 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83AEC 8010C94C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83AF0 8010C950 AFB80014 */  sw    $t8, 0x14($sp)
/* B83AF4 8010C954 AFA70010 */  sw    $a3, 0x10($sp)
/* B83AF8 8010C958 24044807 */  li    $a0, 18439
/* B83AFC 8010C95C 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83B00 8010C960 24060004 */   li    $a2, 4
/* B83B04 8010C964 0C020978 */  jal   Interface_ChangeAlpha
/* B83B08 8010C968 24040001 */   li    $a0, 1
/* B83B0C 8010C96C 10000061 */  b     .L8010CAF4
/* B83B10 8010C970 00000000 */   nop   
/* B83B14 8010C974 24010028 */  li    $at, 40
.L8010C978:
/* B83B18 8010C978 54410037 */  bnel  $v0, $at, .L8010CA58
/* B83B1C 8010C97C 24010001 */   li    $at, 1
/* B83B20 8010C980 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B83B24 8010C984 91D90001 */  lbu   $t9, 1($t6)
/* B83B28 8010C988 2B21000C */  slti  $at, $t9, 0xc
/* B83B2C 8010C98C 10200014 */  beqz  $at, .L8010C9E0
/* B83B30 8010C990 00000000 */   nop   
/* B83B34 8010C994 0C03B616 */  jal   func_800ED858
/* B83B38 8010C998 00002025 */   move  $a0, $zero
/* B83B3C 8010C99C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83B40 8010C9A0 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B83B44 8010C9A4 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83B48 8010C9A8 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B83B4C 8010C9AC 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83B50 8010C9B0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83B54 8010C9B4 AFAF0014 */  sw    $t7, 0x14($sp)
/* B83B58 8010C9B8 AFA70010 */  sw    $a3, 0x10($sp)
/* B83B5C 8010C9BC 24044827 */  li    $a0, 18471
/* B83B60 8010C9C0 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83B64 8010C9C4 24060004 */   li    $a2, 4
/* B83B68 8010C9C8 2418000A */  li    $t8, 10
/* B83B6C 8010C9CC 26217FFF */  addiu $at, $s1, 0x7fff
/* B83B70 8010C9D0 240E000E */  li    $t6, 14
/* B83B74 8010C9D4 A03863E8 */  sb    $t8, 0x63e8($at)
/* B83B78 8010C9D8 10000046 */  b     .L8010CAF4
/* B83B7C 8010C9DC A02E6305 */   sb    $t6, 0x6305($at)
.L8010C9E0:
/* B83B80 8010C9E0 3C048015 */  lui   $a0, %hi(D_801544F8) # $a0, 0x8015
/* B83B84 8010C9E4 248444F8 */  addiu $a0, %lo(D_801544F8) # addiu $a0, $a0, 0x44f8
/* B83B88 8010C9E8 0C00084C */  jal   osSyncPrintf
/* B83B8C 8010C9EC 960563EC */   lhu   $a1, 0x63ec($s0)
/* B83B90 8010C9F0 02402025 */  move  $a0, $s2
/* B83B94 8010C9F4 0C042DC8 */  jal   func_8010B720
/* B83B98 8010C9F8 2405086F */   li    $a1, 2159
/* B83B9C 8010C9FC 26217FFF */  addiu $at, $s1, 0x7fff
/* B83BA0 8010CA00 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83BA4 8010CA04 24190011 */  li    $t9, 17
/* B83BA8 8010CA08 240F0003 */  li    $t7, 3
/* B83BAC 8010CA0C 2418000A */  li    $t8, 10
/* B83BB0 8010CA10 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B83BB4 8010CA14 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83BB8 8010CA18 A0396305 */  sb    $t9, 0x6305($at)
/* B83BBC 8010CA1C A02F62FE */  sb    $t7, 0x62fe($at)
/* B83BC0 8010CA20 A03863E8 */  sb    $t8, 0x63e8($at)
/* B83BC4 8010CA24 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B83BC8 8010CA28 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83BCC 8010CA2C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83BD0 8010CA30 AFAE0014 */  sw    $t6, 0x14($sp)
/* B83BD4 8010CA34 AFA70010 */  sw    $a3, 0x10($sp)
/* B83BD8 8010CA38 24044807 */  li    $a0, 18439
/* B83BDC 8010CA3C 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83BE0 8010CA40 24060004 */   li    $a2, 4
/* B83BE4 8010CA44 0C020978 */  jal   Interface_ChangeAlpha
/* B83BE8 8010CA48 24040001 */   li    $a0, 1
/* B83BEC 8010CA4C 10000029 */  b     .L8010CAF4
/* B83BF0 8010CA50 00000000 */   nop   
/* B83BF4 8010CA54 24010001 */  li    $at, 1
.L8010CA58:
/* B83BF8 8010CA58 1441001B */  bne   $v0, $at, .L8010CAC8
/* B83BFC 8010CA5C 3C048015 */   lui   $a0, %hi(D_80154518) # $a0, 0x8015
/* B83C00 8010CA60 24844518 */  addiu $a0, %lo(D_80154518) # addiu $a0, $a0, 0x4518
/* B83C04 8010CA64 0C00084C */  jal   osSyncPrintf
/* B83C08 8010CA68 960563EC */   lhu   $a1, 0x63ec($s0)
/* B83C0C 8010CA6C 02402025 */  move  $a0, $s2
/* B83C10 8010CA70 0C042DC8 */  jal   func_8010B720
/* B83C14 8010CA74 2405086F */   li    $a1, 2159
/* B83C18 8010CA78 26217FFF */  addiu $at, $s1, 0x7fff
/* B83C1C 8010CA7C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83C20 8010CA80 24190011 */  li    $t9, 17
/* B83C24 8010CA84 240F0003 */  li    $t7, 3
/* B83C28 8010CA88 2418000A */  li    $t8, 10
/* B83C2C 8010CA8C 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B83C30 8010CA90 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83C34 8010CA94 A0396305 */  sb    $t9, 0x6305($at)
/* B83C38 8010CA98 A02F62FE */  sb    $t7, 0x62fe($at)
/* B83C3C 8010CA9C A03863E8 */  sb    $t8, 0x63e8($at)
/* B83C40 8010CAA0 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B83C44 8010CAA4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83C48 8010CAA8 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83C4C 8010CAAC AFAE0014 */  sw    $t6, 0x14($sp)
/* B83C50 8010CAB0 AFA70010 */  sw    $a3, 0x10($sp)
/* B83C54 8010CAB4 24044807 */  li    $a0, 18439
/* B83C58 8010CAB8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83C5C 8010CABC 24060004 */   li    $a2, 4
/* B83C60 8010CAC0 1000000C */  b     .L8010CAF4
/* B83C64 8010CAC4 00000000 */   nop   
.L8010CAC8:
/* B83C68 8010CAC8 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B83C6C 8010CACC 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B83C70 8010CAD0 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B83C74 8010CAD4 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B83C78 8010CAD8 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83C7C 8010CADC 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83C80 8010CAE0 AFB90014 */  sw    $t9, 0x14($sp)
/* B83C84 8010CAE4 AFA70010 */  sw    $a3, 0x10($sp)
/* B83C88 8010CAE8 24044807 */  li    $a0, 18439
/* B83C8C 8010CAEC 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83C90 8010CAF0 24060004 */   li    $a2, 4
.L8010CAF4:
/* B83C94 8010CAF4 0C020978 */  jal   Interface_ChangeAlpha
/* B83C98 8010CAF8 24040001 */   li    $a0, 1
/* B83C9C 8010CAFC 10000036 */  b     .L8010CBD8
/* B83CA0 8010CB00 960263F0 */   lhu   $v0, 0x63f0($s0)
.L8010CB04:
/* B83CA4 8010CB04 0C03B616 */  jal   func_800ED858
/* B83CA8 8010CB08 00002025 */   move  $a0, $zero
/* B83CAC 8010CB0C 3C0F8013 */  lui   $t7, %hi(D_801333E0)
/* B83CB0 8010CB10 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B83CB4 8010CB14 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B83CB8 8010CB18 25E733E0 */  addiu $a3, $t7, %lo(D_801333E0)
/* B83CBC 8010CB1C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83CC0 8010CB20 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83CC4 8010CB24 AFA70010 */  sw    $a3, 0x10($sp)
/* B83CC8 8010CB28 AFB80014 */  sw    $t8, 0x14($sp)
/* B83CCC 8010CB2C 24044827 */  li    $a0, 18471
/* B83CD0 8010CB30 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83CD4 8010CB34 24060004 */   li    $a2, 4
/* B83CD8 8010CB38 240E0009 */  li    $t6, 9
/* B83CDC 8010CB3C 26217FFF */  addiu $at, $s1, 0x7fff
/* B83CE0 8010CB40 10000024 */  b     .L8010CBD4
/* B83CE4 8010CB44 A02E6305 */   sb    $t6, 0x6305($at)
.L8010CB48:
/* B83CE8 8010CB48 240100FF */  li    $at, 255
/* B83CEC 8010CB4C 54C10015 */  bnel  $a2, $at, .L8010CBA4
/* B83CF0 8010CB50 96590020 */   lhu   $t9, 0x20($s2)
/* B83CF4 8010CB54 0C03B616 */  jal   func_800ED858
/* B83CF8 8010CB58 00002025 */   move  $a0, $zero
/* B83CFC 8010CB5C 3C198013 */  lui   $t9, %hi(D_801333E0)
/* B83D00 8010CB60 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B83D04 8010CB64 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B83D08 8010CB68 272733E0 */  addiu $a3, $t9, %lo(D_801333E0)
/* B83D0C 8010CB6C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B83D10 8010CB70 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B83D14 8010CB74 AFA70010 */  sw    $a3, 0x10($sp)
/* B83D18 8010CB78 AFAF0014 */  sw    $t7, 0x14($sp)
/* B83D1C 8010CB7C 24044827 */  li    $a0, 18471
/* B83D20 8010CB80 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B83D24 8010CB84 24060004 */   li    $a2, 4
/* B83D28 8010CB88 2418000A */  li    $t8, 10
/* B83D2C 8010CB8C 26217FFF */  addiu $at, $s1, 0x7fff
/* B83D30 8010CB90 240E000E */  li    $t6, 14
/* B83D34 8010CB94 A03863E8 */  sb    $t8, 0x63e8($at)
/* B83D38 8010CB98 1000000E */  b     .L8010CBD4
/* B83D3C 8010CB9C A02E6305 */   sb    $t6, 0x6305($at)
/* B83D40 8010CBA0 96590020 */  lhu   $t9, 0x20($s2)
.L8010CBA4:
/* B83D44 8010CBA4 2401BFFF */  li    $at, -16385
/* B83D48 8010CBA8 03217827 */  nor   $t7, $t9, $at
/* B83D4C 8010CBAC 55E0000A */  bnezl $t7, .L8010CBD8
/* B83D50 8010CBB0 960263F0 */   lhu   $v0, 0x63f0($s0)
/* B83D54 8010CBB4 0C03B616 */  jal   func_800ED858
/* B83D58 8010CBB8 00002025 */   move  $a0, $zero
/* B83D5C 8010CBBC 3C010001 */  lui   $at, 1
/* B83D60 8010CBC0 00320821 */  addu  $at, $at, $s2
/* B83D64 8010CBC4 24180004 */  li    $t8, 4
/* B83D68 8010CBC8 A43804C6 */  sh    $t8, 0x4c6($at)
/* B83D6C 8010CBCC 0C041B33 */  jal   func_80106CCC
/* B83D70 8010CBD0 02402025 */   move  $a0, $s2
.L8010CBD4:
/* B83D74 8010CBD4 960263F0 */  lhu   $v0, 0x63f0($s0)
.L8010CBD8:
/* B83D78 8010CBD8 24010001 */  li    $at, 1
/* B83D7C 8010CBDC 10410005 */  beq   $v0, $at, .L8010CBF4
/* B83D80 8010CBE0 24010030 */   li    $at, 48
/* B83D84 8010CBE4 10410003 */  beq   $v0, $at, .L8010CBF4
/* B83D88 8010CBE8 02402025 */   move  $a0, $s2
/* B83D8C 8010CBEC 0C0421AC */  jal   func_801086B0
/* B83D90 8010CBF0 27A50140 */   addiu $a1, $sp, 0x140
.L8010CBF4:
/* B83D94 8010CBF4 1000081E */  b     .L8010EC70
/* B83D98 8010CBF8 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010CBFC
/* B83D9C 8010CBFC 3C0E8015 */  lui   $t6, %hi(D_80153CDC) # $t6, 0x8015
/* B83DA0 8010CC00 85CE3CDC */  lh    $t6, %lo(D_80153CDC)($t6)
/* B83DA4 8010CC04 3C0F8015 */  lui   $t7, %hi(D_80153CA8) # $t7, 0x8015
/* B83DA8 8010CC08 25EF3CA8 */  addiu $t7, %lo(D_80153CA8) # addiu $t7, $t7, 0x3ca8
/* B83DAC 8010CC0C 000EC880 */  sll   $t9, $t6, 2
/* B83DB0 8010CC10 032EC823 */  subu  $t9, $t9, $t6
/* B83DB4 8010CC14 0019C840 */  sll   $t9, $t9, 1
/* B83DB8 8010CC18 032F2821 */  addu  $a1, $t9, $t7
/* B83DBC 8010CC1C 3C068017 */  lui   $a2, %hi(D_801759A8) # $a2, 0x8017
/* B83DC0 8010CC20 84C659A8 */  lh    $a2, %lo(D_801759A8)($a2)
/* B83DC4 8010CC24 84B80000 */  lh    $t8, ($a1)
/* B83DC8 8010CC28 AFB90088 */  sw    $t9, 0x88($sp)
/* B83DCC 8010CC2C 00D81823 */  subu  $v1, $a2, $t8
/* B83DD0 8010CC30 AFB80080 */  sw    $t8, 0x80($sp)
/* B83DD4 8010CC34 04600003 */  bltz  $v1, .L8010CC44
/* B83DD8 8010CC38 03007025 */   move  $t6, $t8
/* B83DDC 8010CC3C 10000002 */  b     .L8010CC48
/* B83DE0 8010CC40 00601025 */   move  $v0, $v1
.L8010CC44:
/* B83DE4 8010CC44 00031023 */  negu  $v0, $v1
.L8010CC48:
/* B83DE8 8010CC48 3C0A8015 */  lui   $t2, %hi(D_80153CD8) # $t2, 0x8015
/* B83DEC 8010CC4C 854A3CD8 */  lh    $t2, %lo(D_80153CD8)($t2)
/* B83DF0 8010CC50 3C078017 */  lui   $a3, %hi(D_801759AC) # $a3, 0x8017
/* B83DF4 8010CC54 84E759AC */  lh    $a3, %lo(D_801759AC)($a3)
/* B83DF8 8010CC58 004A001A */  div   $zero, $v0, $t2
/* B83DFC 8010CC5C 84B90002 */  lh    $t9, 2($a1)
/* B83E00 8010CC60 00004012 */  mflo  $t0
/* B83E04 8010CC64 00084400 */  sll   $t0, $t0, 0x10
/* B83E08 8010CC68 15400002 */  bnez  $t2, .L8010CC74
/* B83E0C 8010CC6C 00000000 */   nop   
/* B83E10 8010CC70 0007000D */  break 7
.L8010CC74:
/* B83E14 8010CC74 2401FFFF */  li    $at, -1
/* B83E18 8010CC78 15410004 */  bne   $t2, $at, .L8010CC8C
/* B83E1C 8010CC7C 3C018000 */   lui   $at, 0x8000
/* B83E20 8010CC80 14410002 */  bne   $v0, $at, .L8010CC8C
/* B83E24 8010CC84 00000000 */   nop   
/* B83E28 8010CC88 0006000D */  break 6
.L8010CC8C:
/* B83E2C 8010CC8C 00F91823 */  subu  $v1, $a3, $t9
/* B83E30 8010CC90 00084403 */  sra   $t0, $t0, 0x10
/* B83E34 8010CC94 AFB90078 */  sw    $t9, 0x78($sp)
/* B83E38 8010CC98 04600003 */  bltz  $v1, .L8010CCA8
/* B83E3C 8010CC9C 03207825 */   move  $t7, $t9
/* B83E40 8010CCA0 10000002 */  b     .L8010CCAC
/* B83E44 8010CCA4 00601025 */   move  $v0, $v1
.L8010CCA8:
/* B83E48 8010CCA8 00031023 */  negu  $v0, $v1
.L8010CCAC:
/* B83E4C 8010CCAC 004A001A */  div   $zero, $v0, $t2
/* B83E50 8010CCB0 3C098017 */  lui   $t1, %hi(D_801759AA) # $t1, 0x8017
/* B83E54 8010CCB4 852959AA */  lh    $t1, %lo(D_801759AA)($t1)
/* B83E58 8010CCB8 84AB0004 */  lh    $t3, 4($a1)
/* B83E5C 8010CCBC 00002012 */  mflo  $a0
/* B83E60 8010CCC0 00042400 */  sll   $a0, $a0, 0x10
/* B83E64 8010CCC4 15400002 */  bnez  $t2, .L8010CCD0
/* B83E68 8010CCC8 00000000 */   nop   
/* B83E6C 8010CCCC 0007000D */  break 7
.L8010CCD0:
/* B83E70 8010CCD0 2401FFFF */  li    $at, -1
/* B83E74 8010CCD4 15410004 */  bne   $t2, $at, .L8010CCE8
/* B83E78 8010CCD8 3C018000 */   lui   $at, 0x8000
/* B83E7C 8010CCDC 14410002 */  bne   $v0, $at, .L8010CCE8
/* B83E80 8010CCE0 00000000 */   nop   
/* B83E84 8010CCE4 0006000D */  break 6
.L8010CCE8:
/* B83E88 8010CCE8 012B1823 */  subu  $v1, $t1, $t3
/* B83E8C 8010CCEC 04600003 */  bltz  $v1, .L8010CCFC
/* B83E90 8010CCF0 00042403 */   sra   $a0, $a0, 0x10
/* B83E94 8010CCF4 10000002 */  b     .L8010CD00
/* B83E98 8010CCF8 00601025 */   move  $v0, $v1
.L8010CCFC:
/* B83E9C 8010CCFC 00031023 */  negu  $v0, $v1
.L8010CD00:
/* B83EA0 8010CD00 8FB80080 */  lw    $t8, 0x80($sp)
/* B83EA4 8010CD04 00D8082A */  slt   $at, $a2, $t8
/* B83EA8 8010CD08 54200006 */  bnezl $at, .L8010CD24
/* B83EAC 8010CD0C 00C8C821 */   addu  $t9, $a2, $t0
/* B83EB0 8010CD10 00C87023 */  subu  $t6, $a2, $t0
/* B83EB4 8010CD14 3C018017 */  lui   $at, %hi(D_801759A8) # $at, 0x8017
/* B83EB8 8010CD18 10000004 */  b     .L8010CD2C
/* B83EBC 8010CD1C A42E59A8 */   sh    $t6, %lo(D_801759A8)($at)
/* B83EC0 8010CD20 00C8C821 */  addu  $t9, $a2, $t0
.L8010CD24:
/* B83EC4 8010CD24 3C018017 */  lui   $at, %hi(D_801759A8) # $at, 0x8017
/* B83EC8 8010CD28 A43959A8 */  sh    $t9, %lo(D_801759A8)($at)
.L8010CD2C:
/* B83ECC 8010CD2C 8FAF0078 */  lw    $t7, 0x78($sp)
/* B83ED0 8010CD30 00EF082A */  slt   $at, $a3, $t7
/* B83ED4 8010CD34 54200006 */  bnezl $at, .L8010CD50
/* B83ED8 8010CD38 00E47021 */   addu  $t6, $a3, $a0
/* B83EDC 8010CD3C 00E4C023 */  subu  $t8, $a3, $a0
/* B83EE0 8010CD40 3C018017 */  lui   $at, %hi(D_801759AC) # $at, 0x8017
/* B83EE4 8010CD44 10000004 */  b     .L8010CD58
/* B83EE8 8010CD48 A43859AC */   sh    $t8, %lo(D_801759AC)($at)
/* B83EEC 8010CD4C 00E47021 */  addu  $t6, $a3, $a0
.L8010CD50:
/* B83EF0 8010CD50 3C018017 */  lui   $at, %hi(D_801759AC) # $at, 0x8017
/* B83EF4 8010CD54 A42E59AC */  sh    $t6, %lo(D_801759AC)($at)
.L8010CD58:
/* B83EF8 8010CD58 012B082A */  slt   $at, $t1, $t3
/* B83EFC 8010CD5C 14200013 */  bnez  $at, .L8010CDAC
/* B83F00 8010CD60 00000000 */   nop   
/* B83F04 8010CD64 004A001A */  div   $zero, $v0, $t2
/* B83F08 8010CD68 15400002 */  bnez  $t2, .L8010CD74
/* B83F0C 8010CD6C 00000000 */   nop   
/* B83F10 8010CD70 0007000D */  break 7
.L8010CD74:
/* B83F14 8010CD74 2401FFFF */  li    $at, -1
/* B83F18 8010CD78 15410004 */  bne   $t2, $at, .L8010CD8C
/* B83F1C 8010CD7C 3C018000 */   lui   $at, 0x8000
/* B83F20 8010CD80 14410002 */  bne   $v0, $at, .L8010CD8C
/* B83F24 8010CD84 00000000 */   nop   
/* B83F28 8010CD88 0006000D */  break 6
.L8010CD8C:
/* B83F2C 8010CD8C 0000C812 */  mflo  $t9
/* B83F30 8010CD90 00197C00 */  sll   $t7, $t9, 0x10
/* B83F34 8010CD94 000FC403 */  sra   $t8, $t7, 0x10
/* B83F38 8010CD98 01387023 */  subu  $t6, $t1, $t8
/* B83F3C 8010CD9C 3C018017 */  lui   $at, %hi(D_801759AA) # $at, 0x8017
/* B83F40 8010CDA0 A42E59AA */  sh    $t6, %lo(D_801759AA)($at)
/* B83F44 8010CDA4 10000012 */  b     .L8010CDF0
/* B83F48 8010CDA8 AFAB0070 */   sw    $t3, 0x70($sp)
.L8010CDAC:
/* B83F4C 8010CDAC 004A001A */  div   $zero, $v0, $t2
/* B83F50 8010CDB0 15400002 */  bnez  $t2, .L8010CDBC
/* B83F54 8010CDB4 00000000 */   nop   
/* B83F58 8010CDB8 0007000D */  break 7
.L8010CDBC:
/* B83F5C 8010CDBC 2401FFFF */  li    $at, -1
/* B83F60 8010CDC0 15410004 */  bne   $t2, $at, .L8010CDD4
/* B83F64 8010CDC4 3C018000 */   lui   $at, 0x8000
/* B83F68 8010CDC8 14410002 */  bne   $v0, $at, .L8010CDD4
/* B83F6C 8010CDCC 00000000 */   nop   
/* B83F70 8010CDD0 0006000D */  break 6
.L8010CDD4:
/* B83F74 8010CDD4 0000C812 */  mflo  $t9
/* B83F78 8010CDD8 00197C00 */  sll   $t7, $t9, 0x10
/* B83F7C 8010CDDC 000FC403 */  sra   $t8, $t7, 0x10
/* B83F80 8010CDE0 01387021 */  addu  $t6, $t1, $t8
/* B83F84 8010CDE4 3C018017 */  lui   $at, %hi(D_801759AA) # $at, 0x8017
/* B83F88 8010CDE8 A42E59AA */  sh    $t6, %lo(D_801759AA)($at)
/* B83F8C 8010CDEC AFAB0070 */  sw    $t3, 0x70($sp)
.L8010CDF0:
/* B83F90 8010CDF0 8FB90088 */  lw    $t9, 0x88($sp)
/* B83F94 8010CDF4 3C0F8015 */  lui   $t7, %hi(D_80153CB4) # $t7, 0x8015
/* B83F98 8010CDF8 25EF3CB4 */  addiu $t7, %lo(D_80153CB4) # addiu $t7, $t7, 0x3cb4
/* B83F9C 8010CDFC 3C068017 */  lui   $a2, %hi(D_801759AE) # $a2, 0x8017
/* B83FA0 8010CE00 032F2821 */  addu  $a1, $t9, $t7
/* B83FA4 8010CE04 84B80000 */  lh    $t8, ($a1)
/* B83FA8 8010CE08 84C659AE */  lh    $a2, %lo(D_801759AE)($a2)
/* B83FAC 8010CE0C AFB8007C */  sw    $t8, 0x7c($sp)
/* B83FB0 8010CE10 00D81823 */  subu  $v1, $a2, $t8
/* B83FB4 8010CE14 04600003 */  bltz  $v1, .L8010CE24
/* B83FB8 8010CE18 03007025 */   move  $t6, $t8
/* B83FBC 8010CE1C 10000002 */  b     .L8010CE28
/* B83FC0 8010CE20 00601025 */   move  $v0, $v1
.L8010CE24:
/* B83FC4 8010CE24 00031023 */  negu  $v0, $v1
.L8010CE28:
/* B83FC8 8010CE28 004A001A */  div   $zero, $v0, $t2
/* B83FCC 8010CE2C 3C078017 */  lui   $a3, %hi(D_801759B2) # $a3, 0x8017
/* B83FD0 8010CE30 84E759B2 */  lh    $a3, %lo(D_801759B2)($a3)
/* B83FD4 8010CE34 84B90002 */  lh    $t9, 2($a1)
/* B83FD8 8010CE38 00004012 */  mflo  $t0
/* B83FDC 8010CE3C 00084400 */  sll   $t0, $t0, 0x10
/* B83FE0 8010CE40 15400002 */  bnez  $t2, .L8010CE4C
/* B83FE4 8010CE44 00000000 */   nop   
/* B83FE8 8010CE48 0007000D */  break 7
.L8010CE4C:
/* B83FEC 8010CE4C 2401FFFF */  li    $at, -1
/* B83FF0 8010CE50 15410004 */  bne   $t2, $at, .L8010CE64
/* B83FF4 8010CE54 3C018000 */   lui   $at, 0x8000
/* B83FF8 8010CE58 14410002 */  bne   $v0, $at, .L8010CE64
/* B83FFC 8010CE5C 00000000 */   nop   
/* B84000 8010CE60 0006000D */  break 6
.L8010CE64:
/* B84004 8010CE64 00F91823 */  subu  $v1, $a3, $t9
/* B84008 8010CE68 00084403 */  sra   $t0, $t0, 0x10
/* B8400C 8010CE6C AFB9006C */  sw    $t9, 0x6c($sp)
/* B84010 8010CE70 04600003 */  bltz  $v1, .L8010CE80
/* B84014 8010CE74 03207825 */   move  $t7, $t9
/* B84018 8010CE78 10000002 */  b     .L8010CE84
/* B8401C 8010CE7C 00601025 */   move  $v0, $v1
.L8010CE80:
/* B84020 8010CE80 00031023 */  negu  $v0, $v1
.L8010CE84:
/* B84024 8010CE84 004A001A */  div   $zero, $v0, $t2
/* B84028 8010CE88 3C098017 */  lui   $t1, %hi(D_801759B0) # $t1, 0x8017
/* B8402C 8010CE8C 852959B0 */  lh    $t1, %lo(D_801759B0)($t1)
/* B84030 8010CE90 84AB0004 */  lh    $t3, 4($a1)
/* B84034 8010CE94 00002012 */  mflo  $a0
/* B84038 8010CE98 00042400 */  sll   $a0, $a0, 0x10
/* B8403C 8010CE9C 15400002 */  bnez  $t2, .L8010CEA8
/* B84040 8010CEA0 00000000 */   nop   
/* B84044 8010CEA4 0007000D */  break 7
.L8010CEA8:
/* B84048 8010CEA8 2401FFFF */  li    $at, -1
/* B8404C 8010CEAC 15410004 */  bne   $t2, $at, .L8010CEC0
/* B84050 8010CEB0 3C018000 */   lui   $at, 0x8000
/* B84054 8010CEB4 14410002 */  bne   $v0, $at, .L8010CEC0
/* B84058 8010CEB8 00000000 */   nop   
/* B8405C 8010CEBC 0006000D */  break 6
.L8010CEC0:
/* B84060 8010CEC0 012B1823 */  subu  $v1, $t1, $t3
/* B84064 8010CEC4 00042403 */  sra   $a0, $a0, 0x10
/* B84068 8010CEC8 04600003 */  bltz  $v1, .L8010CED8
/* B8406C 8010CECC AFAB0064 */   sw    $t3, 0x64($sp)
/* B84070 8010CED0 10000002 */  b     .L8010CEDC
/* B84074 8010CED4 00601025 */   move  $v0, $v1
.L8010CED8:
/* B84078 8010CED8 00031023 */  negu  $v0, $v1
.L8010CEDC:
/* B8407C 8010CEDC 3C0B8017 */  lui   $t3, %hi(D_801759BA) # $t3, 0x8017
/* B84080 8010CEE0 856B59BA */  lh    $t3, %lo(D_801759BA)($t3)
/* B84084 8010CEE4 8FB8007C */  lw    $t8, 0x7c($sp)
/* B84088 8010CEE8 0178082A */  slt   $at, $t3, $t8
/* B8408C 8010CEEC 54200006 */  bnezl $at, .L8010CF08
/* B84090 8010CEF0 00C8C821 */   addu  $t9, $a2, $t0
/* B84094 8010CEF4 00C87023 */  subu  $t6, $a2, $t0
/* B84098 8010CEF8 3C018017 */  lui   $at, %hi(D_801759AE) # $at, 0x8017
/* B8409C 8010CEFC 10000004 */  b     .L8010CF10
/* B840A0 8010CF00 A42E59AE */   sh    $t6, %lo(D_801759AE)($at)
/* B840A4 8010CF04 00C8C821 */  addu  $t9, $a2, $t0
.L8010CF08:
/* B840A8 8010CF08 3C018017 */  lui   $at, %hi(D_801759AE) # $at, 0x8017
/* B840AC 8010CF0C A43959AE */  sh    $t9, %lo(D_801759AE)($at)
.L8010CF10:
/* B840B0 8010CF10 3C0C8017 */  lui   $t4, %hi(D_801759BE) # $t4, 0x8017
/* B840B4 8010CF14 858C59BE */  lh    $t4, %lo(D_801759BE)($t4)
/* B840B8 8010CF18 8FAF006C */  lw    $t7, 0x6c($sp)
/* B840BC 8010CF1C 018F082A */  slt   $at, $t4, $t7
/* B840C0 8010CF20 54200006 */  bnezl $at, .L8010CF3C
/* B840C4 8010CF24 00E47021 */   addu  $t6, $a3, $a0
/* B840C8 8010CF28 00E4C023 */  subu  $t8, $a3, $a0
/* B840CC 8010CF2C 3C018017 */  lui   $at, %hi(D_801759B2) # $at, 0x8017
/* B840D0 8010CF30 10000004 */  b     .L8010CF44
/* B840D4 8010CF34 A43859B2 */   sh    $t8, %lo(D_801759B2)($at)
/* B840D8 8010CF38 00E47021 */  addu  $t6, $a3, $a0
.L8010CF3C:
/* B840DC 8010CF3C 3C018017 */  lui   $at, %hi(D_801759B2) # $at, 0x8017
/* B840E0 8010CF40 A42E59B2 */  sh    $t6, %lo(D_801759B2)($at)
.L8010CF44:
/* B840E4 8010CF44 3C0D8017 */  lui   $t5, %hi(D_801759BC) # $t5, 0x8017
/* B840E8 8010CF48 85AD59BC */  lh    $t5, %lo(D_801759BC)($t5)
/* B840EC 8010CF4C 8FB90064 */  lw    $t9, 0x64($sp)
/* B840F0 8010CF50 01B9082A */  slt   $at, $t5, $t9
/* B840F4 8010CF54 14200012 */  bnez  $at, .L8010CFA0
/* B840F8 8010CF58 00000000 */   nop   
/* B840FC 8010CF5C 004A001A */  div   $zero, $v0, $t2
/* B84100 8010CF60 15400002 */  bnez  $t2, .L8010CF6C
/* B84104 8010CF64 00000000 */   nop   
/* B84108 8010CF68 0007000D */  break 7
.L8010CF6C:
/* B8410C 8010CF6C 2401FFFF */  li    $at, -1
/* B84110 8010CF70 15410004 */  bne   $t2, $at, .L8010CF84
/* B84114 8010CF74 3C018000 */   lui   $at, 0x8000
/* B84118 8010CF78 14410002 */  bne   $v0, $at, .L8010CF84
/* B8411C 8010CF7C 00000000 */   nop   
/* B84120 8010CF80 0006000D */  break 6
.L8010CF84:
/* B84124 8010CF84 00007812 */  mflo  $t7
/* B84128 8010CF88 000FC400 */  sll   $t8, $t7, 0x10
/* B8412C 8010CF8C 00187403 */  sra   $t6, $t8, 0x10
/* B84130 8010CF90 012EC823 */  subu  $t9, $t1, $t6
/* B84134 8010CF94 3C018017 */  lui   $at, %hi(D_801759B0) # $at, 0x8017
/* B84138 8010CF98 10000011 */  b     .L8010CFE0
/* B8413C 8010CF9C A43959B0 */   sh    $t9, %lo(D_801759B0)($at)
.L8010CFA0:
/* B84140 8010CFA0 004A001A */  div   $zero, $v0, $t2
/* B84144 8010CFA4 15400002 */  bnez  $t2, .L8010CFB0
/* B84148 8010CFA8 00000000 */   nop   
/* B8414C 8010CFAC 0007000D */  break 7
.L8010CFB0:
/* B84150 8010CFB0 2401FFFF */  li    $at, -1
/* B84154 8010CFB4 15410004 */  bne   $t2, $at, .L8010CFC8
/* B84158 8010CFB8 3C018000 */   lui   $at, 0x8000
/* B8415C 8010CFBC 14410002 */  bne   $v0, $at, .L8010CFC8
/* B84160 8010CFC0 00000000 */   nop   
/* B84164 8010CFC4 0006000D */  break 6
.L8010CFC8:
/* B84168 8010CFC8 00007812 */  mflo  $t7
/* B8416C 8010CFCC 000FC400 */  sll   $t8, $t7, 0x10
/* B84170 8010CFD0 00187403 */  sra   $t6, $t8, 0x10
/* B84174 8010CFD4 012EC821 */  addu  $t9, $t1, $t6
/* B84178 8010CFD8 3C018017 */  lui   $at, %hi(D_801759B0) # $at, 0x8017
/* B8417C 8010CFDC A43959B0 */  sh    $t9, %lo(D_801759B0)($at)
.L8010CFE0:
/* B84180 8010CFE0 8FAF0088 */  lw    $t7, 0x88($sp)
/* B84184 8010CFE4 3C188015 */  lui   $t8, %hi(D_80153CC0) # $t8, 0x8015
/* B84188 8010CFE8 27183CC0 */  addiu $t8, %lo(D_80153CC0) # addiu $t8, $t8, 0x3cc0
/* B8418C 8010CFEC 3C068017 */  lui   $a2, %hi(D_801759B4) # $a2, 0x8017
/* B84190 8010CFF0 01F82821 */  addu  $a1, $t7, $t8
/* B84194 8010CFF4 84A20000 */  lh    $v0, ($a1)
/* B84198 8010CFF8 84C659B4 */  lh    $a2, %lo(D_801759B4)($a2)
/* B8419C 8010CFFC AFA2005C */  sw    $v0, 0x5c($sp)
/* B841A0 8010D000 00C21823 */  subu  $v1, $a2, $v0
/* B841A4 8010D004 04620004 */  bltzl $v1, .L8010D018
/* B841A8 8010D008 00031023 */   negu  $v0, $v1
/* B841AC 8010D00C 10000002 */  b     .L8010D018
/* B841B0 8010D010 00601025 */   move  $v0, $v1
/* B841B4 8010D014 00031023 */  negu  $v0, $v1
.L8010D018:
/* B841B8 8010D018 004A001A */  div   $zero, $v0, $t2
/* B841BC 8010D01C 3C078017 */  lui   $a3, %hi(D_801759B8) # $a3, 0x8017
/* B841C0 8010D020 84E759B8 */  lh    $a3, %lo(D_801759B8)($a3)
/* B841C4 8010D024 84A40002 */  lh    $a0, 2($a1)
/* B841C8 8010D028 00004012 */  mflo  $t0
/* B841CC 8010D02C 00084400 */  sll   $t0, $t0, 0x10
/* B841D0 8010D030 15400002 */  bnez  $t2, .L8010D03C
/* B841D4 8010D034 00000000 */   nop   
/* B841D8 8010D038 0007000D */  break 7
.L8010D03C:
/* B841DC 8010D03C 2401FFFF */  li    $at, -1
/* B841E0 8010D040 15410004 */  bne   $t2, $at, .L8010D054
/* B841E4 8010D044 3C018000 */   lui   $at, 0x8000
/* B841E8 8010D048 14410002 */  bne   $v0, $at, .L8010D054
/* B841EC 8010D04C 00000000 */   nop   
/* B841F0 8010D050 0006000D */  break 6
.L8010D054:
/* B841F4 8010D054 00E41823 */  subu  $v1, $a3, $a0
/* B841F8 8010D058 00084403 */  sra   $t0, $t0, 0x10
/* B841FC 8010D05C 04600003 */  bltz  $v1, .L8010D06C
/* B84200 8010D060 AFA40054 */   sw    $a0, 0x54($sp)
/* B84204 8010D064 10000002 */  b     .L8010D070
/* B84208 8010D068 00601025 */   move  $v0, $v1
.L8010D06C:
/* B8420C 8010D06C 00031023 */  negu  $v0, $v1
.L8010D070:
/* B84210 8010D070 004A001A */  div   $zero, $v0, $t2
/* B84214 8010D074 3C098017 */  lui   $t1, %hi(D_801759B6) # $t1, 0x8017
/* B84218 8010D078 852959B6 */  lh    $t1, %lo(D_801759B6)($t1)
/* B8421C 8010D07C 84BF0004 */  lh    $ra, 4($a1)
/* B84220 8010D080 00002012 */  mflo  $a0
/* B84224 8010D084 00042400 */  sll   $a0, $a0, 0x10
/* B84228 8010D088 15400002 */  bnez  $t2, .L8010D094
/* B8422C 8010D08C 00000000 */   nop   
/* B84230 8010D090 0007000D */  break 7
.L8010D094:
/* B84234 8010D094 2401FFFF */  li    $at, -1
/* B84238 8010D098 15410004 */  bne   $t2, $at, .L8010D0AC
/* B8423C 8010D09C 3C018000 */   lui   $at, 0x8000
/* B84240 8010D0A0 14410002 */  bne   $v0, $at, .L8010D0AC
/* B84244 8010D0A4 00000000 */   nop   
/* B84248 8010D0A8 0006000D */  break 6
.L8010D0AC:
/* B8424C 8010D0AC 013F1823 */  subu  $v1, $t1, $ra
/* B84250 8010D0B0 04600003 */  bltz  $v1, .L8010D0C0
/* B84254 8010D0B4 00042403 */   sra   $a0, $a0, 0x10
/* B84258 8010D0B8 10000002 */  b     .L8010D0C4
/* B8425C 8010D0BC 00601025 */   move  $v0, $v1
.L8010D0C0:
/* B84260 8010D0C0 00031023 */  negu  $v0, $v1
.L8010D0C4:
/* B84264 8010D0C4 8FAE005C */  lw    $t6, 0x5c($sp)
/* B84268 8010D0C8 00CE082A */  slt   $at, $a2, $t6
/* B8426C 8010D0CC 54200006 */  bnezl $at, .L8010D0E8
/* B84270 8010D0D0 00C87821 */   addu  $t7, $a2, $t0
/* B84274 8010D0D4 00C8C823 */  subu  $t9, $a2, $t0
/* B84278 8010D0D8 3C018017 */  lui   $at, %hi(D_801759B4) # $at, 0x8017
/* B8427C 8010D0DC 10000004 */  b     .L8010D0F0
/* B84280 8010D0E0 A43959B4 */   sh    $t9, %lo(D_801759B4)($at)
/* B84284 8010D0E4 00C87821 */  addu  $t7, $a2, $t0
.L8010D0E8:
/* B84288 8010D0E8 3C018017 */  lui   $at, %hi(D_801759B4) # $at, 0x8017
/* B8428C 8010D0EC A42F59B4 */  sh    $t7, %lo(D_801759B4)($at)
.L8010D0F0:
/* B84290 8010D0F0 8FB80054 */  lw    $t8, 0x54($sp)
/* B84294 8010D0F4 00F8082A */  slt   $at, $a3, $t8
/* B84298 8010D0F8 54200006 */  bnezl $at, .L8010D114
/* B8429C 8010D0FC 00E4C821 */   addu  $t9, $a3, $a0
/* B842A0 8010D100 00E47023 */  subu  $t6, $a3, $a0
/* B842A4 8010D104 3C018017 */  lui   $at, %hi(D_801759B8) # $at, 0x8017
/* B842A8 8010D108 10000004 */  b     .L8010D11C
/* B842AC 8010D10C A42E59B8 */   sh    $t6, %lo(D_801759B8)($at)
/* B842B0 8010D110 00E4C821 */  addu  $t9, $a3, $a0
.L8010D114:
/* B842B4 8010D114 3C018017 */  lui   $at, %hi(D_801759B8) # $at, 0x8017
/* B842B8 8010D118 A43959B8 */  sh    $t9, %lo(D_801759B8)($at)
.L8010D11C:
/* B842BC 8010D11C 013F082A */  slt   $at, $t1, $ra
/* B842C0 8010D120 14200012 */  bnez  $at, .L8010D16C
/* B842C4 8010D124 00000000 */   nop   
/* B842C8 8010D128 004A001A */  div   $zero, $v0, $t2
/* B842CC 8010D12C 15400002 */  bnez  $t2, .L8010D138
/* B842D0 8010D130 00000000 */   nop   
/* B842D4 8010D134 0007000D */  break 7
.L8010D138:
/* B842D8 8010D138 2401FFFF */  li    $at, -1
/* B842DC 8010D13C 15410004 */  bne   $t2, $at, .L8010D150
/* B842E0 8010D140 3C018000 */   lui   $at, 0x8000
/* B842E4 8010D144 14410002 */  bne   $v0, $at, .L8010D150
/* B842E8 8010D148 00000000 */   nop   
/* B842EC 8010D14C 0006000D */  break 6
.L8010D150:
/* B842F0 8010D150 00007812 */  mflo  $t7
/* B842F4 8010D154 000FC400 */  sll   $t8, $t7, 0x10
/* B842F8 8010D158 00187403 */  sra   $t6, $t8, 0x10
/* B842FC 8010D15C 012EC823 */  subu  $t9, $t1, $t6
/* B84300 8010D160 3C018017 */  lui   $at, %hi(D_801759B6) # $at, 0x8017
/* B84304 8010D164 10000011 */  b     .L8010D1AC
/* B84308 8010D168 A43959B6 */   sh    $t9, %lo(D_801759B6)($at)
.L8010D16C:
/* B8430C 8010D16C 004A001A */  div   $zero, $v0, $t2
/* B84310 8010D170 15400002 */  bnez  $t2, .L8010D17C
/* B84314 8010D174 00000000 */   nop   
/* B84318 8010D178 0007000D */  break 7
.L8010D17C:
/* B8431C 8010D17C 2401FFFF */  li    $at, -1
/* B84320 8010D180 15410004 */  bne   $t2, $at, .L8010D194
/* B84324 8010D184 3C018000 */   lui   $at, 0x8000
/* B84328 8010D188 14410002 */  bne   $v0, $at, .L8010D194
/* B8432C 8010D18C 00000000 */   nop   
/* B84330 8010D190 0006000D */  break 6
.L8010D194:
/* B84334 8010D194 00007812 */  mflo  $t7
/* B84338 8010D198 000FC400 */  sll   $t8, $t7, 0x10
/* B8433C 8010D19C 00187403 */  sra   $t6, $t8, 0x10
/* B84340 8010D1A0 012EC821 */  addu  $t9, $t1, $t6
/* B84344 8010D1A4 3C018017 */  lui   $at, %hi(D_801759B6) # $at, 0x8017
/* B84348 8010D1A8 A43959B6 */  sh    $t9, %lo(D_801759B6)($at)
.L8010D1AC:
/* B8434C 8010D1AC 8FAF0088 */  lw    $t7, 0x88($sp)
/* B84350 8010D1B0 3C188015 */  lui   $t8, %hi(D_80153CCC) # $t8, 0x8015
/* B84354 8010D1B4 27183CCC */  addiu $t8, %lo(D_80153CCC) # addiu $t8, $t8, 0x3ccc
/* B84358 8010D1B8 01F82821 */  addu  $a1, $t7, $t8
/* B8435C 8010D1BC 84A90000 */  lh    $t1, ($a1)
/* B84360 8010D1C0 01691823 */  subu  $v1, $t3, $t1
/* B84364 8010D1C4 04620004 */  bltzl $v1, .L8010D1D8
/* B84368 8010D1C8 00031023 */   negu  $v0, $v1
/* B8436C 8010D1CC 10000002 */  b     .L8010D1D8
/* B84370 8010D1D0 00601025 */   move  $v0, $v1
/* B84374 8010D1D4 00031023 */  negu  $v0, $v1
.L8010D1D8:
/* B84378 8010D1D8 004A001A */  div   $zero, $v0, $t2
/* B8437C 8010D1DC 84A60002 */  lh    $a2, 2($a1)
/* B84380 8010D1E0 00004012 */  mflo  $t0
/* B84384 8010D1E4 00084400 */  sll   $t0, $t0, 0x10
/* B84388 8010D1E8 15400002 */  bnez  $t2, .L8010D1F4
/* B8438C 8010D1EC 00000000 */   nop   
/* B84390 8010D1F0 0007000D */  break 7
.L8010D1F4:
/* B84394 8010D1F4 2401FFFF */  li    $at, -1
/* B84398 8010D1F8 15410004 */  bne   $t2, $at, .L8010D20C
/* B8439C 8010D1FC 3C018000 */   lui   $at, 0x8000
/* B843A0 8010D200 14410002 */  bne   $v0, $at, .L8010D20C
/* B843A4 8010D204 00000000 */   nop   
/* B843A8 8010D208 0006000D */  break 6
.L8010D20C:
/* B843AC 8010D20C 01861823 */  subu  $v1, $t4, $a2
/* B843B0 8010D210 04600003 */  bltz  $v1, .L8010D220
/* B843B4 8010D214 00084403 */   sra   $t0, $t0, 0x10
/* B843B8 8010D218 10000002 */  b     .L8010D224
/* B843BC 8010D21C 00601025 */   move  $v0, $v1
.L8010D220:
/* B843C0 8010D220 00031023 */  negu  $v0, $v1
.L8010D224:
/* B843C4 8010D224 004A001A */  div   $zero, $v0, $t2
/* B843C8 8010D228 84A70004 */  lh    $a3, 4($a1)
/* B843CC 8010D22C 00002012 */  mflo  $a0
/* B843D0 8010D230 00042400 */  sll   $a0, $a0, 0x10
/* B843D4 8010D234 15400002 */  bnez  $t2, .L8010D240
/* B843D8 8010D238 00000000 */   nop   
/* B843DC 8010D23C 0007000D */  break 7
.L8010D240:
/* B843E0 8010D240 2401FFFF */  li    $at, -1
/* B843E4 8010D244 15410004 */  bne   $t2, $at, .L8010D258
/* B843E8 8010D248 3C018000 */   lui   $at, 0x8000
/* B843EC 8010D24C 14410002 */  bne   $v0, $at, .L8010D258
/* B843F0 8010D250 00000000 */   nop   
/* B843F4 8010D254 0006000D */  break 6
.L8010D258:
/* B843F8 8010D258 01A71823 */  subu  $v1, $t5, $a3
/* B843FC 8010D25C 04600003 */  bltz  $v1, .L8010D26C
/* B84400 8010D260 00042403 */   sra   $a0, $a0, 0x10
/* B84404 8010D264 10000002 */  b     .L8010D270
/* B84408 8010D268 00601025 */   move  $v0, $v1
.L8010D26C:
/* B8440C 8010D26C 00031023 */  negu  $v0, $v1
.L8010D270:
/* B84410 8010D270 0169082A */  slt   $at, $t3, $t1
/* B84414 8010D274 54200006 */  bnezl $at, .L8010D290
/* B84418 8010D278 0168C821 */   addu  $t9, $t3, $t0
/* B8441C 8010D27C 01687023 */  subu  $t6, $t3, $t0
/* B84420 8010D280 3C018017 */  lui   $at, %hi(D_801759BA) # $at, 0x8017
/* B84424 8010D284 10000004 */  b     .L8010D298
/* B84428 8010D288 A42E59BA */   sh    $t6, %lo(D_801759BA)($at)


/* B8442C 8010D28C 0168C821 */  addu  $t9, $t3, $t0
.L8010D290:
/* B84430 8010D290 3C018017 */  lui   $at, %hi(D_801759BA) # $at, 0x8017
/* B84434 8010D294 A43959BA */  sh    $t9, %lo(D_801759BA)($at)
.L8010D298:
/* B84438 8010D298 0186082A */  slt   $at, $t4, $a2
/* B8443C 8010D29C 54200006 */  bnezl $at, .L8010D2B8
/* B84440 8010D2A0 0184C021 */   addu  $t8, $t4, $a0
/* B84444 8010D2A4 01847823 */  subu  $t7, $t4, $a0
/* B84448 8010D2A8 3C018017 */  lui   $at, %hi(D_801759BE) # $at, 0x8017
/* B8444C 8010D2AC 10000004 */  b     .L8010D2C0
/* B84450 8010D2B0 A42F59BE */   sh    $t7, %lo(D_801759BE)($at)
/* B84454 8010D2B4 0184C021 */  addu  $t8, $t4, $a0
.L8010D2B8:
/* B84458 8010D2B8 3C018017 */  lui   $at, %hi(D_801759BE) # $at, 0x8017
/* B8445C 8010D2BC A43859BE */  sh    $t8, %lo(D_801759BE)($at)
.L8010D2C0:
/* B84460 8010D2C0 01A7082A */  slt   $at, $t5, $a3
/* B84464 8010D2C4 14200012 */  bnez  $at, .L8010D310
/* B84468 8010D2C8 00000000 */   nop   
/* B8446C 8010D2CC 004A001A */  div   $zero, $v0, $t2
/* B84470 8010D2D0 15400002 */  bnez  $t2, .L8010D2DC
/* B84474 8010D2D4 00000000 */   nop   
/* B84478 8010D2D8 0007000D */  break 7
.L8010D2DC:
/* B8447C 8010D2DC 2401FFFF */  li    $at, -1
/* B84480 8010D2E0 15410004 */  bne   $t2, $at, .L8010D2F4
/* B84484 8010D2E4 3C018000 */   lui   $at, 0x8000
/* B84488 8010D2E8 14410002 */  bne   $v0, $at, .L8010D2F4
/* B8448C 8010D2EC 00000000 */   nop   
/* B84490 8010D2F0 0006000D */  break 6
.L8010D2F4:
/* B84494 8010D2F4 00007012 */  mflo  $t6
/* B84498 8010D2F8 000ECC00 */  sll   $t9, $t6, 0x10
/* B8449C 8010D2FC 00197C03 */  sra   $t7, $t9, 0x10
/* B844A0 8010D300 01AFC023 */  subu  $t8, $t5, $t7
/* B844A4 8010D304 3C018017 */  lui   $at, %hi(D_801759BC) # $at, 0x8017
/* B844A8 8010D308 10000011 */  b     .L8010D350
/* B844AC 8010D30C A43859BC */   sh    $t8, %lo(D_801759BC)($at)
.L8010D310:
/* B844B0 8010D310 004A001A */  div   $zero, $v0, $t2
/* B844B4 8010D314 15400002 */  bnez  $t2, .L8010D320
/* B844B8 8010D318 00000000 */   nop   
/* B844BC 8010D31C 0007000D */  break 7
.L8010D320:
/* B844C0 8010D320 2401FFFF */  li    $at, -1
/* B844C4 8010D324 15410004 */  bne   $t2, $at, .L8010D338
/* B844C8 8010D328 3C018000 */   lui   $at, 0x8000
/* B844CC 8010D32C 14410002 */  bne   $v0, $at, .L8010D338
/* B844D0 8010D330 00000000 */   nop   
/* B844D4 8010D334 0006000D */  break 6
.L8010D338:
/* B844D8 8010D338 00007012 */  mflo  $t6
/* B844DC 8010D33C 000ECC00 */  sll   $t9, $t6, 0x10
/* B844E0 8010D340 00197C03 */  sra   $t7, $t9, 0x10
/* B844E4 8010D344 01AFC021 */  addu  $t8, $t5, $t7
/* B844E8 8010D348 3C018017 */  lui   $at, %hi(D_801759BC) # $at, 0x8017
/* B844EC 8010D34C A43859BC */  sh    $t8, %lo(D_801759BC)($at)
.L8010D350:
/* B844F0 8010D350 254AFFFF */  addiu $t2, $t2, -1
/* B844F4 8010D354 000A5400 */  sll   $t2, $t2, 0x10
/* B844F8 8010D358 000A5403 */  sra   $t2, $t2, 0x10
/* B844FC 8010D35C 3C018015 */  lui   $at, %hi(D_80153CD8) # $at, 0x8015
/* B84500 8010D360 15400029 */  bnez  $t2, .L8010D408
/* B84504 8010D364 A42A3CD8 */   sh    $t2, %lo(D_80153CD8)($at)
/* B84508 8010D368 8FAE0080 */  lw    $t6, 0x80($sp)
/* B8450C 8010D36C 8FB90078 */  lw    $t9, 0x78($sp)
/* B84510 8010D370 3C018017 */  lui   $at, %hi(D_801759A8) # $at, 0x8017
/* B84514 8010D374 A42E59A8 */  sh    $t6, %lo(D_801759A8)($at)
/* B84518 8010D378 8FAF0070 */  lw    $t7, 0x70($sp)
/* B8451C 8010D37C 3C018017 */  lui   $at, %hi(D_801759AC) # $at, 0x8017
/* B84520 8010D380 A43959AC */  sh    $t9, %lo(D_801759AC)($at)
/* B84524 8010D384 8FB8007C */  lw    $t8, 0x7c($sp)
/* B84528 8010D388 3C018017 */  lui   $at, %hi(D_801759AA) # $at, 0x8017
/* B8452C 8010D38C A42F59AA */  sh    $t7, %lo(D_801759AA)($at)
/* B84530 8010D390 8FAE006C */  lw    $t6, 0x6c($sp)
/* B84534 8010D394 3C018017 */  lui   $at, %hi(D_801759AE) # $at, 0x8017
/* B84538 8010D398 A43859AE */  sh    $t8, %lo(D_801759AE)($at)
/* B8453C 8010D39C 8FB90064 */  lw    $t9, 0x64($sp)
/* B84540 8010D3A0 3C018017 */  lui   $at, %hi(D_801759B2) # $at, 0x8017
/* B84544 8010D3A4 A42E59B2 */  sh    $t6, %lo(D_801759B2)($at)
/* B84548 8010D3A8 8FAF005C */  lw    $t7, 0x5c($sp)
/* B8454C 8010D3AC 3C018017 */  lui   $at, %hi(D_801759B0) # $at, 0x8017
/* B84550 8010D3B0 A43959B0 */  sh    $t9, %lo(D_801759B0)($at)
/* B84554 8010D3B4 8FB80054 */  lw    $t8, 0x54($sp)
/* B84558 8010D3B8 3C018017 */  lui   $at, %hi(D_801759B4) # $at, 0x8017
/* B8455C 8010D3BC A42F59B4 */  sh    $t7, %lo(D_801759B4)($at)
/* B84560 8010D3C0 3C018017 */  lui   $at, %hi(D_801759B8) # $at, 0x8017
/* B84564 8010D3C4 A43859B8 */  sh    $t8, %lo(D_801759B8)($at)
/* B84568 8010D3C8 3C018017 */  lui   $at, %hi(D_801759B6) # $at, 0x8017
/* B8456C 8010D3CC A43F59B6 */  sh    $ra, %lo(D_801759B6)($at)
/* B84570 8010D3D0 3C018017 */  lui   $at, %hi(D_801759BA) # $at, 0x8017
/* B84574 8010D3D4 A42959BA */  sh    $t1, %lo(D_801759BA)($at)
/* B84578 8010D3D8 3C018017 */  lui   $at, %hi(D_801759BE) # $at, 0x8017
/* B8457C 8010D3DC 3C0E8015 */  lui   $t6, %hi(D_80153CDC) # $t6, 0x8015
/* B84580 8010D3E0 85CE3CDC */  lh    $t6, %lo(D_80153CDC)($t6)
/* B84584 8010D3E4 A42659BE */  sh    $a2, %lo(D_801759BE)($at)
/* B84588 8010D3E8 3C018017 */  lui   $at, %hi(D_801759BC) # $at, 0x8017
/* B8458C 8010D3EC A42759BC */  sh    $a3, %lo(D_801759BC)($at)
/* B84590 8010D3F0 3C018015 */  lui   $at, %hi(D_80153CDC) # $at, 0x8015
/* B84594 8010D3F4 39D90001 */  xori  $t9, $t6, 1
/* B84598 8010D3F8 A4393CDC */  sh    $t9, %lo(D_80153CDC)($at)
/* B8459C 8010D3FC 240A0003 */  li    $t2, 3
/* B845A0 8010D400 3C018015 */  lui   $at, %hi(D_80153CD8) # $at, 0x8015
/* B845A4 8010D404 A42A3CD8 */  sh    $t2, %lo(D_80153CD8)($at)
.L8010D408:
/* B845A8 8010D408 920F63E7 */  lbu   $t7, 0x63e7($s0)
/* B845AC 8010D40C 26217FFF */  addiu $at, $s1, 0x7fff
/* B845B0 8010D410 25F8FFFF */  addiu $t8, $t7, -1
/* B845B4 8010D414 A03863E8 */  sb    $t8, 0x63e8($at)
/* B845B8 8010D418 920E63E7 */  lbu   $t6, 0x63e7($s0)
/* B845BC 8010D41C 55C00034 */  bnezl $t6, .L8010D4F0
/* B845C0 8010D420 02402025 */   move  $a0, $s2
/* B845C4 8010D424 0C03B616 */  jal   func_800ED858
/* B845C8 8010D428 00002025 */   move  $a0, $zero
/* B845CC 8010D42C 92026304 */  lbu   $v0, 0x6304($s0)
/* B845D0 8010D430 2401000D */  li    $at, 13
/* B845D4 8010D434 1441000F */  bne   $v0, $at, .L8010D474
/* B845D8 8010D438 3C048015 */   lui   $a0, %hi(D_80154538) # $a0, 0x8015
/* B845DC 8010D43C 24844538 */  addiu $a0, %lo(D_80154538) # addiu $a0, $a0, 0x4538
/* B845E0 8010D440 0C00084C */  jal   osSyncPrintf
/* B845E4 8010D444 960563EC */   lhu   $a1, 0x63ec($s0)
/* B845E8 8010D448 02402025 */  move  $a0, $s2
/* B845EC 8010D44C 0C042DC8 */  jal   func_8010B720
/* B845F0 8010D450 2405086F */   li    $a1, 2159
/* B845F4 8010D454 26217FFF */  addiu $at, $s1, 0x7fff
/* B845F8 8010D458 24190011 */  li    $t9, 17
/* B845FC 8010D45C 240F0003 */  li    $t7, 3
/* B84600 8010D460 24180001 */  li    $t8, 1
/* B84604 8010D464 A0396305 */  sb    $t9, 0x6305($at)
/* B84608 8010D468 A02F62FE */  sb    $t7, 0x62fe($at)
/* B8460C 8010D46C 1000001F */  b     .L8010D4EC
/* B84610 8010D470 A03863E8 */   sb    $t8, 0x63e8($at)
.L8010D474:
/* B84614 8010D474 2401001C */  li    $at, 28
/* B84618 8010D478 14410016 */  bne   $v0, $at, .L8010D4D4
/* B8461C 8010D47C 00000000 */   nop   
/* B84620 8010D480 960E63EC */  lhu   $t6, 0x63ec($s0)
/* B84624 8010D484 29C10006 */  slti  $at, $t6, 6
/* B84628 8010D488 1420000B */  bnez  $at, .L8010D4B8
/* B8462C 8010D48C 02402025 */   move  $a0, $s2
/* B84630 8010D490 0C042DC8 */  jal   func_8010B720
/* B84634 8010D494 2405086F */   li    $a1, 2159
/* B84638 8010D498 26217FFF */  addiu $at, $s1, 0x7fff
/* B8463C 8010D49C 24190011 */  li    $t9, 17
/* B84640 8010D4A0 240F0003 */  li    $t7, 3
/* B84644 8010D4A4 24180001 */  li    $t8, 1
/* B84648 8010D4A8 A0396305 */  sb    $t9, 0x6305($at)
/* B8464C 8010D4AC A02F62FE */  sb    $t7, 0x62fe($at)
/* B84650 8010D4B0 1000000E */  b     .L8010D4EC
/* B84654 8010D4B4 A03863E8 */   sb    $t8, 0x63e8($at)
.L8010D4B8:
/* B84658 8010D4B8 0C041B33 */  jal   func_80106CCC
/* B8465C 8010D4BC 02402025 */   move  $a0, $s2
/* B84660 8010D4C0 3C010001 */  lui   $at, 1
/* B84664 8010D4C4 00320821 */  addu  $at, $at, $s2
/* B84668 8010D4C8 240E0004 */  li    $t6, 4
/* B8466C 8010D4CC 10000007 */  b     .L8010D4EC
/* B84670 8010D4D0 A42E04C6 */   sh    $t6, 0x4c6($at)
.L8010D4D4:
/* B84674 8010D4D4 0C041B33 */  jal   func_80106CCC
/* B84678 8010D4D8 02402025 */   move  $a0, $s2
/* B8467C 8010D4DC 3C010001 */  lui   $at, 1
/* B84680 8010D4E0 00320821 */  addu  $at, $at, $s2
/* B84684 8010D4E4 24190003 */  li    $t9, 3
/* B84688 8010D4E8 A43904C6 */  sh    $t9, 0x4c6($at)
.L8010D4EC:
/* B8468C 8010D4EC 02402025 */  move  $a0, $s2
.L8010D4F0:
/* B84690 8010D4F0 0C0421AC */  jal   func_801086B0
/* B84694 8010D4F4 27A50140 */   addiu $a1, $sp, 0x140
/* B84698 8010D4F8 100005DD */  b     .L8010EC70
/* B8469C 8010D4FC 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D500
/* B846A0 8010D500 02402025 */  move  $a0, $s2
/* B846A4 8010D504 0C0421AC */  jal   func_801086B0
/* B846A8 8010D508 27A50140 */   addiu $a1, $sp, 0x140
glabel L8010D50C
/* B846AC 8010D50C 920F63E7 */  lbu   $t7, 0x63e7($s0)
/* B846B0 8010D510 26217FFF */  addiu $at, $s1, 0x7fff
/* B846B4 8010D514 25F8FFFF */  addiu $t8, $t7, -1
/* B846B8 8010D518 A03863E8 */  sb    $t8, 0x63e8($at)
/* B846BC 8010D51C 920E63E7 */  lbu   $t6, 0x63e7($s0)
/* B846C0 8010D520 15C0001A */  bnez  $t6, .L8010D58C
/* B846C4 8010D524 3C098016 */   lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B846C8 8010D528 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B846CC 8010D52C 8D2F0000 */  lw    $t7, ($t1)
/* B846D0 8010D530 24190001 */  li    $t9, 1
/* B846D4 8010D534 2401001D */  li    $at, 29
/* B846D8 8010D538 A5F90F7A */  sh    $t9, 0xf7a($t7)
/* B846DC 8010D53C 92186304 */  lbu   $t8, 0x6304($s0)
/* B846E0 8010D540 1701000C */  bne   $t8, $at, .L8010D574
/* B846E4 8010D544 3C048015 */   lui   $a0, %hi(D_8015454C) # $a0, 0x8015
/* B846E8 8010D548 0C00084C */  jal   osSyncPrintf
/* B846EC 8010D54C 2484454C */   addiu $a0, %lo(D_8015454C) # addiu $a0, $a0, 0x454c
/* B846F0 8010D550 02402025 */  move  $a0, $s2
/* B846F4 8010D554 0C042DC8 */  jal   func_8010B720
/* B846F8 8010D558 2405088B */   li    $a1, 2187
/* B846FC 8010D55C 0C0426CF */  jal   func_80109B3C
/* B84700 8010D560 02402025 */   move  $a0, $s2
/* B84704 8010D564 240E001E */  li    $t6, 30
/* B84708 8010D568 26217FFF */  addiu $at, $s1, 0x7fff
/* B8470C 8010D56C 10000004 */  b     .L8010D580
/* B84710 8010D570 A02E6305 */   sb    $t6, 0x6305($at)
.L8010D574:
/* B84714 8010D574 24190010 */  li    $t9, 16
/* B84718 8010D578 26217FFF */  addiu $at, $s1, 0x7fff
/* B8471C 8010D57C A0396305 */  sb    $t9, 0x6305($at)
.L8010D580:
/* B84720 8010D580 3C048015 */  lui   $a0, %hi(D_8015455C) # $a0, 0x8015
/* B84724 8010D584 0C00084C */  jal   osSyncPrintf
/* B84728 8010D588 2484455C */   addiu $a0, %lo(D_8015455C) # addiu $a0, $a0, 0x455c
.L8010D58C:
/* B8472C 8010D58C 100005B8 */  b     .L8010EC70
/* B84730 8010D590 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D594
/* B84734 8010D594 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B84738 8010D598 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B8473C 8010D59C 00003825 */  move  $a3, $zero
/* B84740 8010D5A0 00001825 */  move  $v1, $zero
.L8010D5A4:
/* B84744 8010D5A4 8D280000 */  lw    $t0, ($t1)
/* B84748 8010D5A8 00037840 */  sll   $t7, $v1, 1
/* B8474C 8010D5AC 24E70001 */  addiu $a3, $a3, 1
/* B84750 8010D5B0 010F1021 */  addu  $v0, $t0, $t7
/* B84754 8010D5B4 84580F6E */  lh    $t8, 0xf6e($v0)
/* B84758 8010D5B8 850E0F7A */  lh    $t6, 0xf7a($t0)
/* B8475C 8010D5BC 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B84760 8010D5C0 28E10005 */  slti  $at, $a3, 5
/* B84764 8010D5C4 030EC821 */  addu  $t9, $t8, $t6
/* B84768 8010D5C8 00E01825 */  move  $v1, $a3
/* B8476C 8010D5CC 1420FFF5 */  bnez  $at, .L8010D5A4
/* B84770 8010D5D0 A4590F6E */   sh    $t9, 0xf6e($v0)
/* B84774 8010D5D4 8D280000 */  lw    $t0, ($t1)
/* B84778 8010D5D8 85020F7A */  lh    $v0, 0xf7a($t0)
/* B8477C 8010D5DC 00427821 */  addu  $t7, $v0, $v0
/* B84780 8010D5E0 A50F0F7A */  sh    $t7, 0xf7a($t0)
/* B84784 8010D5E4 8D380000 */  lw    $t8, ($t1)
/* B84788 8010D5E8 870E0F7A */  lh    $t6, 0xf7a($t8)
/* B8478C 8010D5EC 29C10226 */  slti  $at, $t6, 0x226
/* B84790 8010D5F0 14200018 */  bnez  $at, .L8010D654
/* B84794 8010D5F4 241900FF */   li    $t9, 255
/* B84798 8010D5F8 3C018015 */  lui   $at, %hi(D_8015394C) # $at, 0x8015
/* B8479C 8010D5FC A039394C */  sb    $t9, %lo(D_8015394C)($at)
/* B847A0 8010D600 3C018015 */  lui   $at, %hi(D_80153960) # $at, 0x8015
/* B847A4 8010D604 A4203968 */  sh    $zero, %lo(D_80153968)($at)
/* B847A8 8010D608 A4203966 */  sh    $zero, %lo(D_80153966)($at)
/* B847AC 8010D60C A4203964 */  sh    $zero, %lo(D_80153964)($at)
/* B847B0 8010D610 A4203962 */  sh    $zero, %lo(D_80153962)($at)
/* B847B4 8010D614 A4203960 */  sh    $zero, %lo(D_80153960)($at)
/* B847B8 8010D618 3C018015 */  lui   $at, %hi(D_80153958) # $at, 0x8015
/* B847BC 8010D61C A420395E */  sh    $zero, %lo(D_8015395E)($at)
/* B847C0 8010D620 A420395C */  sh    $zero, %lo(D_8015395C)($at)
/* B847C4 8010D624 A420395A */  sh    $zero, %lo(D_8015395A)($at)
/* B847C8 8010D628 A4203958 */  sh    $zero, %lo(D_80153958)($at)
/* B847CC 8010D62C 920F6304 */  lbu   $t7, 0x6304($s0)
/* B847D0 8010D630 2401001E */  li    $at, 30
/* B847D4 8010D634 15E10004 */  bne   $t7, $at, .L8010D648
/* B847D8 8010D638 2418001F */   li    $t8, 31
/* B847DC 8010D63C 26217FFF */  addiu $at, $s1, 0x7fff
/* B847E0 8010D640 10000004 */  b     .L8010D654
/* B847E4 8010D644 A0386305 */   sb    $t8, 0x6305($at)
.L8010D648:
/* B847E8 8010D648 240E0009 */  li    $t6, 9
/* B847EC 8010D64C 26217FFF */  addiu $at, $s1, 0x7fff
/* B847F0 8010D650 A02E6305 */  sb    $t6, 0x6305($at)
.L8010D654:
/* B847F4 8010D654 10000586 */  b     .L8010EC70
/* B847F8 8010D658 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D65C
/* B847FC 8010D65C 921963E7 */  lbu   $t9, 0x63e7($s0)
/* B84800 8010D660 26217FFF */  addiu $at, $s1, 0x7fff
/* B84804 8010D664 272FFFFF */  addiu $t7, $t9, -1
/* B84808 8010D668 A02F63E8 */  sb    $t7, 0x63e8($at)
/* B8480C 8010D66C 921863E7 */  lbu   $t8, 0x63e7($s0)
/* B84810 8010D670 1700003B */  bnez  $t8, .L8010D760
/* B84814 8010D674 00000000 */   nop   
/* B84818 8010D678 0C03B616 */  jal   func_800ED858
/* B8481C 8010D67C 00002025 */   move  $a0, $zero
/* B84820 8010D680 3C048015 */  lui   $a0, %hi(D_80154568) # $a0, 0x8015
/* B84824 8010D684 0C00084C */  jal   osSyncPrintf
/* B84828 8010D688 24844568 */   addiu $a0, %lo(D_80154568) # addiu $a0, $a0, 0x4568
/* B8482C 8010D68C 3C048015 */  lui   $a0, %hi(D_80154570) # $a0, 0x8015
/* B84830 8010D690 0C00084C */  jal   osSyncPrintf
/* B84834 8010D694 24844570 */   addiu $a0, %lo(D_80154570) # addiu $a0, $a0, 0x4570
/* B84838 8010D698 3C048015 */  lui   $a0, %hi(D_80154588) # $a0, 0x8015
/* B8483C 8010D69C 0C00084C */  jal   osSyncPrintf
/* B84840 8010D6A0 24844588 */   addiu $a0, %lo(D_80154588) # addiu $a0, $a0, 0x4588
/* B84844 8010D6A4 3C048015 */  lui   $a0, %hi(D_801545A0) # $a0, 0x8015
/* B84848 8010D6A8 0C00084C */  jal   osSyncPrintf
/* B8484C 8010D6AC 248445A0 */   addiu $a0, %lo(D_801545A0) # addiu $a0, $a0, 0x45a0
/* B84850 8010D6B0 3C048015 */  lui   $a0, %hi(D_801545B8) # $a0, 0x8015
/* B84854 8010D6B4 0C00084C */  jal   osSyncPrintf
/* B84858 8010D6B8 248445B8 */   addiu $a0, %lo(D_801545B8) # addiu $a0, $a0, 0x45b8
/* B8485C 8010D6BC 0C0426CF */  jal   func_80109B3C
/* B84860 8010D6C0 02402025 */   move  $a0, $s2
/* B84864 8010D6C4 240E0012 */  li    $t6, 18
/* B84868 8010D6C8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8486C 8010D6CC 0C03B8F5 */  jal   func_800EE3D4
/* B84870 8010D6D0 A02E6305 */   sb    $t6, 0x6305($at)
/* B84874 8010D6D4 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B84878 8010D6D8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8487C 8010D6DC AC2262B9 */  sw    $v0, 0x62b9($at)
/* B84880 8010D6E0 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B84884 8010D6E4 A5000000 */  sh    $zero, ($t0)
/* B84888 8010D6E8 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B8488C 8010D6EC 85190000 */  lh    $t9, ($t0)
/* B84890 8010D6F0 0C041A6C */  jal   func_801069B0
/* B84894 8010D6F4 A1F90002 */   sb    $t9, 2($t7)
/* B84898 8010D6F8 960363EC */  lhu   $v1, 0x63ec($s0)
/* B8489C 8010D6FC 28610006 */  slti  $at, $v1, 6
/* B848A0 8010D700 14200017 */  bnez  $at, .L8010D760
/* B848A4 8010D704 2861000D */   slti  $at, $v1, 0xd
/* B848A8 8010D708 10200015 */  beqz  $at, .L8010D760
/* B848AC 8010D70C 00000000 */   nop   
/* B848B0 8010D710 8FA80148 */  lw    $t0, 0x148($sp)
/* B848B4 8010D714 00031040 */  sll   $v0, $v1, 1
/* B848B8 8010D718 3C188015 */  lui   $t8, %hi(D_80153C78)
/* B848BC 8010D71C C5040028 */  lwc1  $f4, 0x28($t0)
/* B848C0 8010D720 8D070024 */  lw    $a3, 0x24($t0)
/* B848C4 8010D724 0302C021 */  addu  $t8, $t8, $v0
/* B848C8 8010D728 E7A40010 */  swc1  $f4, 0x10($sp)
/* B848CC 8010D72C C506002C */  lwc1  $f6, 0x2c($t0)
/* B848D0 8010D730 87183C78 */  lh    $t8, %lo(D_80153C78)($t8)
/* B848D4 8010D734 3C068015 */  lui   $a2, %hi(D_80153C68)
/* B848D8 8010D738 00C23021 */  addu  $a2, $a2, $v0
/* B848DC 8010D73C 84C63C68 */  lh    $a2, %lo(D_80153C68)($a2)
/* B848E0 8010D740 AFA00020 */  sw    $zero, 0x20($sp)
/* B848E4 8010D744 AFA0001C */  sw    $zero, 0x1c($sp)
/* B848E8 8010D748 AFA00018 */  sw    $zero, 0x18($sp)
/* B848EC 8010D74C 26441C24 */  addiu $a0, $s2, 0x1c24
/* B848F0 8010D750 02402825 */  move  $a1, $s2
/* B848F4 8010D754 E7A60014 */  swc1  $f6, 0x14($sp)
/* B848F8 8010D758 0C00C7D4 */  jal   Actor_Spawn
/* B848FC 8010D75C AFB80024 */   sw    $t8, 0x24($sp)
.L8010D760:
/* B84900 8010D760 10000543 */  b     .L8010EC70
/* B84904 8010D764 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D768
/* B84908 8010D768 02402025 */  move  $a0, $s2
/* B8490C 8010D76C 0C0421AC */  jal   func_801086B0
/* B84910 8010D770 27A50140 */   addiu $a1, $sp, 0x140
/* B84914 8010D774 0C03B616 */  jal   func_800ED858
/* B84918 8010D778 24040001 */   li    $a0, 1
/* B8491C 8010D77C 0C03B616 */  jal   func_800ED858
/* B84920 8010D780 24040001 */   li    $a0, 1
/* B84924 8010D784 960463EC */  lhu   $a0, 0x63ec($s0)
/* B84928 8010D788 24050001 */  li    $a1, 1
/* B8492C 8010D78C 24840001 */  addiu $a0, $a0, 1
/* B84930 8010D790 00042600 */  sll   $a0, $a0, 0x18
/* B84934 8010D794 0C03B64F */  jal   func_800ED93C
/* B84938 8010D798 00042603 */   sra   $a0, $a0, 0x18
/* B8493C 8010D79C 960263EC */  lhu   $v0, 0x63ec($s0)
/* B84940 8010D7A0 2405000C */  li    $a1, 12
/* B84944 8010D7A4 10A20007 */  beq   $a1, $v0, .L8010D7C4
/* B84948 8010D7A8 00027040 */   sll   $t6, $v0, 1
/* B8494C 8010D7AC 3C048015 */  lui   $a0, %hi(D_80153CE0)
/* B84950 8010D7B0 008E2021 */  addu  $a0, $a0, $t6
/* B84954 8010D7B4 0C03D719 */  jal   func_800F5C64
/* B84958 8010D7B8 94843CE0 */   lhu   $a0, %lo(D_80153CE0)($a0)
/* B8495C 8010D7BC 0C03DC98 */  jal   func_800F7260
/* B84960 8010D7C0 24040020 */   li    $a0, 32
.L8010D7C4:
/* B84964 8010D7C4 3C010001 */  lui   $at, 1
/* B84968 8010D7C8 00320821 */  addu  $at, $at, $s2
/* B8496C 8010D7CC 24190001 */  li    $t9, 1
/* B84970 8010D7D0 A43904C6 */  sh    $t9, 0x4c6($at)
/* B84974 8010D7D4 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B84978 8010D7D8 24010001 */  li    $at, 1
/* B8497C 8010D7DC 14410004 */  bne   $v0, $at, .L8010D7F0
/* B84980 8010D7E0 240F0029 */   li    $t7, 41
/* B84984 8010D7E4 26217FFF */  addiu $at, $s1, 0x7fff
/* B84988 8010D7E8 A42F63F1 */  sh    $t7, 0x63f1($at)
/* B8498C 8010D7EC 960263F0 */  lhu   $v0, 0x63f0($s0)
.L8010D7F0:
/* B84990 8010D7F0 24010030 */  li    $at, 48
/* B84994 8010D7F4 14410003 */  bne   $v0, $at, .L8010D804
/* B84998 8010D7F8 24180031 */   li    $t8, 49
/* B8499C 8010D7FC 26217FFF */  addiu $at, $s1, 0x7fff
/* B849A0 8010D800 A43863F1 */  sh    $t8, 0x63f1($at)
.L8010D804:
/* B849A4 8010D804 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B849A8 8010D808 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B849AC 8010D80C A5000000 */  sh    $zero, ($t0)
/* B849B0 8010D810 240E0013 */  li    $t6, 19
/* B849B4 8010D814 26217FFF */  addiu $at, $s1, 0x7fff
/* B849B8 8010D818 A02E6305 */  sb    $t6, 0x6305($at)
/* B849BC 8010D81C 10000514 */  b     .L8010EC70
/* B849C0 8010D820 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D824
/* B849C4 8010D824 921963E7 */  lbu   $t9, 0x63e7($s0)
/* B849C8 8010D828 26217FFF */  addiu $at, $s1, 0x7fff
/* B849CC 8010D82C 272FFFFF */  addiu $t7, $t9, -1
/* B849D0 8010D830 A02F63E8 */  sb    $t7, 0x63e8($at)
/* B849D4 8010D834 921863E7 */  lbu   $t8, 0x63e7($s0)
/* B849D8 8010D838 17000035 */  bnez  $t8, .L8010D910
/* B849DC 8010D83C 3C048015 */   lui   $a0, %hi(D_801545BC) # $a0, 0x8015
/* B849E0 8010D840 248445BC */  addiu $a0, %lo(D_801545BC) # addiu $a0, $a0, 0x45bc
/* B849E4 8010D844 960563F0 */  lhu   $a1, 0x63f0($s0)
/* B849E8 8010D848 0C00084C */  jal   osSyncPrintf
/* B849EC 8010D84C 24060016 */   li    $a2, 22
/* B849F0 8010D850 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B849F4 8010D854 28410008 */  slti  $at, $v0, 8
/* B849F8 8010D858 50200006 */  beql  $at, $zero, .L8010D874
/* B849FC 8010D85C 24010009 */   li    $at, 9
/* B84A00 8010D860 0C03B616 */  jal   func_800ED858
/* B84A04 8010D864 24040004 */   li    $a0, 4
/* B84A08 8010D868 10000019 */  b     .L8010D8D0
/* B84A0C 8010D86C 960563F0 */   lhu   $a1, 0x63f0($s0)
/* B84A10 8010D870 24010009 */  li    $at, 9
.L8010D874:
/* B84A14 8010D874 54410006 */  bnel  $v0, $at, .L8010D890
/* B84A18 8010D878 2401000A */   li    $at, 10
/* B84A1C 8010D87C 0C03B616 */  jal   func_800ED858
/* B84A20 8010D880 24040002 */   li    $a0, 2
/* B84A24 8010D884 10000012 */  b     .L8010D8D0
/* B84A28 8010D888 960563F0 */   lhu   $a1, 0x63f0($s0)
/* B84A2C 8010D88C 2401000A */  li    $at, 10
.L8010D890:
/* B84A30 8010D890 54410006 */  bnel  $v0, $at, .L8010D8AC
/* B84A34 8010D894 2401000D */   li    $at, 13
/* B84A38 8010D898 0C03B616 */  jal   func_800ED858
/* B84A3C 8010D89C 24040003 */   li    $a0, 3
/* B84A40 8010D8A0 1000000B */  b     .L8010D8D0
/* B84A44 8010D8A4 960563F0 */   lhu   $a1, 0x63f0($s0)
/* B84A48 8010D8A8 2401000D */  li    $at, 13
.L8010D8AC:
/* B84A4C 8010D8AC 14410005 */  bne   $v0, $at, .L8010D8C4
/* B84A50 8010D8B0 00000000 */   nop   
/* B84A54 8010D8B4 0C03B616 */  jal   func_800ED858
/* B84A58 8010D8B8 24040005 */   li    $a0, 5
/* B84A5C 8010D8BC 10000004 */  b     .L8010D8D0
/* B84A60 8010D8C0 960563F0 */   lhu   $a1, 0x63f0($s0)
.L8010D8C4:
/* B84A64 8010D8C4 0C03B616 */  jal   func_800ED858
/* B84A68 8010D8C8 24040001 */   li    $a0, 1
/* B84A6C 8010D8CC 960563F0 */  lhu   $a1, 0x63f0($s0)
.L8010D8D0:
/* B84A70 8010D8D0 3C048015 */  lui   $a0, %hi(D_801545D4) # $a0, 0x8015
/* B84A74 8010D8D4 248445D4 */  addiu $a0, %lo(D_801545D4) # addiu $a0, $a0, 0x45d4
/* B84A78 8010D8D8 0C00084C */  jal   osSyncPrintf
/* B84A7C 8010D8DC 24A5FFFE */   addiu $a1, $a1, -2
/* B84A80 8010D8E0 960463F0 */  lhu   $a0, 0x63f0($s0)
/* B84A84 8010D8E4 24050002 */  li    $a1, 2
/* B84A88 8010D8E8 2484FFFF */  addiu $a0, $a0, -1
/* B84A8C 8010D8EC 00042600 */  sll   $a0, $a0, 0x18
/* B84A90 8010D8F0 0C03B64F */  jal   func_800ED93C
/* B84A94 8010D8F4 00042603 */   sra   $a0, $a0, 0x18
/* B84A98 8010D8F8 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B84A9C 8010D8FC 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B84AA0 8010D900 A5000000 */  sh    $zero, ($t0)
/* B84AA4 8010D904 240E0019 */  li    $t6, 25
/* B84AA8 8010D908 26217FFF */  addiu $at, $s1, 0x7fff
/* B84AAC 8010D90C A02E6305 */  sb    $t6, 0x6305($at)
.L8010D910:
/* B84AB0 8010D910 02402025 */  move  $a0, $s2
/* B84AB4 8010D914 0C0421AC */  jal   func_801086B0
/* B84AB8 8010D918 27A50140 */   addiu $a1, $sp, 0x140
/* B84ABC 8010D91C 100004D4 */  b     .L8010EC70
/* B84AC0 8010D920 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D924
/* B84AC4 8010D924 960563EC */  lhu   $a1, 0x63ec($s0)
/* B84AC8 8010D928 02402025 */  move  $a0, $s2
/* B84ACC 8010D92C 24A50893 */  addiu $a1, $a1, 0x893
/* B84AD0 8010D930 0C042DC8 */  jal   func_8010B720
/* B84AD4 8010D934 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B84AD8 8010D938 0C0426CF */  jal   func_80109B3C
/* B84ADC 8010D93C 02402025 */   move  $a0, $s2
/* B84AE0 8010D940 24190015 */  li    $t9, 21
/* B84AE4 8010D944 26217FFF */  addiu $at, $s1, 0x7fff
/* B84AE8 8010D948 240F0014 */  li    $t7, 20
/* B84AEC 8010D94C A0396305 */  sb    $t9, 0x6305($at)
/* B84AF0 8010D950 A02F63E8 */  sb    $t7, 0x63e8($at)
/* B84AF4 8010D954 02402025 */  move  $a0, $s2
/* B84AF8 8010D958 0C0421AC */  jal   func_801086B0
/* B84AFC 8010D95C 27A50140 */   addiu $a1, $sp, 0x140
/* B84B00 8010D960 100004C3 */  b     .L8010EC70
/* B84B04 8010D964 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D968
/* B84B08 8010D968 921863E7 */  lbu   $t8, 0x63e7($s0)
/* B84B0C 8010D96C 26217FFF */  addiu $at, $s1, 0x7fff
/* B84B10 8010D970 270EFFFF */  addiu $t6, $t8, -1
/* B84B14 8010D974 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B84B18 8010D978 921963E7 */  lbu   $t9, 0x63e7($s0)
/* B84B1C 8010D97C 17200003 */  bnez  $t9, .L8010D98C
/* B84B20 8010D980 240F0016 */   li    $t7, 22
/* B84B24 8010D984 26217FFF */  addiu $at, $s1, 0x7fff
/* B84B28 8010D988 A02F6305 */  sb    $t7, 0x6305($at)
.L8010D98C:
/* B84B2C 8010D98C 02402025 */  move  $a0, $s2
/* B84B30 8010D990 0C0421AC */  jal   func_801086B0
/* B84B34 8010D994 27A50140 */   addiu $a1, $sp, 0x140
/* B84B38 8010D998 100004B5 */  b     .L8010EC70
/* B84B3C 8010D99C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D9A0
/* B84B40 8010D9A0 0C03B616 */  jal   func_800ED858
/* B84B44 8010D9A4 00002025 */   move  $a0, $zero
/* B84B48 8010D9A8 0C041A6C */  jal   func_801069B0
/* B84B4C 8010D9AC 00000000 */   nop   
/* B84B50 8010D9B0 24180017 */  li    $t8, 23
/* B84B54 8010D9B4 26217FFF */  addiu $at, $s1, 0x7fff
/* B84B58 8010D9B8 240E0002 */  li    $t6, 2
/* B84B5C 8010D9BC A0386305 */  sb    $t8, 0x6305($at)
/* B84B60 8010D9C0 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B84B64 8010D9C4 02402025 */  move  $a0, $s2
/* B84B68 8010D9C8 0C0421AC */  jal   func_801086B0
/* B84B6C 8010D9CC 27A50140 */   addiu $a1, $sp, 0x140
/* B84B70 8010D9D0 100004A7 */  b     .L8010EC70
/* B84B74 8010D9D4 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010D9D8
/* B84B78 8010D9D8 921963E7 */  lbu   $t9, 0x63e7($s0)
/* B84B7C 8010D9DC 26217FFF */  addiu $at, $s1, 0x7fff
/* B84B80 8010D9E0 272FFFFF */  addiu $t7, $t9, -1
/* B84B84 8010D9E4 A02F63E8 */  sb    $t7, 0x63e8($at)
/* B84B88 8010D9E8 921863E7 */  lbu   $t8, 0x63e7($s0)
/* B84B8C 8010D9EC 17000086 */  bnez  $t8, .L8010DC08
/* B84B90 8010D9F0 00000000 */   nop   
/* B84B94 8010D9F4 960363EC */  lhu   $v1, 0x63ec($s0)
/* B84B98 8010D9F8 28610006 */  slti  $at, $v1, 6
/* B84B9C 8010D9FC 1020002A */  beqz  $at, .L8010DAA8
/* B84BA0 8010DA00 00000000 */   nop   
/* B84BA4 8010DA04 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B84BA8 8010DA08 2841000F */  slti  $at, $v0, 0xf
/* B84BAC 8010DA0C 14200003 */  bnez  $at, .L8010DA1C
/* B84BB0 8010DA10 28410015 */   slti  $at, $v0, 0x15
/* B84BB4 8010DA14 14200024 */  bnez  $at, .L8010DAA8
/* B84BB8 8010DA18 00000000 */   nop   
.L8010DA1C:
/* B84BBC 8010DA1C 860E640C */  lh    $t6, 0x640c($s0)
/* B84BC0 8010DA20 15C00005 */  bnez  $t6, .L8010DA38
/* B84BC4 8010DA24 3C190001 */   lui   $t9, 1
/* B84BC8 8010DA28 0332C821 */  addu  $t9, $t9, $s2
/* B84BCC 8010DA2C 93390759 */  lbu   $t9, 0x759($t9)
/* B84BD0 8010DA30 24010003 */  li    $at, 3
/* B84BD4 8010DA34 17210009 */  bne   $t9, $at, .L8010DA5C
.L8010DA38:
/* B84BD8 8010DA38 02402025 */   move  $a0, $s2
/* B84BDC 8010DA3C 2405088C */  li    $a1, 2188
/* B84BE0 8010DA40 0C042DA0 */  jal   func_8010B680
/* B84BE4 8010DA44 00003025 */   move  $a2, $zero
/* B84BE8 8010DA48 3C010001 */  lui   $at, 1
/* B84BEC 8010DA4C 00320821 */  addu  $at, $at, $s2
/* B84BF0 8010DA50 240F0004 */  li    $t7, 4
/* B84BF4 8010DA54 1000006C */  b     .L8010DC08
/* B84BF8 8010DA58 A42F04C6 */   sh    $t7, 0x4c6($at)
.L8010DA5C:
/* B84BFC 8010DA5C 3C188016 */  lui   $t8, %hi(gSaveContext+0x13fa) # $t8, 0x8016
/* B84C00 8010DA60 9718FA5A */  lhu   $t8, %lo(gSaveContext+0x13fa)($t8)
/* B84C04 8010DA64 24010001 */  li    $at, 1
/* B84C08 8010DA68 330E000F */  andi  $t6, $t8, 0xf
/* B84C0C 8010DA6C 11C1000A */  beq   $t6, $at, .L8010DA98
/* B84C10 8010DA70 2465088D */   addiu $a1, $v1, 0x88d
/* B84C14 8010DA74 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B84C18 8010DA78 02402025 */  move  $a0, $s2
/* B84C1C 8010DA7C 0C042DA0 */  jal   func_8010B680
/* B84C20 8010DA80 00003025 */   move  $a2, $zero
/* B84C24 8010DA84 3C010001 */  lui   $at, 1
/* B84C28 8010DA88 00320821 */  addu  $at, $at, $s2
/* B84C2C 8010DA8C 24190001 */  li    $t9, 1
/* B84C30 8010DA90 1000005D */  b     .L8010DC08
/* B84C34 8010DA94 A43904C6 */   sh    $t9, 0x4c6($at)
.L8010DA98:
/* B84C38 8010DA98 0C041B33 */  jal   func_80106CCC
/* B84C3C 8010DA9C 02402025 */   move  $a0, $s2
/* B84C40 8010DAA0 10000059 */  b     .L8010DC08
/* B84C44 8010DAA4 00000000 */   nop   
.L8010DAA8:
/* B84C48 8010DAA8 0C041B33 */  jal   func_80106CCC
/* B84C4C 8010DAAC 02402025 */   move  $a0, $s2
/* B84C50 8010DAB0 960F63EC */  lhu   $t7, 0x63ec($s0)
/* B84C54 8010DAB4 24010007 */  li    $at, 7
/* B84C58 8010DAB8 15E10005 */  bne   $t7, $at, .L8010DAD0
/* B84C5C 8010DABC 3C098016 */   lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B84C60 8010DAC0 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B84C64 8010DAC4 8D2E0000 */  lw    $t6, ($t1)
/* B84C68 8010DAC8 24180001 */  li    $t8, 1
/* B84C6C 8010DACC A5D805BE */  sh    $t8, 0x5be($t6)
.L8010DAD0:
/* B84C70 8010DAD0 3C048015 */  lui   $a0, %hi(D_801545E4) # $a0, 0x8015
/* B84C74 8010DAD4 0C00084C */  jal   osSyncPrintf
/* B84C78 8010DAD8 248445E4 */   addiu $a0, %lo(D_801545E4) # addiu $a0, $a0, 0x45e4
/* B84C7C 8010DADC 3C048015 */  lui   $a0, %hi(D_801545EC) # $a0, 0x8015
/* B84C80 8010DAE0 248445EC */  addiu $a0, %lo(D_801545EC) # addiu $a0, $a0, 0x45ec
/* B84C84 8010DAE4 960563EC */  lhu   $a1, 0x63ec($s0)
/* B84C88 8010DAE8 0C00084C */  jal   osSyncPrintf
/* B84C8C 8010DAEC 960663F0 */   lhu   $a2, 0x63f0($s0)
/* B84C90 8010DAF0 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B84C94 8010DAF4 24010029 */  li    $at, 41
/* B84C98 8010DAF8 1441000C */  bne   $v0, $at, .L8010DB2C
/* B84C9C 8010DAFC 3C010001 */   lui   $at, 1
/* B84CA0 8010DB00 00320821 */  addu  $at, $at, $s2
/* B84CA4 8010DB04 24190001 */  li    $t9, 1
/* B84CA8 8010DB08 A43904C6 */  sh    $t9, 0x4c6($at)
/* B84CAC 8010DB0C 960F63EC */  lhu   $t7, 0x63ec($s0)
/* B84CB0 8010DB10 2405000C */  li    $a1, 12
/* B84CB4 8010DB14 14AF0034 */  bne   $a1, $t7, .L8010DBE8
/* B84CB8 8010DB18 3C010001 */   lui   $at, 1
/* B84CBC 8010DB1C 00320821 */  addu  $at, $at, $s2
/* B84CC0 8010DB20 2418000B */  li    $t8, 11
/* B84CC4 8010DB24 10000030 */  b     .L8010DBE8
/* B84CC8 8010DB28 A43804C6 */   sh    $t8, 0x4c6($at)
.L8010DB2C:
/* B84CCC 8010DB2C 2841001C */  slti  $at, $v0, 0x1c
/* B84CD0 8010DB30 14200017 */  bnez  $at, .L8010DB90
/* B84CD4 8010DB34 3C048015 */   lui   $a0, %hi(D_80154618) # $a0, 0x8015
/* B84CD8 8010DB38 0C00084C */  jal   osSyncPrintf
/* B84CDC 8010DB3C 24844618 */   addiu $a0, %lo(D_80154618) # addiu $a0, $a0, 0x4618
/* B84CE0 8010DB40 960663F0 */  lhu   $a2, 0x63f0($s0)
/* B84CE4 8010DB44 3C048015 */  lui   $a0, %hi(D_80154620) # $a0, 0x8015
/* B84CE8 8010DB48 24844620 */  addiu $a0, %lo(D_80154620) # addiu $a0, $a0, 0x4620
/* B84CEC 8010DB4C 2405001C */  li    $a1, 28
/* B84CF0 8010DB50 0C00084C */  jal   osSyncPrintf
/* B84CF4 8010DB54 24C6FFE4 */   addiu $a2, $a2, -0x1c
/* B84CF8 8010DB58 960363EC */  lhu   $v1, 0x63ec($s0)
/* B84CFC 8010DB5C 960E63F0 */  lhu   $t6, 0x63f0($s0)
/* B84D00 8010DB60 2479001C */  addiu $t9, $v1, 0x1c
/* B84D04 8010DB64 15D90005 */  bne   $t6, $t9, .L8010DB7C
/* B84D08 8010DB68 3C010001 */   lui   $at, 1
/* B84D0C 8010DB6C 00320821 */  addu  $at, $at, $s2
/* B84D10 8010DB70 240F0003 */  li    $t7, 3
/* B84D14 8010DB74 1000001C */  b     .L8010DBE8
/* B84D18 8010DB78 A42F04C6 */   sh    $t7, 0x4c6($at)
.L8010DB7C:
/* B84D1C 8010DB7C 3C010001 */  lui   $at, 1
/* B84D20 8010DB80 00320821 */  addu  $at, $at, $s2
/* B84D24 8010DB84 2478FFFF */  addiu $t8, $v1, -1
/* B84D28 8010DB88 10000017 */  b     .L8010DBE8
/* B84D2C 8010DB8C A43804C6 */   sh    $t8, 0x4c6($at)
.L8010DB90:
/* B84D30 8010DB90 3C048015 */  lui   $a0, %hi(D_80154644) # $a0, 0x8015
/* B84D34 8010DB94 0C00084C */  jal   osSyncPrintf
/* B84D38 8010DB98 24844644 */   addiu $a0, %lo(D_80154644) # addiu $a0, $a0, 0x4644
/* B84D3C 8010DB9C 960663F0 */  lhu   $a2, 0x63f0($s0)
/* B84D40 8010DBA0 3C048015 */  lui   $a0, %hi(D_8015464C) # $a0, 0x8015
/* B84D44 8010DBA4 2484464C */  addiu $a0, %lo(D_8015464C) # addiu $a0, $a0, 0x464c
/* B84D48 8010DBA8 2405000F */  li    $a1, 15
/* B84D4C 8010DBAC 0C00084C */  jal   osSyncPrintf
/* B84D50 8010DBB0 24C6FFF1 */   addiu $a2, $a2, -0xf
/* B84D54 8010DBB4 961963EC */  lhu   $t9, 0x63ec($s0)
/* B84D58 8010DBB8 960E63F0 */  lhu   $t6, 0x63f0($s0)
/* B84D5C 8010DBBC 272F000F */  addiu $t7, $t9, 0xf
/* B84D60 8010DBC0 15CF0005 */  bne   $t6, $t7, .L8010DBD8
/* B84D64 8010DBC4 3C010001 */   lui   $at, 1
/* B84D68 8010DBC8 00320821 */  addu  $at, $at, $s2
/* B84D6C 8010DBCC 24180003 */  li    $t8, 3
/* B84D70 8010DBD0 10000005 */  b     .L8010DBE8
/* B84D74 8010DBD4 A43804C6 */   sh    $t8, 0x4c6($at)
.L8010DBD8:
/* B84D78 8010DBD8 3C010001 */  lui   $at, 1
/* B84D7C 8010DBDC 00320821 */  addu  $at, $at, $s2
/* B84D80 8010DBE0 24190004 */  li    $t9, 4
/* B84D84 8010DBE4 A43904C6 */  sh    $t9, 0x4c6($at)
.L8010DBE8:
/* B84D88 8010DBE8 3C048015 */  lui   $a0, %hi(D_8015466C) # $a0, 0x8015
/* B84D8C 8010DBEC 0C00084C */  jal   osSyncPrintf
/* B84D90 8010DBF0 2484466C */   addiu $a0, %lo(D_8015466C) # addiu $a0, $a0, 0x466c
/* B84D94 8010DBF4 8FAE008C */  lw    $t6, 0x8c($sp)
/* B84D98 8010DBF8 3C048015 */  lui   $a0, %hi(D_80154670) # $a0, 0x8015
/* B84D9C 8010DBFC 24844670 */  addiu $a0, %lo(D_80154670) # addiu $a0, $a0, 0x4670
/* B84DA0 8010DC00 0C00084C */  jal   osSyncPrintf
/* B84DA4 8010DC04 95C504C6 */   lhu   $a1, 0x4c6($t6)
.L8010DC08:
/* B84DA8 8010DC08 10000419 */  b     .L8010EC70
/* B84DAC 8010DC0C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010DC10
/* B84DB0 8010DC10 0C03B8FE */  jal   func_800EE3F8
/* B84DB4 8010DC14 00000000 */   nop   
/* B84DB8 8010DC18 26217FFF */  addiu $at, $s1, 0x7fff
/* B84DBC 8010DC1C AC2262B9 */  sw    $v0, 0x62b9($at)
/* B84DC0 8010DC20 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B84DC4 8010DC24 90EF0001 */  lbu   $t7, 1($a3)
/* B84DC8 8010DC28 15E00016 */  bnez  $t7, .L8010DC84
/* B84DCC 8010DC2C 00000000 */   nop   
/* B84DD0 8010DC30 92186304 */  lbu   $t8, 0x6304($s0)
/* B84DD4 8010DC34 24010013 */  li    $at, 19
/* B84DD8 8010DC38 17010004 */  bne   $t8, $at, .L8010DC4C
/* B84DDC 8010DC3C 24190014 */   li    $t9, 20
/* B84DE0 8010DC40 26217FFF */  addiu $at, $s1, 0x7fff
/* B84DE4 8010DC44 10000004 */  b     .L8010DC58
/* B84DE8 8010DC48 A0396305 */   sb    $t9, 0x6305($at)
.L8010DC4C:
/* B84DEC 8010DC4C 240E001A */  li    $t6, 26
/* B84DF0 8010DC50 26217FFF */  addiu $at, $s1, 0x7fff
/* B84DF4 8010DC54 A02E6305 */  sb    $t6, 0x6305($at)
.L8010DC58:
/* B84DF8 8010DC58 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B84DFC 8010DC5C 3C068015 */  lui   $a2, %hi(D_8015394C)
/* B84E00 8010DC60 3C048015 */  lui   $a0, %hi(D_80154688) # $a0, 0x8015
/* B84E04 8010DC64 91E30002 */  lbu   $v1, 2($t7)
/* B84E08 8010DC68 24844688 */  addiu $a0, %lo(D_80154688) # addiu $a0, $a0, 0x4688
/* B84E0C 8010DC6C 00C33021 */  addu  $a2, $a2, $v1
/* B84E10 8010DC70 90C6394C */  lbu   $a2, %lo(D_8015394C)($a2)
/* B84E14 8010DC74 0C00084C */  jal   osSyncPrintf
/* B84E18 8010DC78 00602825 */   move  $a1, $v1
/* B84E1C 8010DC7C 10000023 */  b     .L8010DD0C
/* B84E20 8010DC80 02402025 */   move  $a0, $s2
.L8010DC84:
/* B84E24 8010DC84 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B84E28 8010DC88 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B84E2C 8010DC8C 85180000 */  lh    $t8, ($t0)
/* B84E30 8010DC90 53000008 */  beql  $t8, $zero, .L8010DCB4
/* B84E34 8010DC94 90E30002 */   lbu   $v1, 2($a3)
/* B84E38 8010DC98 90F90002 */  lbu   $t9, 2($a3)
/* B84E3C 8010DC9C 24010001 */  li    $at, 1
/* B84E40 8010DCA0 57210004 */  bnel  $t9, $at, .L8010DCB4
/* B84E44 8010DCA4 90E30002 */   lbu   $v1, 2($a3)
/* B84E48 8010DCA8 A5000000 */  sh    $zero, ($t0)
/* B84E4C 8010DCAC 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B84E50 8010DCB0 90E30002 */  lbu   $v1, 2($a3)
.L8010DCB4:
/* B84E54 8010DCB4 50600015 */  beql  $v1, $zero, .L8010DD0C
/* B84E58 8010DCB8 02402025 */   move  $a0, $s2
/* B84E5C 8010DCBC 850E0000 */  lh    $t6, ($t0)
/* B84E60 8010DCC0 25CF0001 */  addiu $t7, $t6, 1
/* B84E64 8010DCC4 546F0011 */  bnel  $v1, $t7, .L8010DD0C
/* B84E68 8010DCC8 02402025 */   move  $a0, $s2
/* B84E6C 8010DCCC 90E20000 */  lbu   $v0, ($a3)
/* B84E70 8010DCD0 3C018015 */  lui   $at, %hi(D_8015394B)
/* B84E74 8010DCD4 00230821 */  addu  $at, $at, $v1
/* B84E78 8010DCD8 A022394B */  sb    $v0, %lo(D_8015394B)($at)
/* B84E7C 8010DCDC 26217FFF */  addiu $at, $s1, 0x7fff
/* B84E80 8010DCE0 A0226411 */  sb    $v0, 0x6411($at)
/* B84E84 8010DCE4 8E1962B8 */  lw    $t9, 0x62b8($s0)
/* B84E88 8010DCE8 3C018015 */  lui   $at, %hi(D_8015394C)
/* B84E8C 8010DCEC 241800FF */  li    $t8, 255
/* B84E90 8010DCF0 932E0002 */  lbu   $t6, 2($t9)
/* B84E94 8010DCF4 002E0821 */  addu  $at, $at, $t6
/* B84E98 8010DCF8 A038394C */  sb    $t8, %lo(D_8015394C)($at)
/* B84E9C 8010DCFC 850F0000 */  lh    $t7, ($t0)
/* B84EA0 8010DD00 25F90001 */  addiu $t9, $t7, 1
/* B84EA4 8010DD04 A5190000 */  sh    $t9, ($t0)
glabel L8010DD08
/* B84EA8 8010DD08 02402025 */  move  $a0, $s2
.L8010DD0C:
/* B84EAC 8010DD0C 0C0421AC */  jal   func_801086B0
/* B84EB0 8010DD10 27A50140 */   addiu $a1, $sp, 0x140
/* B84EB4 8010DD14 100003D6 */  b     .L8010EC70
/* B84EB8 8010DD18 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010DD1C
/* B84EBC 8010DD1C 0C03B8F5 */  jal   func_800EE3D4
/* B84EC0 8010DD20 00000000 */   nop   
/* B84EC4 8010DD24 26217FFF */  addiu $at, $s1, 0x7fff
/* B84EC8 8010DD28 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B84ECC 8010DD2C 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B84ED0 8010DD30 90E30002 */  lbu   $v1, 2($a3)
/* B84ED4 8010DD34 10600013 */  beqz  $v1, .L8010DD84
/* B84ED8 8010DD38 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B84EDC 8010DD3C 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B84EE0 8010DD40 85050000 */  lh    $a1, ($t0)
/* B84EE4 8010DD44 24B80001 */  addiu $t8, $a1, 1
/* B84EE8 8010DD48 5478000F */  bnel  $v1, $t8, .L8010DD88
/* B84EEC 8010DD4C 90E60001 */   lbu   $a2, 1($a3)
/* B84EF0 8010DD50 90EE0000 */  lbu   $t6, ($a3)
/* B84EF4 8010DD54 3C018015 */  lui   $at, %hi(D_8015394B)
/* B84EF8 8010DD58 00230821 */  addu  $at, $at, $v1
/* B84EFC 8010DD5C A02E394B */  sb    $t6, %lo(D_8015394B)($at)
/* B84F00 8010DD60 8E1962B8 */  lw    $t9, 0x62b8($s0)
/* B84F04 8010DD64 3C018015 */  lui   $at, %hi(D_8015394C)
/* B84F08 8010DD68 240F00FF */  li    $t7, 255
/* B84F0C 8010DD6C 93380002 */  lbu   $t8, 2($t9)
/* B84F10 8010DD70 24AE0001 */  addiu $t6, $a1, 1
/* B84F14 8010DD74 00380821 */  addu  $at, $at, $t8
/* B84F18 8010DD78 A02F394C */  sb    $t7, %lo(D_8015394C)($at)
/* B84F1C 8010DD7C A50E0000 */  sh    $t6, ($t0)
/* B84F20 8010DD80 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010DD84:
/* B84F24 8010DD84 90E60001 */  lbu   $a2, 1($a3)
.L8010DD88:
/* B84F28 8010DD88 28C1000D */  slti  $at, $a2, 0xd
/* B84F2C 8010DD8C 10200030 */  beqz  $at, .L8010DE50
/* B84F30 8010DD90 3C048015 */   lui   $a0, %hi(D_8015469C) # $a0, 0x8015
/* B84F34 8010DD94 2484469C */  addiu $a0, %lo(D_8015469C) # addiu $a0, $a0, 0x469c
/* B84F38 8010DD98 0C00084C */  jal   osSyncPrintf
/* B84F3C 8010DD9C 960563F0 */   lhu   $a1, 0x63f0($s0)
/* B84F40 8010DDA0 8E1962B8 */  lw    $t9, 0x62b8($s0)
/* B84F44 8010DDA4 26217FFF */  addiu $at, $s1, 0x7fff
/* B84F48 8010DDA8 2418001C */  li    $t8, 28
/* B84F4C 8010DDAC 932F0001 */  lbu   $t7, 1($t9)
/* B84F50 8010DDB0 A0386305 */  sb    $t8, 0x6305($at)
/* B84F54 8010DDB4 3C058015 */  lui   $a1, %hi(D_8015396C)
/* B84F58 8010DDB8 A42F63ED */  sh    $t7, 0x63ed($at)
/* B84F5C 8010DDBC 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B84F60 8010DDC0 02402025 */  move  $a0, $s2
/* B84F64 8010DDC4 91D90001 */  lbu   $t9, 1($t6)
/* B84F68 8010DDC8 00197840 */  sll   $t7, $t9, 1
/* B84F6C 8010DDCC 00AF2821 */  addu  $a1, $a1, $t7
/* B84F70 8010DDD0 84A5396C */  lh    $a1, %lo(D_8015396C)($a1)
/* B84F74 8010DDD4 24A5005A */  addiu $a1, $a1, 0x5a
/* B84F78 8010DDD8 0C021344 */  jal   Item_Give
/* B84F7C 8010DDDC 30A500FF */   andi  $a1, $a1, 0xff
/* B84F80 8010DDE0 3C048015 */  lui   $a0, %hi(D_801546C8) # $a0, 0x8015
/* B84F84 8010DDE4 0C00084C */  jal   osSyncPrintf
/* B84F88 8010DDE8 248446C8 */   addiu $a0, %lo(D_801546C8) # addiu $a0, $a0, 0x46c8
/* B84F8C 8010DDEC 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B84F90 8010DDF0 3C048015 */  lui   $a0, %hi(D_801546D0) # $a0, 0x8015
/* B84F94 8010DDF4 248446D0 */  addiu $a0, %lo(D_801546D0) # addiu $a0, $a0, 0x46d0
/* B84F98 8010DDF8 93050001 */  lbu   $a1, 1($t8)
/* B84F9C 8010DDFC 0C00084C */  jal   osSyncPrintf
/* B84FA0 8010DE00 24A5005A */   addiu $a1, $a1, 0x5a
/* B84FA4 8010DE04 3C048015 */  lui   $a0, %hi(D_801546F0) # $a0, 0x8015
/* B84FA8 8010DE08 0C00084C */  jal   osSyncPrintf
/* B84FAC 8010DE0C 248446F0 */   addiu $a0, %lo(D_801546F0) # addiu $a0, $a0, 0x46f0
/* B84FB0 8010DE10 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B84FB4 8010DE14 240E0014 */  li    $t6, 20
/* B84FB8 8010DE18 26217FFF */  addiu $at, $s1, 0x7fff
/* B84FBC 8010DE1C 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B84FC0 8010DE20 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B84FC4 8010DE24 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B84FC8 8010DE28 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B84FCC 8010DE2C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B84FD0 8010DE30 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B84FD4 8010DE34 AFB90014 */  sw    $t9, 0x14($sp)
/* B84FD8 8010DE38 AFA70010 */  sw    $a3, 0x10($sp)
/* B84FDC 8010DE3C 24044807 */  li    $a0, 18439
/* B84FE0 8010DE40 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B84FE4 8010DE44 24060004 */   li    $a2, 4
/* B84FE8 8010DE48 10000014 */  b     .L8010DE9C
/* B84FEC 8010DE4C 02402025 */   move  $a0, $s2
.L8010DE50:
/* B84FF0 8010DE50 240100FF */  li    $at, 255
/* B84FF4 8010DE54 14C10010 */  bne   $a2, $at, .L8010DE98
/* B84FF8 8010DE58 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B84FFC 8010DE5C 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B85000 8010DE60 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85004 8010DE64 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B85008 8010DE68 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B8500C 8010DE6C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85010 8010DE70 AFAF0014 */  sw    $t7, 0x14($sp)
/* B85014 8010DE74 AFA70010 */  sw    $a3, 0x10($sp)
/* B85018 8010DE78 24044827 */  li    $a0, 18471
/* B8501C 8010DE7C 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85020 8010DE80 24060004 */   li    $a2, 4
/* B85024 8010DE84 26217FFF */  addiu $at, $s1, 0x7fff
/* B85028 8010DE88 2418000A */  li    $t8, 10
/* B8502C 8010DE8C 240E001D */  li    $t6, 29
/* B85030 8010DE90 A03863E8 */  sb    $t8, 0x63e8($at)
/* B85034 8010DE94 A02E6305 */  sb    $t6, 0x6305($at)
.L8010DE98:
/* B85038 8010DE98 02402025 */  move  $a0, $s2
.L8010DE9C:
/* B8503C 8010DE9C 0C0421AC */  jal   func_801086B0
/* B85040 8010DEA0 27A50140 */   addiu $a1, $sp, 0x140
/* B85044 8010DEA4 10000372 */  b     .L8010EC70
/* B85048 8010DEA8 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010DEAC
/* B8504C 8010DEAC 02402025 */  move  $a0, $s2
/* B85050 8010DEB0 0C0421AC */  jal   func_801086B0
/* B85054 8010DEB4 27A50140 */   addiu $a1, $sp, 0x140
/* B85058 8010DEB8 0C041AF2 */  jal   func_80106BC8
/* B8505C 8010DEBC 02402025 */   move  $a0, $s2
/* B85060 8010DEC0 10400003 */  beqz  $v0, .L8010DED0
/* B85064 8010DEC4 02402025 */   move  $a0, $s2
/* B85068 8010DEC8 0C042F56 */  jal   func_8010BD58
/* B8506C 8010DECC 960563F0 */   lhu   $a1, 0x63f0($s0)
.L8010DED0:
/* B85070 8010DED0 10000367 */  b     .L8010EC70
/* B85074 8010DED4 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010DED8
/* B85078 8010DED8 3C048015 */  lui   $a0, %hi(D_801546F4) # $a0, 0x8015
/* B8507C 8010DEDC 0C00084C */  jal   osSyncPrintf
/* B85080 8010DEE0 248446F4 */   addiu $a0, %lo(D_801546F4) # addiu $a0, $a0, 0x46f4
/* B85084 8010DEE4 0C03B85C */  jal   func_800EE170
/* B85088 8010DEE8 24040001 */   li    $a0, 1
/* B8508C 8010DEEC 0C03B616 */  jal   func_800ED858
/* B85090 8010DEF0 24040001 */   li    $a0, 1
/* B85094 8010DEF4 0C03B8F2 */  jal   func_800EE3C8
/* B85098 8010DEF8 00000000 */   nop   
/* B8509C 8010DEFC 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B850A0 8010DF00 26217FFF */  addiu $at, $s1, 0x7fff
/* B850A4 8010DF04 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B850A8 8010DF08 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B850AC 8010DF0C A5000000 */  sh    $zero, ($t0)
/* B850B0 8010DF10 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B850B4 8010DF14 85190000 */  lh    $t9, ($t0)
/* B850B8 8010DF18 3C098015 */  lui   $t1, %hi(D_8014B2FC) # $t1, 0x8015
/* B850BC 8010DF1C 2529B2FC */  addiu $t1, %lo(D_8014B2FC) # addiu $t1, $t1, -0x4d04
/* B850C0 8010DF20 A1F90002 */  sb    $t9, 2($t7)
/* B850C4 8010DF24 0C041A6C */  jal   func_801069B0
/* B850C8 8010DF28 A5200000 */   sh    $zero, ($t1)
/* B850CC 8010DF2C 24180022 */  li    $t8, 34
/* B850D0 8010DF30 26217FFF */  addiu $at, $s1, 0x7fff
/* B850D4 8010DF34 A0386305 */  sb    $t8, 0x6305($at)
/* B850D8 8010DF38 02402025 */  move  $a0, $s2
/* B850DC 8010DF3C 0C0421AC */  jal   func_801086B0
/* B850E0 8010DF40 27A50140 */   addiu $a1, $sp, 0x140
/* B850E4 8010DF44 1000034A */  b     .L8010EC70
/* B850E8 8010DF48 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010DF4C
/* B850EC 8010DF4C 0C03B8F2 */  jal   func_800EE3C8
/* B850F0 8010DF50 00000000 */   nop   
/* B850F4 8010DF54 26217FFF */  addiu $at, $s1, 0x7fff
/* B850F8 8010DF58 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B850FC 8010DF5C 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B85100 8010DF60 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85104 8010DF64 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85108 8010DF68 3C048015 */  lui   $a0, %hi(D_80154708) # $a0, 0x8015
/* B8510C 8010DF6C 24844708 */  addiu $a0, %lo(D_80154708) # addiu $a0, $a0, 0x4708
/* B85110 8010DF70 85050000 */  lh    $a1, ($t0)
/* B85114 8010DF74 0C00084C */  jal   osSyncPrintf
/* B85118 8010DF78 91C60002 */   lbu   $a2, 2($t6)
/* B8511C 8010DF7C 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85120 8010DF80 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85124 8010DF84 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85128 8010DF88 90E30002 */  lbu   $v1, 2($a3)
/* B8512C 8010DF8C 5060003F */  beql  $v1, $zero, .L8010E08C
/* B85130 8010DF90 90E60001 */   lbu   $a2, 1($a3)
/* B85134 8010DF94 85190000 */  lh    $t9, ($t0)
/* B85138 8010DF98 272F0001 */  addiu $t7, $t9, 1
/* B8513C 8010DF9C 146F003A */  bne   $v1, $t7, .L8010E088
/* B85140 8010DFA0 3C098015 */   lui   $t1, %hi(D_8014B2FC) # $t1, 0x8015
/* B85144 8010DFA4 2529B2FC */  addiu $t1, %lo(D_8014B2FC) # addiu $t1, $t1, -0x4d04
/* B85148 8010DFA8 85250000 */  lh    $a1, ($t1)
/* B8514C 8010DFAC 28A10008 */  slti  $at, $a1, 8
/* B85150 8010DFB0 14200013 */  bnez  $at, .L8010E000
/* B85154 8010DFB4 24A2FFF8 */   addiu $v0, $a1, -8
/* B85158 8010DFB8 3042FFFF */  andi  $v0, $v0, 0xffff
/* B8515C 8010DFBC 00003825 */  move  $a3, $zero
.L8010DFC0:
/* B85160 8010DFC0 3C188015 */  lui   $t8, %hi(D_8015394C) # $t8, 0x8015
/* B85164 8010DFC4 2718394C */  addiu $t8, %lo(D_8015394C) # addiu $t8, $t8, 0x394c
/* B85168 8010DFC8 24E70001 */  addiu $a3, $a3, 1
/* B8516C 8010DFCC 00587021 */  addu  $t6, $v0, $t8
/* B85170 8010DFD0 91D90001 */  lbu   $t9, 1($t6)
/* B85174 8010DFD4 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B85178 8010DFD8 00587821 */  addu  $t7, $v0, $t8
/* B8517C 8010DFDC 24420001 */  addiu $v0, $v0, 1
/* B85180 8010DFE0 28E10008 */  slti  $at, $a3, 8
/* B85184 8010DFE4 3042FFFF */  andi  $v0, $v0, 0xffff
/* B85188 8010DFE8 1420FFF5 */  bnez  $at, .L8010DFC0
/* B8518C 8010DFEC A1F90000 */   sb    $t9, ($t7)
/* B85190 8010DFF0 24AEFFFF */  addiu $t6, $a1, -1
/* B85194 8010DFF4 A52E0000 */  sh    $t6, ($t1)
/* B85198 8010DFF8 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B8519C 8010DFFC 85250000 */  lh    $a1, ($t1)
.L8010E000:
/* B851A0 8010E000 3C048015 */  lui   $a0, %hi(D_80154720) # $a0, 0x8015
/* B851A4 8010E004 24844720 */  addiu $a0, %lo(D_80154720) # addiu $a0, $a0, 0x4720
/* B851A8 8010E008 0C00084C */  jal   osSyncPrintf
/* B851AC 8010E00C 90E60000 */   lbu   $a2, ($a3)
/* B851B0 8010E010 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B851B4 8010E014 3C098015 */  lui   $t1, %hi(D_8014B2FC) # $t1, 0x8015
/* B851B8 8010E018 2529B2FC */  addiu $t1, %lo(D_8014B2FC) # addiu $t1, $t1, -0x4d04
/* B851BC 8010E01C 85390000 */  lh    $t9, ($t1)
/* B851C0 8010E020 93020000 */  lbu   $v0, ($t8)
/* B851C4 8010E024 3C018015 */  lui   $at, %hi(D_8015394C)
/* B851C8 8010E028 00390821 */  addu  $at, $at, $t9
/* B851CC 8010E02C A022394C */  sb    $v0, %lo(D_8015394C)($at)
/* B851D0 8010E030 26217FFF */  addiu $at, $s1, 0x7fff
/* B851D4 8010E034 A0226411 */  sb    $v0, 0x6411($at)
/* B851D8 8010E038 852F0000 */  lh    $t7, ($t1)
/* B851DC 8010E03C 3C018015 */  lui   $at, %hi(D_8015394C)
/* B851E0 8010E040 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B851E4 8010E044 25EE0001 */  addiu $t6, $t7, 1
/* B851E8 8010E048 A52E0000 */  sh    $t6, ($t1)
/* B851EC 8010E04C 85390000 */  lh    $t9, ($t1)
/* B851F0 8010E050 241800FF */  li    $t8, 255
/* B851F4 8010E054 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B851F8 8010E058 00390821 */  addu  $at, $at, $t9
/* B851FC 8010E05C A038394C */  sb    $t8, %lo(D_8015394C)($at)
/* B85200 8010E060 850F0000 */  lh    $t7, ($t0)
/* B85204 8010E064 24010008 */  li    $at, 8
/* B85208 8010E068 25EE0001 */  addiu $t6, $t7, 1
/* B8520C 8010E06C A50E0000 */  sh    $t6, ($t0)
/* B85210 8010E070 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85214 8010E074 90F80002 */  lbu   $t8, 2($a3)
/* B85218 8010E078 57010004 */  bnel  $t8, $at, .L8010E08C
/* B8521C 8010E07C 90E60001 */   lbu   $a2, 1($a3)
/* B85220 8010E080 A5000000 */  sh    $zero, ($t0)
/* B85224 8010E084 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010E088:
/* B85228 8010E088 90E60001 */  lbu   $a2, 1($a3)
.L8010E08C:
/* B8522C 8010E08C 3C098015 */  lui   $t1, %hi(D_8014B2FC) # $t1, 0x8015
/* B85230 8010E090 2529B2FC */  addiu $t1, %lo(D_8014B2FC) # addiu $t1, $t1, -0x4d04
/* B85234 8010E094 50C00007 */  beql  $a2, $zero, .L8010E0B4
/* B85238 8010E098 852E0000 */   lh    $t6, ($t1)
/* B8523C 8010E09C 96590020 */  lhu   $t9, 0x20($s2)
/* B85240 8010E0A0 2401BFFF */  li    $at, -16385
/* B85244 8010E0A4 03217827 */  nor   $t7, $t9, $at
/* B85248 8010E0A8 55E00047 */  bnezl $t7, .L8010E1C8
/* B8524C 8010E0AC 02402025 */   move  $a0, $s2
/* B85250 8010E0B0 852E0000 */  lh    $t6, ($t1)
.L8010E0B4:
/* B85254 8010E0B4 11C00007 */  beqz  $t6, .L8010E0D4
/* B85258 8010E0B8 3C048015 */   lui   $a0, %hi(D_80154738) # $a0, 0x8015
/* B8525C 8010E0BC 24844738 */  addiu $a0, %lo(D_80154738) # addiu $a0, $a0, 0x4738
/* B85260 8010E0C0 0C00084C */  jal   osSyncPrintf
/* B85264 8010E0C4 00C02825 */   move  $a1, $a2
/* B85268 8010E0C8 24180001 */  li    $t8, 1
/* B8526C 8010E0CC 3C018016 */  lui   $at, %hi(gSaveContext+0xf40) # $at, 0x8016
/* B85270 8010E0D0 A038F5A0 */  sb    $t8, %lo(gSaveContext+0xf40)($at)
.L8010E0D4:
/* B85274 8010E0D4 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85278 8010E0D8 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B8527C 8010E0DC 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85280 8010E0E0 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B85284 8010E0E4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85288 8010E0E8 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B8528C 8010E0EC AFB90014 */  sw    $t9, 0x14($sp)
/* B85290 8010E0F0 AFA70010 */  sw    $a3, 0x10($sp)
/* B85294 8010E0F4 24044827 */  li    $a0, 18471
/* B85298 8010E0F8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B8529C 8010E0FC 24060004 */   li    $a2, 4
/* B852A0 8010E100 3C048015 */  lui   $a0, %hi(D_80154770) # $a0, 0x8015
/* B852A4 8010E104 0C00084C */  jal   osSyncPrintf
/* B852A8 8010E108 24844770 */   addiu $a0, %lo(D_80154770) # addiu $a0, $a0, 0x4770
/* B852AC 8010E10C 0C03B85C */  jal   func_800EE170
/* B852B0 8010E110 00002025 */   move  $a0, $zero
/* B852B4 8010E114 240F000A */  li    $t7, 10
/* B852B8 8010E118 26217FFF */  addiu $at, $s1, 0x7fff
/* B852BC 8010E11C A02F63E8 */  sb    $t7, 0x63e8($at)
/* B852C0 8010E120 3C010001 */  lui   $at, 1
/* B852C4 8010E124 00320821 */  addu  $at, $at, $s2
/* B852C8 8010E128 240E0004 */  li    $t6, 4
/* B852CC 8010E12C A42E04C6 */  sh    $t6, 0x4c6($at)
/* B852D0 8010E130 0C041B33 */  jal   func_80106CCC
/* B852D4 8010E134 02402025 */   move  $a0, $s2
/* B852D8 8010E138 3C048015 */  lui   $a0, %hi(D_80154780) # $a0, 0x8015
/* B852DC 8010E13C 0C00084C */  jal   osSyncPrintf
/* B852E0 8010E140 24844780 */   addiu $a0, %lo(D_80154780) # addiu $a0, $a0, 0x4780
/* B852E4 8010E144 3C048015 */  lui   $a0, %hi(D_801547A4) # $a0, 0x8015
/* B852E8 8010E148 0C00084C */  jal   osSyncPrintf
/* B852EC 8010E14C 248447A4 */   addiu $a0, %lo(D_801547A4) # addiu $a0, $a0, 0x47a4
/* B852F0 8010E150 3C048015 */  lui   $a0, %hi(D_801547AC) # $a0, 0x8015
/* B852F4 8010E154 0C00084C */  jal   osSyncPrintf
/* B852F8 8010E158 248447AC */   addiu $a0, %lo(D_801547AC) # addiu $a0, $a0, 0x47ac
/* B852FC 8010E15C 3C048016 */  lui   $a0, %hi(gSaveContext+0xf41) # $a0, 0x8016
/* B85300 8010E160 3C058013 */  lui   $a1, %hi(gScarecrowCustomSongPtr) # $a1, 0x8013
/* B85304 8010E164 8CA51BE4 */  lw    $a1, %lo(gScarecrowCustomSongPtr)($a1)
/* B85308 8010E168 2484F5A1 */  addiu $a0, %lo(gSaveContext+0xf41) # addiu $a0, $a0, -0xa5f
/* B8530C 8010E16C 0C01A508 */  jal   MemCopy
/* B85310 8010E170 24060360 */   li    $a2, 864
/* B85314 8010E174 00003825 */  move  $a3, $zero
.L8010E178:
/* B85318 8010E178 3C058016 */  lui   $a1, %hi(gSaveContext+0xf41)
/* B8531C 8010E17C 00A72821 */  addu  $a1, $a1, $a3
/* B85320 8010E180 3C048015 */  lui   $a0, %hi(D_801547F4) # $a0, 0x8015
/* B85324 8010E184 248447F4 */  addiu $a0, %lo(D_801547F4) # addiu $a0, $a0, 0x47f4
/* B85328 8010E188 90A5F5A1 */  lbu   $a1, %lo(gSaveContext+0xf41)($a1)
/* B8532C 8010E18C 0C00084C */  jal   osSyncPrintf
/* B85330 8010E190 A7A70138 */   sh    $a3, 0x138($sp)
/* B85334 8010E194 97A70138 */  lhu   $a3, 0x138($sp)
/* B85338 8010E198 24E70001 */  addiu $a3, $a3, 1
/* B8533C 8010E19C 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B85340 8010E1A0 28E10360 */  slti  $at, $a3, 0x360
/* B85344 8010E1A4 1420FFF4 */  bnez  $at, .L8010E178
/* B85348 8010E1A8 00000000 */   nop   
/* B8534C 8010E1AC 3C048015 */  lui   $a0, %hi(D_801547FC) # $a0, 0x8015
/* B85350 8010E1B0 0C00084C */  jal   osSyncPrintf
/* B85354 8010E1B4 248447FC */   addiu $a0, %lo(D_801547FC) # addiu $a0, $a0, 0x47fc
/* B85358 8010E1B8 3C048015 */  lui   $a0, %hi(D_80154800) # $a0, 0x8015
/* B8535C 8010E1BC 0C00084C */  jal   osSyncPrintf
/* B85360 8010E1C0 24844800 */   addiu $a0, %lo(D_80154800) # addiu $a0, $a0, 0x4800
/* B85364 8010E1C4 02402025 */  move  $a0, $s2
.L8010E1C8:
/* B85368 8010E1C8 0C0421AC */  jal   func_801086B0
/* B8536C 8010E1CC 27A50140 */   addiu $a1, $sp, 0x140
/* B85370 8010E1D0 100002A7 */  b     .L8010EC70
/* B85374 8010E1D4 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E1D8
/* B85378 8010E1D8 0C03B8FE */  jal   func_800EE3F8
/* B8537C 8010E1DC 00000000 */   nop   
/* B85380 8010E1E0 26217FFF */  addiu $at, $s1, 0x7fff
/* B85384 8010E1E4 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85388 8010E1E8 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B8538C 8010E1EC 90E30002 */  lbu   $v1, 2($a3)
/* B85390 8010E1F0 10600033 */  beqz  $v1, .L8010E2C0
/* B85394 8010E1F4 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85398 8010E1F8 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B8539C 8010E1FC 85050000 */  lh    $a1, ($t0)
/* B853A0 8010E200 24B80001 */  addiu $t8, $a1, 1
/* B853A4 8010E204 1478002E */  bne   $v1, $t8, .L8010E2C0
/* B853A8 8010E208 3C098015 */   lui   $t1, %hi(D_8014B2FC) # $t1, 0x8015
/* B853AC 8010E20C 2529B2FC */  addiu $t1, %lo(D_8014B2FC) # addiu $t1, $t1, -0x4d04
/* B853B0 8010E210 85230000 */  lh    $v1, ($t1)
/* B853B4 8010E214 28610008 */  slti  $at, $v1, 8
/* B853B8 8010E218 14200013 */  bnez  $at, .L8010E268
/* B853BC 8010E21C 2462FFF8 */   addiu $v0, $v1, -8
/* B853C0 8010E220 3C0A8015 */  lui   $t2, %hi(D_8015394C) # $t2, 0x8015
/* B853C4 8010E224 254A394C */  addiu $t2, %lo(D_8015394C) # addiu $t2, $t2, 0x394c
/* B853C8 8010E228 3042FFFF */  andi  $v0, $v0, 0xffff
/* B853CC 8010E22C 00003825 */  move  $a3, $zero
.L8010E230:
/* B853D0 8010E230 24E70001 */  addiu $a3, $a3, 1
/* B853D4 8010E234 0142C821 */  addu  $t9, $t2, $v0
/* B853D8 8010E238 932F0001 */  lbu   $t7, 1($t9)
/* B853DC 8010E23C 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B853E0 8010E240 01427021 */  addu  $t6, $t2, $v0
/* B853E4 8010E244 24420001 */  addiu $v0, $v0, 1
/* B853E8 8010E248 28E10008 */  slti  $at, $a3, 8
/* B853EC 8010E24C 3042FFFF */  andi  $v0, $v0, 0xffff
/* B853F0 8010E250 1420FFF7 */  bnez  $at, .L8010E230
/* B853F4 8010E254 A1CF0000 */   sb    $t7, ($t6)
/* B853F8 8010E258 2478FFFF */  addiu $t8, $v1, -1
/* B853FC 8010E25C A5380000 */  sh    $t8, ($t1)
/* B85400 8010E260 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85404 8010E264 85230000 */  lh    $v1, ($t1)
.L8010E268:
/* B85408 8010E268 90F90000 */  lbu   $t9, ($a3)
/* B8540C 8010E26C 3C0A8015 */  lui   $t2, %hi(D_8015394C) # $t2, 0x8015
/* B85410 8010E270 254A394C */  addiu $t2, %lo(D_8015394C) # addiu $t2, $t2, 0x394c
/* B85414 8010E274 01437821 */  addu  $t7, $t2, $v1
/* B85418 8010E278 246E0001 */  addiu $t6, $v1, 1
/* B8541C 8010E27C A1F90000 */  sb    $t9, ($t7)
/* B85420 8010E280 A52E0000 */  sh    $t6, ($t1)
/* B85424 8010E284 85390000 */  lh    $t9, ($t1)
/* B85428 8010E288 241800FF */  li    $t8, 255
/* B8542C 8010E28C 24AE0001 */  addiu $t6, $a1, 1
/* B85430 8010E290 01597821 */  addu  $t7, $t2, $t9
/* B85434 8010E294 A1F80000 */  sb    $t8, ($t7)
/* B85438 8010E298 A50E0000 */  sh    $t6, ($t0)
/* B8543C 8010E29C 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85440 8010E2A0 24010008 */  li    $at, 8
/* B85444 8010E2A4 90F90002 */  lbu   $t9, 2($a3)
/* B85448 8010E2A8 17210005 */  bne   $t9, $at, .L8010E2C0
/* B8544C 8010E2AC 00000000 */   nop   
/* B85450 8010E2B0 A5000000 */  sh    $zero, ($t0)
/* B85454 8010E2B4 85180000 */  lh    $t8, ($t0)
/* B85458 8010E2B8 A5380000 */  sh    $t8, ($t1)
/* B8545C 8010E2BC 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010E2C0:
/* B85460 8010E2C0 3C048015 */  lui   $a0, %hi(D_80154848) # $a0, 0x8015
/* B85464 8010E2C4 24844848 */  addiu $a0, %lo(D_80154848) # addiu $a0, $a0, 0x4848
/* B85468 8010E2C8 90E50001 */  lbu   $a1, 1($a3)
/* B8546C 8010E2CC 0C00084C */  jal   osSyncPrintf
/* B85470 8010E2D0 00003025 */   move  $a2, $zero
/* B85474 8010E2D4 920263E7 */  lbu   $v0, 0x63e7($s0)
/* B85478 8010E2D8 54400012 */  bnezl $v0, .L8010E324
/* B8547C 8010E2DC 2458FFFF */   addiu $t8, $v0, -1
/* B85480 8010E2E0 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B85484 8010E2E4 91EE0001 */  lbu   $t6, 1($t7)
/* B85488 8010E2E8 15C00010 */  bnez  $t6, .L8010E32C
/* B8548C 8010E2EC 3C048015 */   lui   $a0, %hi(D_80154858) # $a0, 0x8015
/* B85490 8010E2F0 0C00084C */  jal   osSyncPrintf
/* B85494 8010E2F4 24844858 */   addiu $a0, %lo(D_80154858) # addiu $a0, $a0, 0x4858
/* B85498 8010E2F8 0C03B616 */  jal   func_800ED858
/* B8549C 8010E2FC 00002025 */   move  $a0, $zero
/* B854A0 8010E300 3C010001 */  lui   $at, 1
/* B854A4 8010E304 00320821 */  addu  $at, $at, $s2
/* B854A8 8010E308 2419000F */  li    $t9, 15
/* B854AC 8010E30C A43904C6 */  sh    $t9, 0x4c6($at)
/* B854B0 8010E310 0C041B33 */  jal   func_80106CCC
/* B854B4 8010E314 02402025 */   move  $a0, $s2
/* B854B8 8010E318 10000004 */  b     .L8010E32C
/* B854BC 8010E31C 00000000 */   nop   
/* B854C0 8010E320 2458FFFF */  addiu $t8, $v0, -1
.L8010E324:
/* B854C4 8010E324 26217FFF */  addiu $at, $s1, 0x7fff
/* B854C8 8010E328 A03863E8 */  sb    $t8, 0x63e8($at)
.L8010E32C:
/* B854CC 8010E32C 10000250 */  b     .L8010EC70
/* B854D0 8010E330 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E334
/* B854D4 8010E334 0C03B85C */  jal   func_800EE170
/* B854D8 8010E338 24040002 */   li    $a0, 2
/* B854DC 8010E33C 0C03B616 */  jal   func_800ED858
/* B854E0 8010E340 24040001 */   li    $a0, 1
/* B854E4 8010E344 240F0025 */  li    $t7, 37
/* B854E8 8010E348 26217FFF */  addiu $at, $s1, 0x7fff
/* B854EC 8010E34C A02F6305 */  sb    $t7, 0x6305($at)
/* B854F0 8010E350 02402025 */  move  $a0, $s2
/* B854F4 8010E354 0C0421AC */  jal   func_801086B0
/* B854F8 8010E358 27A50140 */   addiu $a1, $sp, 0x140
/* B854FC 8010E35C 10000244 */  b     .L8010EC70
/* B85500 8010E360 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E364
/* B85504 8010E364 0C03B8F2 */  jal   func_800EE3C8
/* B85508 8010E368 00000000 */   nop   
/* B8550C 8010E36C 26217FFF */  addiu $at, $s1, 0x7fff
/* B85510 8010E370 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85514 8010E374 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85518 8010E378 90E30002 */  lbu   $v1, 2($a3)
/* B8551C 8010E37C 10600015 */  beqz  $v1, .L8010E3D4
/* B85520 8010E380 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85524 8010E384 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85528 8010E388 85050000 */  lh    $a1, ($t0)
/* B8552C 8010E38C 24AE0001 */  addiu $t6, $a1, 1
/* B85530 8010E390 546E0011 */  bnel  $v1, $t6, .L8010E3D8
/* B85534 8010E394 90E60001 */   lbu   $a2, 1($a3)
/* B85538 8010E398 90E20000 */  lbu   $v0, ($a3)
/* B8553C 8010E39C 3C018015 */  lui   $at, %hi(D_8015394C)
/* B85540 8010E3A0 00250821 */  addu  $at, $at, $a1
/* B85544 8010E3A4 A022394C */  sb    $v0, %lo(D_8015394C)($at)
/* B85548 8010E3A8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8554C 8010E3AC A0226411 */  sb    $v0, 0x6411($at)
/* B85550 8010E3B0 85190000 */  lh    $t9, ($t0)
/* B85554 8010E3B4 3C018015 */  lui   $at, %hi(D_8015394C)
/* B85558 8010E3B8 240F00FF */  li    $t7, 255
/* B8555C 8010E3BC 27380001 */  addiu $t8, $t9, 1
/* B85560 8010E3C0 A5180000 */  sh    $t8, ($t0)
/* B85564 8010E3C4 850E0000 */  lh    $t6, ($t0)
/* B85568 8010E3C8 002E0821 */  addu  $at, $at, $t6
/* B8556C 8010E3CC A02F394C */  sb    $t7, %lo(D_8015394C)($at)
/* B85570 8010E3D0 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010E3D4:
/* B85574 8010E3D4 90E60001 */  lbu   $a2, 1($a3)
.L8010E3D8:
/* B85578 8010E3D8 14C00039 */  bnez  $a2, .L8010E4C0
/* B8557C 8010E3DC 3C048015 */   lui   $a0, %hi(D_80154868) # $a0, 0x8015
/* B85580 8010E3E0 0C00084C */  jal   osSyncPrintf
/* B85584 8010E3E4 24844868 */   addiu $a0, %lo(D_80154868) # addiu $a0, $a0, 0x4868
/* B85588 8010E3E8 24190014 */  li    $t9, 20
/* B8558C 8010E3EC 26217FFF */  addiu $at, $s1, 0x7fff
/* B85590 8010E3F0 A03963E8 */  sb    $t9, 0x63e8($at)
/* B85594 8010E3F4 3C018016 */  lui   $at, %hi(gSaveContext+0x12c5) # $at, 0x8016
/* B85598 8010E3F8 24180001 */  li    $t8, 1
/* B8559C 8010E3FC A038F925 */  sb    $t8, %lo(gSaveContext+0x12c5)($at)
/* B855A0 8010E400 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B855A4 8010E404 26217FFF */  addiu $at, $s1, 0x7fff
/* B855A8 8010E408 240F0027 */  li    $t7, 39
/* B855AC 8010E40C 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B855B0 8010E410 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B855B4 8010E414 A02F6305 */  sb    $t7, 0x6305($at)
/* B855B8 8010E418 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B855BC 8010E41C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B855C0 8010E420 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B855C4 8010E424 AFAE0014 */  sw    $t6, 0x14($sp)
/* B855C8 8010E428 AFA70010 */  sw    $a3, 0x10($sp)
/* B855CC 8010E42C 24044807 */  li    $a0, 18439
/* B855D0 8010E430 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B855D4 8010E434 24060004 */   li    $a2, 4
/* B855D8 8010E438 3C048015 */  lui   $a0, %hi(D_80154878) # $a0, 0x8015
/* B855DC 8010E43C 0C00084C */  jal   osSyncPrintf
/* B855E0 8010E440 24844878 */   addiu $a0, %lo(D_80154878) # addiu $a0, $a0, 0x4878
/* B855E4 8010E444 3C048015 */  lui   $a0, %hi(D_80154880) # $a0, 0x8015
/* B855E8 8010E448 0C00084C */  jal   osSyncPrintf
/* B855EC 8010E44C 24844880 */   addiu $a0, %lo(D_80154880) # addiu $a0, $a0, 0x4880
/* B855F0 8010E450 3C048016 */  lui   $a0, %hi(gSaveContext+0x12c6) # $a0, 0x8016
/* B855F4 8010E454 3C058013 */  lui   $a1, %hi(gScarecrowSpawnSongPtr) # $a1, 0x8013
/* B855F8 8010E458 8CA51BE8 */  lw    $a1, %lo(gScarecrowSpawnSongPtr)($a1)
/* B855FC 8010E45C 2484F926 */  addiu $a0, %lo(gSaveContext+0x12c6) # addiu $a0, $a0, -0x6da
/* B85600 8010E460 0C01A508 */  jal   MemCopy
/* B85604 8010E464 24060080 */   li    $a2, 128
/* B85608 8010E468 00003825 */  move  $a3, $zero
.L8010E46C:
/* B8560C 8010E46C 3C058016 */  lui   $a1, %hi(gSaveContext+0x12c6)
/* B85610 8010E470 00A72821 */  addu  $a1, $a1, $a3
/* B85614 8010E474 3C048015 */  lui   $a0, %hi(D_801548C8) # $a0, 0x8015
/* B85618 8010E478 248448C8 */  addiu $a0, %lo(D_801548C8) # addiu $a0, $a0, 0x48c8
/* B8561C 8010E47C 90A5F926 */  lbu   $a1, %lo(gSaveContext+0x12c6)($a1)
/* B85620 8010E480 0C00084C */  jal   osSyncPrintf
/* B85624 8010E484 A7A70138 */   sh    $a3, 0x138($sp)
/* B85628 8010E488 97A70138 */  lhu   $a3, 0x138($sp)
/* B8562C 8010E48C 24E70001 */  addiu $a3, $a3, 1
/* B85630 8010E490 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B85634 8010E494 28E10080 */  slti  $at, $a3, 0x80
/* B85638 8010E498 1420FFF4 */  bnez  $at, .L8010E46C
/* B8563C 8010E49C 00000000 */   nop   
/* B85640 8010E4A0 3C048015 */  lui   $a0, %hi(D_801548D0) # $a0, 0x8015
/* B85644 8010E4A4 0C00084C */  jal   osSyncPrintf
/* B85648 8010E4A8 248448D0 */   addiu $a0, %lo(D_801548D0) # addiu $a0, $a0, 0x48d0
/* B8564C 8010E4AC 3C048015 */  lui   $a0, %hi(D_801548D4) # $a0, 0x8015
/* B85650 8010E4B0 0C00084C */  jal   osSyncPrintf
/* B85654 8010E4B4 248448D4 */   addiu $a0, %lo(D_801548D4) # addiu $a0, $a0, 0x48d4
/* B85658 8010E4B8 1000001E */  b     .L8010E534
/* B8565C 8010E4BC 02402025 */   move  $a0, $s2
.L8010E4C0:
/* B85660 8010E4C0 240100FF */  li    $at, 255
/* B85664 8010E4C4 10C10005 */  beq   $a2, $at, .L8010E4DC
/* B85668 8010E4C8 00000000 */   nop   
/* B8566C 8010E4CC 96590020 */  lhu   $t9, 0x20($s2)
/* B85670 8010E4D0 2401BFFF */  li    $at, -16385
/* B85674 8010E4D4 0321C027 */  nor   $t8, $t9, $at
/* B85678 8010E4D8 17000015 */  bnez  $t8, .L8010E530
.L8010E4DC:
/* B8567C 8010E4DC 3C048015 */   lui   $a0, %hi(D_8015491C) # $a0, 0x8015
/* B85680 8010E4E0 0C00084C */  jal   osSyncPrintf
/* B85684 8010E4E4 2484491C */   addiu $a0, %lo(D_8015491C) # addiu $a0, $a0, 0x491c
/* B85688 8010E4E8 0C03B85C */  jal   func_800EE170
/* B8568C 8010E4EC 00002025 */   move  $a0, $zero
/* B85690 8010E4F0 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85694 8010E4F4 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B85698 8010E4F8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B8569C 8010E4FC 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B856A0 8010E500 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B856A4 8010E504 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B856A8 8010E508 AFAF0014 */  sw    $t7, 0x14($sp)
/* B856AC 8010E50C AFA70010 */  sw    $a3, 0x10($sp)
/* B856B0 8010E510 24044827 */  li    $a0, 18471
/* B856B4 8010E514 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B856B8 8010E518 24060004 */   li    $a2, 4
/* B856BC 8010E51C 0C041B33 */  jal   func_80106CCC
/* B856C0 8010E520 02402025 */   move  $a0, $s2
/* B856C4 8010E524 240E0026 */  li    $t6, 38
/* B856C8 8010E528 26217FFF */  addiu $at, $s1, 0x7fff
/* B856CC 8010E52C A02E6305 */  sb    $t6, 0x6305($at)
.L8010E530:
/* B856D0 8010E530 02402025 */  move  $a0, $s2
.L8010E534:
/* B856D4 8010E534 0C0421AC */  jal   func_801086B0
/* B856D8 8010E538 27A50140 */   addiu $a1, $sp, 0x140
/* B856DC 8010E53C 100001CC */  b     .L8010EC70
/* B856E0 8010E540 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E544
/* B856E4 8010E544 3C048015 */  lui   $a0, %hi(D_8015493C) # $a0, 0x8015
/* B856E8 8010E548 0C00084C */  jal   osSyncPrintf
/* B856EC 8010E54C 2484493C */   addiu $a0, %lo(D_8015493C) # addiu $a0, $a0, 0x493c
/* B856F0 8010E550 0C03B616 */  jal   func_800ED858
/* B856F4 8010E554 00002025 */   move  $a0, $zero
/* B856F8 8010E558 02402025 */  move  $a0, $s2
/* B856FC 8010E55C 240540AD */  li    $a1, 16557
/* B85700 8010E560 0C042DA0 */  jal   func_8010B680
/* B85704 8010E564 00003025 */   move  $a2, $zero
/* B85708 8010E568 3C010001 */  lui   $at, 1
/* B8570C 8010E56C 00320821 */  addu  $at, $at, $s2
/* B85710 8010E570 24190004 */  li    $t9, 4
/* B85714 8010E574 A43904C6 */  sh    $t9, 0x4c6($at)
/* B85718 8010E578 100001BD */  b     .L8010EC70
/* B8571C 8010E57C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E580
/* B85720 8010E580 0C03B616 */  jal   func_800ED858
/* B85724 8010E584 24040001 */   li    $a0, 1
/* B85728 8010E588 0C03B616 */  jal   func_800ED858
/* B8572C 8010E58C 24040006 */   li    $a0, 6
/* B85730 8010E590 3C048016 */  lui   $a0, %hi(gSaveContext+0x3f) # $a0, 0x8016
/* B85734 8010E594 0C03B95F */  jal   func_800EE57C
/* B85738 8010E598 9084E69F */   lbu   $a0, %lo(gSaveContext+0x3f)($a0)
/* B8573C 8010E59C 0C03B8FE */  jal   func_800EE3F8
/* B85740 8010E5A0 00000000 */   nop   
/* B85744 8010E5A4 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85748 8010E5A8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8574C 8010E5AC AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85750 8010E5B0 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85754 8010E5B4 A5000000 */  sh    $zero, ($t0)
/* B85758 8010E5B8 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B8575C 8010E5BC 85180000 */  lh    $t8, ($t0)
/* B85760 8010E5C0 0C041A6C */  jal   func_801069B0
/* B85764 8010E5C4 A1F80002 */   sb    $t8, 2($t7)
/* B85768 8010E5C8 2404000E */  li    $a0, 14
/* B8576C 8010E5CC 0C03B64F */  jal   func_800ED93C
/* B85770 8010E5D0 24050001 */   li    $a1, 1
/* B85774 8010E5D4 26217FFF */  addiu $at, $s1, 0x7fff
/* B85778 8010E5D8 240E002A */  li    $t6, 42
/* B8577C 8010E5DC 24190002 */  li    $t9, 2
/* B85780 8010E5E0 A02E6305 */  sb    $t6, 0x6305($at)
/* B85784 8010E5E4 A03963E8 */  sb    $t9, 0x63e8($at)
/* B85788 8010E5E8 100001A1 */  b     .L8010EC70
/* B8578C 8010E5EC 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E5F0
/* B85790 8010E5F0 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85794 8010E5F4 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B85798 8010E5F8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B8579C 8010E5FC 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B857A0 8010E600 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B857A4 8010E604 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B857A8 8010E608 AFB80014 */  sw    $t8, 0x14($sp)
/* B857AC 8010E60C AFA70010 */  sw    $a3, 0x10($sp)
/* B857B0 8010E610 24044038 */  li    $a0, 16440
/* B857B4 8010E614 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B857B8 8010E618 24060004 */   li    $a2, 4
/* B857BC 8010E61C 0C03B8FE */  jal   func_800EE3F8
/* B857C0 8010E620 00000000 */   nop   
/* B857C4 8010E624 26217FFF */  addiu $at, $s1, 0x7fff
/* B857C8 8010E628 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B857CC 8010E62C 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B857D0 8010E630 90E30002 */  lbu   $v1, 2($a3)
/* B857D4 8010E634 10600012 */  beqz  $v1, .L8010E680
/* B857D8 8010E638 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B857DC 8010E63C 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B857E0 8010E640 85050000 */  lh    $a1, ($t0)
/* B857E4 8010E644 24AF0001 */  addiu $t7, $a1, 1
/* B857E8 8010E648 546F000E */  bnel  $v1, $t7, .L8010E684
/* B857EC 8010E64C 920263E7 */   lbu   $v0, 0x63e7($s0)
/* B857F0 8010E650 90EE0000 */  lbu   $t6, ($a3)
/* B857F4 8010E654 3C018015 */  lui   $at, %hi(D_8015394B)
/* B857F8 8010E658 00230821 */  addu  $at, $at, $v1
/* B857FC 8010E65C A02E394B */  sb    $t6, %lo(D_8015394B)($at)
/* B85800 8010E660 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B85804 8010E664 3C018015 */  lui   $at, %hi(D_8015394C)
/* B85808 8010E668 241900FF */  li    $t9, 255
/* B8580C 8010E66C 930F0002 */  lbu   $t7, 2($t8)
/* B85810 8010E670 24AE0001 */  addiu $t6, $a1, 1
/* B85814 8010E674 002F0821 */  addu  $at, $at, $t7
/* B85818 8010E678 A039394C */  sb    $t9, %lo(D_8015394C)($at)
/* B8581C 8010E67C A50E0000 */  sh    $t6, ($t0)
.L8010E680:
/* B85820 8010E680 920263E7 */  lbu   $v0, 0x63e7($s0)
.L8010E684:
/* B85824 8010E684 54400026 */  bnezl $v0, .L8010E720
/* B85828 8010E688 244EFFFF */   addiu $t6, $v0, -1
/* B8582C 8010E68C 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B85830 8010E690 93190001 */  lbu   $t9, 1($t8)
/* B85834 8010E694 17200024 */  bnez  $t9, .L8010E728
/* B85838 8010E698 00000000 */   nop   
/* B8583C 8010E69C 920F6304 */  lbu   $t7, 0x6304($s0)
/* B85840 8010E6A0 2401002A */  li    $at, 42
/* B85844 8010E6A4 15E1000D */  bne   $t7, $at, .L8010E6DC
/* B85848 8010E6A8 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B8584C 8010E6AC 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B85850 8010E6B0 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85854 8010E6B4 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B85858 8010E6B8 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B8585C 8010E6BC 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85860 8010E6C0 AFAE0014 */  sw    $t6, 0x14($sp)
/* B85864 8010E6C4 AFA70010 */  sw    $a3, 0x10($sp)
/* B85868 8010E6C8 24044836 */  li    $a0, 18486
/* B8586C 8010E6CC 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85870 8010E6D0 24060004 */   li    $a2, 4
/* B85874 8010E6D4 1000000D */  b     .L8010E70C
/* B85878 8010E6D8 92196304 */   lbu   $t9, 0x6304($s0)
.L8010E6DC:
/* B8587C 8010E6DC 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85880 8010E6E0 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B85884 8010E6E4 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85888 8010E6E8 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B8588C 8010E6EC 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85890 8010E6F0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85894 8010E6F4 AFB80014 */  sw    $t8, 0x14($sp)
/* B85898 8010E6F8 AFA70010 */  sw    $a3, 0x10($sp)
/* B8589C 8010E6FC 24044842 */  li    $a0, 18498
/* B858A0 8010E700 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B858A4 8010E704 24060004 */   li    $a2, 4
/* B858A8 8010E708 92196304 */  lbu   $t9, 0x6304($s0)
.L8010E70C:
/* B858AC 8010E70C 26217FFF */  addiu $at, $s1, 0x7fff
/* B858B0 8010E710 272F0001 */  addiu $t7, $t9, 1
/* B858B4 8010E714 10000004 */  b     .L8010E728
/* B858B8 8010E718 A02F6305 */   sb    $t7, 0x6305($at)
/* B858BC 8010E71C 244EFFFF */  addiu $t6, $v0, -1
.L8010E720:
/* B858C0 8010E720 26217FFF */  addiu $at, $s1, 0x7fff
/* B858C4 8010E724 A02E63E8 */  sb    $t6, 0x63e8($at)
.L8010E728:
/* B858C8 8010E728 10000151 */  b     .L8010EC70
/* B858CC 8010E72C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E730
/* B858D0 8010E730 0C03B8FE */  jal   func_800EE3F8
/* B858D4 8010E734 00000000 */   nop   
/* B858D8 8010E738 26217FFF */  addiu $at, $s1, 0x7fff
/* B858DC 8010E73C AC2262B9 */  sw    $v0, 0x62b9($at)
/* B858E0 8010E740 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B858E4 8010E744 90E30002 */  lbu   $v1, 2($a3)
/* B858E8 8010E748 10600012 */  beqz  $v1, .L8010E794
/* B858EC 8010E74C 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B858F0 8010E750 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B858F4 8010E754 85050000 */  lh    $a1, ($t0)
/* B858F8 8010E758 24B80001 */  addiu $t8, $a1, 1
/* B858FC 8010E75C 1478000D */  bne   $v1, $t8, .L8010E794
/* B85900 8010E760 00000000 */   nop   
/* B85904 8010E764 90F90000 */  lbu   $t9, ($a3)
/* B85908 8010E768 3C018015 */  lui   $at, %hi(D_8015394B)
/* B8590C 8010E76C 00230821 */  addu  $at, $at, $v1
/* B85910 8010E770 A039394B */  sb    $t9, %lo(D_8015394B)($at)
/* B85914 8010E774 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B85918 8010E778 3C018015 */  lui   $at, %hi(D_8015394C)
/* B8591C 8010E77C 240F00FF */  li    $t7, 255
/* B85920 8010E780 91D80002 */  lbu   $t8, 2($t6)
/* B85924 8010E784 24B90001 */  addiu $t9, $a1, 1
/* B85928 8010E788 00380821 */  addu  $at, $at, $t8
/* B8592C 8010E78C A02F394C */  sb    $t7, %lo(D_8015394C)($at)
/* B85930 8010E790 A5190000 */  sh    $t9, ($t0)
.L8010E794:
/* B85934 8010E794 10000136 */  b     .L8010EC70
/* B85938 8010E798 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E79C
/* B8593C 8010E79C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85940 8010E7A0 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B85944 8010E7A4 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85948 8010E7A8 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B8594C 8010E7AC 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85950 8010E7B0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85954 8010E7B4 AFAE0014 */  sw    $t6, 0x14($sp)
/* B85958 8010E7B8 AFA70010 */  sw    $a3, 0x10($sp)
/* B8595C 8010E7BC 24044038 */  li    $a0, 16440
/* B85960 8010E7C0 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85964 8010E7C4 24060004 */   li    $a2, 4
/* B85968 8010E7C8 0C03B8F5 */  jal   func_800EE3D4
/* B8596C 8010E7CC 00000000 */   nop   
/* B85970 8010E7D0 26217FFF */  addiu $at, $s1, 0x7fff
/* B85974 8010E7D4 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85978 8010E7D8 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B8597C 8010E7DC 90E30002 */  lbu   $v1, 2($a3)
/* B85980 8010E7E0 10600013 */  beqz  $v1, .L8010E830
/* B85984 8010E7E4 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85988 8010E7E8 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B8598C 8010E7EC 85050000 */  lh    $a1, ($t0)
/* B85990 8010E7F0 24AF0001 */  addiu $t7, $a1, 1
/* B85994 8010E7F4 546F000F */  bnel  $v1, $t7, .L8010E834
/* B85998 8010E7F8 90E60001 */   lbu   $a2, 1($a3)
/* B8599C 8010E7FC 90F80000 */  lbu   $t8, ($a3)
/* B859A0 8010E800 3C018015 */  lui   $at, %hi(D_8015394B)
/* B859A4 8010E804 00230821 */  addu  $at, $at, $v1
/* B859A8 8010E808 A038394B */  sb    $t8, %lo(D_8015394B)($at)
/* B859AC 8010E80C 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B859B0 8010E810 3C018015 */  lui   $at, %hi(D_8015394C)
/* B859B4 8010E814 241900FF */  li    $t9, 255
/* B859B8 8010E818 91CF0002 */  lbu   $t7, 2($t6)
/* B859BC 8010E81C 24B80001 */  addiu $t8, $a1, 1
/* B859C0 8010E820 002F0821 */  addu  $at, $at, $t7
/* B859C4 8010E824 A039394C */  sb    $t9, %lo(D_8015394C)($at)
/* B859C8 8010E828 A5180000 */  sh    $t8, ($t0)
/* B859CC 8010E82C 8E0762B8 */  lw    $a3, 0x62b8($s0)
.L8010E830:
/* B859D0 8010E830 90E60001 */  lbu   $a2, 1($a3)
.L8010E834:
/* B859D4 8010E834 240100FF */  li    $at, 255
/* B859D8 8010E838 14C10018 */  bne   $a2, $at, .L8010E89C
/* B859DC 8010E83C 3C048015 */   lui   $a0, %hi(D_8015494C) # $a0, 0x8015
/* B859E0 8010E840 0C00084C */  jal   osSyncPrintf
/* B859E4 8010E844 2484494C */   addiu $a0, %lo(D_8015494C) # addiu $a0, $a0, 0x494c
/* B859E8 8010E848 0C03B616 */  jal   func_800ED858
/* B859EC 8010E84C 00002025 */   move  $a0, $zero
/* B859F0 8010E850 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B859F4 8010E854 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B859F8 8010E858 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B859FC 8010E85C 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B85A00 8010E860 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85A04 8010E864 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85A08 8010E868 AFAE0014 */  sw    $t6, 0x14($sp)
/* B85A0C 8010E86C AFA70010 */  sw    $a3, 0x10($sp)
/* B85A10 8010E870 24044827 */  li    $a0, 18471
/* B85A14 8010E874 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85A18 8010E878 24060004 */   li    $a2, 4
/* B85A1C 8010E87C 2419000A */  li    $t9, 10
/* B85A20 8010E880 26217FFF */  addiu $at, $s1, 0x7fff
/* B85A24 8010E884 A03963E8 */  sb    $t9, 0x63e8($at)
/* B85A28 8010E888 3C010001 */  lui   $at, 1
/* B85A2C 8010E88C 00320821 */  addu  $at, $at, $s2
/* B85A30 8010E890 240F0003 */  li    $t7, 3
/* B85A34 8010E894 10000016 */  b     .L8010E8F0
/* B85A38 8010E898 A42F04C6 */   sh    $t7, 0x4c6($at)
.L8010E89C:
/* B85A3C 8010E89C 2401000D */  li    $at, 13
/* B85A40 8010E8A0 14C10013 */  bne   $a2, $at, .L8010E8F0
/* B85A44 8010E8A4 3C048015 */   lui   $a0, %hi(D_80154968) # $a0, 0x8015
/* B85A48 8010E8A8 0C00084C */  jal   osSyncPrintf
/* B85A4C 8010E8AC 24844968 */   addiu $a0, %lo(D_80154968) # addiu $a0, $a0, 0x4968
/* B85A50 8010E8B0 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85A54 8010E8B4 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B85A58 8010E8B8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85A5C 8010E8BC 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B85A60 8010E8C0 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85A64 8010E8C4 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85A68 8010E8C8 AFB80014 */  sw    $t8, 0x14($sp)
/* B85A6C 8010E8CC AFA70010 */  sw    $a3, 0x10($sp)
/* B85A70 8010E8D0 24044824 */  li    $a0, 18468
/* B85A74 8010E8D4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85A78 8010E8D8 24060004 */   li    $a2, 4
/* B85A7C 8010E8DC 26217FFF */  addiu $at, $s1, 0x7fff
/* B85A80 8010E8E0 240E002F */  li    $t6, 47
/* B85A84 8010E8E4 2419001E */  li    $t9, 30
/* B85A88 8010E8E8 A02E6305 */  sb    $t6, 0x6305($at)
/* B85A8C 8010E8EC A03963E8 */  sb    $t9, 0x63e8($at)
.L8010E8F0:
/* B85A90 8010E8F0 02402025 */  move  $a0, $s2
/* B85A94 8010E8F4 0C0421AC */  jal   func_801086B0
/* B85A98 8010E8F8 27A50140 */   addiu $a1, $sp, 0x140
/* B85A9C 8010E8FC 100000DC */  b     .L8010EC70
/* B85AA0 8010E900 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010E904
/* B85AA4 8010E904 0C03B8F5 */  jal   func_800EE3D4
/* B85AA8 8010E908 00000000 */   nop   
/* B85AAC 8010E90C 26217FFF */  addiu $at, $s1, 0x7fff
/* B85AB0 8010E910 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85AB4 8010E914 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85AB8 8010E918 90E30002 */  lbu   $v1, 2($a3)
/* B85ABC 8010E91C 10600012 */  beqz  $v1, .L8010E968
/* B85AC0 8010E920 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85AC4 8010E924 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85AC8 8010E928 85050000 */  lh    $a1, ($t0)
/* B85ACC 8010E92C 24AF0001 */  addiu $t7, $a1, 1
/* B85AD0 8010E930 546F000E */  bnel  $v1, $t7, .L8010E96C
/* B85AD4 8010E934 921963E7 */   lbu   $t9, 0x63e7($s0)
/* B85AD8 8010E938 90F80000 */  lbu   $t8, ($a3)
/* B85ADC 8010E93C 3C018015 */  lui   $at, %hi(D_8015394B)
/* B85AE0 8010E940 00230821 */  addu  $at, $at, $v1
/* B85AE4 8010E944 A038394B */  sb    $t8, %lo(D_8015394B)($at)
/* B85AE8 8010E948 8E1962B8 */  lw    $t9, 0x62b8($s0)
/* B85AEC 8010E94C 3C018015 */  lui   $at, %hi(D_8015394C)
/* B85AF0 8010E950 240E00FF */  li    $t6, 255
/* B85AF4 8010E954 932F0002 */  lbu   $t7, 2($t9)
/* B85AF8 8010E958 24B80001 */  addiu $t8, $a1, 1
/* B85AFC 8010E95C 002F0821 */  addu  $at, $at, $t7
/* B85B00 8010E960 A02E394C */  sb    $t6, %lo(D_8015394C)($at)
/* B85B04 8010E964 A5180000 */  sh    $t8, ($t0)
.L8010E968:
/* B85B08 8010E968 921963E7 */  lbu   $t9, 0x63e7($s0)
.L8010E96C:
/* B85B0C 8010E96C 26217FFF */  addiu $at, $s1, 0x7fff
/* B85B10 8010E970 272EFFFF */  addiu $t6, $t9, -1
/* B85B14 8010E974 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B85B18 8010E978 920F63E7 */  lbu   $t7, 0x63e7($s0)
/* B85B1C 8010E97C 55E00024 */  bnezl $t7, .L8010EA10
/* B85B20 8010E980 02402025 */   move  $a0, $s2
/* B85B24 8010E984 0C03B97B */  jal   func_800EE5EC
/* B85B28 8010E988 00000000 */   nop   
/* B85B2C 8010E98C 24010001 */  li    $at, 1
/* B85B30 8010E990 1041001A */  beq   $v0, $at, .L8010E9FC
/* B85B34 8010E994 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B85B38 8010E998 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B85B3C 8010E99C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B85B40 8010E9A0 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B85B44 8010E9A4 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B85B48 8010E9A8 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B85B4C 8010E9AC AFB80014 */  sw    $t8, 0x14($sp)
/* B85B50 8010E9B0 AFA70010 */  sw    $a3, 0x10($sp)
/* B85B54 8010E9B4 24044836 */  li    $a0, 18486
/* B85B58 8010E9B8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B85B5C 8010E9BC 24060004 */   li    $a2, 4
/* B85B60 8010E9C0 0C03B8F5 */  jal   func_800EE3D4
/* B85B64 8010E9C4 00000000 */   nop   
/* B85B68 8010E9C8 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85B6C 8010E9CC 26217FFF */  addiu $at, $s1, 0x7fff
/* B85B70 8010E9D0 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85B74 8010E9D4 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85B78 8010E9D8 A5000000 */  sh    $zero, ($t0)
/* B85B7C 8010E9DC 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B85B80 8010E9E0 85190000 */  lh    $t9, ($t0)
/* B85B84 8010E9E4 0C041A6C */  jal   func_801069B0
/* B85B88 8010E9E8 A1D90002 */   sb    $t9, 2($t6)
/* B85B8C 8010E9EC 240F0030 */  li    $t7, 48
/* B85B90 8010E9F0 26217FFF */  addiu $at, $s1, 0x7fff
/* B85B94 8010E9F4 10000005 */  b     .L8010EA0C
/* B85B98 8010E9F8 A02F6305 */   sb    $t7, 0x6305($at)
.L8010E9FC:
/* B85B9C 8010E9FC 3C010001 */  lui   $at, 1
/* B85BA0 8010EA00 00320821 */  addu  $at, $at, $s2
/* B85BA4 8010EA04 2418000F */  li    $t8, 15
/* B85BA8 8010EA08 A43804C6 */  sh    $t8, 0x4c6($at)
.L8010EA0C:
/* B85BAC 8010EA0C 02402025 */  move  $a0, $s2
.L8010EA10:
/* B85BB0 8010EA10 0C0421AC */  jal   func_801086B0
/* B85BB4 8010EA14 27A50140 */   addiu $a1, $sp, 0x140
/* B85BB8 8010EA18 10000095 */  b     .L8010EC70
/* B85BBC 8010EA1C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010EA20
/* B85BC0 8010EA20 0C03E3FD */  jal   func_800F8FF4
/* B85BC4 8010EA24 24044836 */   li    $a0, 18486
/* B85BC8 8010EA28 1440000F */  bnez  $v0, .L8010EA68
/* B85BCC 8010EA2C 00000000 */   nop   
/* B85BD0 8010EA30 0C03B8FE */  jal   func_800EE3F8
/* B85BD4 8010EA34 00000000 */   nop   
/* B85BD8 8010EA38 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85BDC 8010EA3C 26217FFF */  addiu $at, $s1, 0x7fff
/* B85BE0 8010EA40 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85BE4 8010EA44 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85BE8 8010EA48 A5000000 */  sh    $zero, ($t0)
/* B85BEC 8010EA4C 8E0E62B8 */  lw    $t6, 0x62b8($s0)
/* B85BF0 8010EA50 85190000 */  lh    $t9, ($t0)
/* B85BF4 8010EA54 0C041A6C */  jal   func_801069B0
/* B85BF8 8010EA58 A1D90002 */   sb    $t9, 2($t6)
/* B85BFC 8010EA5C 2404000E */  li    $a0, 14
/* B85C00 8010EA60 0C03B64F */  jal   func_800ED93C
/* B85C04 8010EA64 24050001 */   li    $a1, 1
.L8010EA68:
/* B85C08 8010EA68 10000081 */  b     .L8010EC70
/* B85C0C 8010EA6C 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010EA70
/* B85C10 8010EA70 0C03B616 */  jal   func_800ED858
/* B85C14 8010EA74 24040001 */   li    $a0, 1
/* B85C18 8010EA78 0C03B8F5 */  jal   func_800EE3D4
/* B85C1C 8010EA7C 00000000 */   nop   
/* B85C20 8010EA80 3C088015 */  lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85C24 8010EA84 26217FFF */  addiu $at, $s1, 0x7fff
/* B85C28 8010EA88 AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85C2C 8010EA8C 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85C30 8010EA90 A5000000 */  sh    $zero, ($t0)
/* B85C34 8010EA94 8E1862B8 */  lw    $t8, 0x62b8($s0)
/* B85C38 8010EA98 850F0000 */  lh    $t7, ($t0)
/* B85C3C 8010EA9C 3C010001 */  lui   $at, 1
/* B85C40 8010EAA0 00320821 */  addu  $at, $at, $s2
/* B85C44 8010EAA4 24190001 */  li    $t9, 1
/* B85C48 8010EAA8 A30F0002 */  sb    $t7, 2($t8)
/* B85C4C 8010EAAC 0C041A6C */  jal   func_801069B0
/* B85C50 8010EAB0 A43904C6 */   sh    $t9, 0x4c6($at)
/* B85C54 8010EAB4 3C048015 */  lui   $a0, %hi(D_8014B31C) # $a0, 0x8015
/* B85C58 8010EAB8 9484B31C */  lhu   $a0, %lo(D_8014B31C)($a0)
/* B85C5C 8010EABC 3401C000 */  li    $at, 49152
/* B85C60 8010EAC0 00812021 */  addu  $a0, $a0, $at
/* B85C64 8010EAC4 0C03B301 */  jal   func_800ECC04
/* B85C68 8010EAC8 3084FFFF */   andi  $a0, $a0, 0xffff
/* B85C6C 8010EACC 240E0032 */  li    $t6, 50
/* B85C70 8010EAD0 26217FFF */  addiu $at, $s1, 0x7fff
/* B85C74 8010EAD4 A02E6305 */  sb    $t6, 0x6305($at)
/* B85C78 8010EAD8 10000065 */  b     .L8010EC70
/* B85C7C 8010EADC 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010EAE0
/* B85C80 8010EAE0 0C03B8F5 */  jal   func_800EE3D4
/* B85C84 8010EAE4 00000000 */   nop   
/* B85C88 8010EAE8 26217FFF */  addiu $at, $s1, 0x7fff
/* B85C8C 8010EAEC AC2262B9 */  sw    $v0, 0x62b9($at)
/* B85C90 8010EAF0 8E0762B8 */  lw    $a3, 0x62b8($s0)
/* B85C94 8010EAF4 90E30002 */  lbu   $v1, 2($a3)
/* B85C98 8010EAF8 10600011 */  beqz  $v1, .L8010EB40
/* B85C9C 8010EAFC 3C088015 */   lui   $t0, %hi(D_8014B2F8) # $t0, 0x8015
/* B85CA0 8010EB00 2508B2F8 */  addiu $t0, %lo(D_8014B2F8) # addiu $t0, $t0, -0x4d08
/* B85CA4 8010EB04 850F0000 */  lh    $t7, ($t0)
/* B85CA8 8010EB08 25F80001 */  addiu $t8, $t7, 1
/* B85CAC 8010EB0C 5478000D */  bnel  $v1, $t8, .L8010EB44
/* B85CB0 8010EB10 92026304 */   lbu   $v0, 0x6304($s0)
/* B85CB4 8010EB14 90F90000 */  lbu   $t9, ($a3)
/* B85CB8 8010EB18 26217FFF */  addiu $at, $s1, 0x7fff
/* B85CBC 8010EB1C A0396411 */  sb    $t9, 0x6411($at)
/* B85CC0 8010EB20 A5000000 */  sh    $zero, ($t0)
/* B85CC4 8010EB24 8E0F62B8 */  lw    $t7, 0x62b8($s0)
/* B85CC8 8010EB28 850E0000 */  lh    $t6, ($t0)
/* B85CCC 8010EB2C 0C041A6C */  jal   func_801069B0
/* B85CD0 8010EB30 A1EE0002 */   sb    $t6, 2($t7)
/* B85CD4 8010EB34 24180033 */  li    $t8, 51
/* B85CD8 8010EB38 26217FFF */  addiu $at, $s1, 0x7fff
/* B85CDC 8010EB3C A0386305 */  sb    $t8, 0x6305($at)
.L8010EB40:
/* B85CE0 8010EB40 92026304 */  lbu   $v0, 0x6304($s0)
.L8010EB44:
glabel L8010EB44
/* B85CE4 8010EB44 1000004B */  b     .L8010EC74
/* B85CE8 8010EB48 2841000C */   slti  $at, $v0, 0xc
glabel L8010EB4C
/* B85CEC 8010EB4C 02402025 */  move  $a0, $s2
/* B85CF0 8010EB50 0C0421AC */  jal   func_801086B0
/* B85CF4 8010EB54 27A50140 */   addiu $a1, $sp, 0x140
/* B85CF8 8010EB58 920263E4 */  lbu   $v0, 0x63e4($s0)
/* B85CFC 8010EB5C 24010010 */  li    $at, 16
/* B85D00 8010EB60 1041000B */  beq   $v0, $at, .L8010EB90
/* B85D04 8010EB64 24010020 */   li    $at, 32
/* B85D08 8010EB68 10410013 */  beq   $v0, $at, .L8010EBB8
/* B85D0C 8010EB6C 24010040 */   li    $at, 64
/* B85D10 8010EB70 1041001B */  beq   $v0, $at, .L8010EBE0
/* B85D14 8010EB74 24010050 */   li    $at, 80
/* B85D18 8010EB78 1041002D */  beq   $v0, $at, .L8010EC30
/* B85D1C 8010EB7C 24010060 */   li    $at, 96
/* B85D20 8010EB80 10410033 */  beq   $v0, $at, .L8010EC50
/* B85D24 8010EB84 00000000 */   nop   
/* B85D28 8010EB88 10000029 */  b     .L8010EC30
/* B85D2C 8010EB8C 00000000 */   nop   
.L8010EB90:
/* B85D30 8010EB90 02402025 */  move  $a0, $s2
/* B85D34 8010EB94 0C041B50 */  jal   func_80106D40
/* B85D38 8010EB98 24050001 */   li    $a1, 1
/* B85D3C 8010EB9C 02402025 */  move  $a0, $s2
/* B85D40 8010EBA0 27A50140 */  addiu $a1, $sp, 0x140
/* B85D44 8010EBA4 860663D8 */  lh    $a2, 0x63d8($s0)
/* B85D48 8010EBA8 0C041E60 */  jal   func_80107980
/* B85D4C 8010EBAC 860763DA */   lh    $a3, 0x63da($s0)
/* B85D50 8010EBB0 10000027 */  b     .L8010EC50
/* B85D54 8010EBB4 00000000 */   nop   
.L8010EBB8:
/* B85D58 8010EBB8 02402025 */  move  $a0, $s2
/* B85D5C 8010EBBC 0C041B50 */  jal   func_80106D40
/* B85D60 8010EBC0 24050002 */   li    $a1, 2
/* B85D64 8010EBC4 02402025 */  move  $a0, $s2
/* B85D68 8010EBC8 27A50140 */  addiu $a1, $sp, 0x140
/* B85D6C 8010EBCC 860663D8 */  lh    $a2, 0x63d8($s0)
/* B85D70 8010EBD0 0C041E60 */  jal   func_80107980
/* B85D74 8010EBD4 860763DA */   lh    $a3, 0x63da($s0)
/* B85D78 8010EBD8 1000001D */  b     .L8010EC50
/* B85D7C 8010EBDC 00000000 */   nop   
.L8010EBE0:
/* B85D80 8010EBE0 960262F8 */  lhu   $v0, 0x62f8($s0)
/* B85D84 8010EBE4 2841006D */  slti  $at, $v0, 0x6d
/* B85D88 8010EBE8 1420000F */  bnez  $at, .L8010EC28
/* B85D8C 8010EBEC 28410073 */   slti  $at, $v0, 0x73
/* B85D90 8010EBF0 1020000D */  beqz  $at, .L8010EC28
/* B85D94 8010EBF4 00000000 */   nop   
/* B85D98 8010EBF8 921963E7 */  lbu   $t9, 0x63e7($s0)
/* B85D9C 8010EBFC 26217FFF */  addiu $at, $s1, 0x7fff
/* B85DA0 8010EC00 272E0001 */  addiu $t6, $t9, 1
/* B85DA4 8010EC04 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B85DA8 8010EC08 920F63E7 */  lbu   $t7, 0x63e7($s0)
/* B85DAC 8010EC0C 29E1001F */  slti  $at, $t7, 0x1f
/* B85DB0 8010EC10 14200005 */  bnez  $at, .L8010EC28
/* B85DB4 8010EC14 26217FFF */   addiu $at, $s1, 0x7fff
/* B85DB8 8010EC18 24180002 */  li    $t8, 2
/* B85DBC 8010EC1C 24190036 */  li    $t9, 54
/* B85DC0 8010EC20 A03863E8 */  sb    $t8, 0x63e8($at)
/* B85DC4 8010EC24 A0396305 */  sb    $t9, 0x6305($at)
.L8010EC28:
/* B85DC8 8010EC28 10000009 */  b     .L8010EC50
/* B85DCC 8010EC2C 00000000 */   nop   
.L8010EC30:
/* B85DD0 8010EC30 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B85DD4 8010EC34 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B85DD8 8010EC38 8D280000 */  lw    $t0, ($t1)
/* B85DDC 8010EC3C 02402025 */  move  $a0, $s2
/* B85DE0 8010EC40 27A50140 */  addiu $a1, $sp, 0x140
/* B85DE4 8010EC44 85060B14 */  lh    $a2, 0xb14($t0)
/* B85DE8 8010EC48 0C041E60 */  jal   func_80107980
/* B85DEC 8010EC4C 85070B16 */   lh    $a3, 0xb16($t0)
.L8010EC50:
/* B85DF0 8010EC50 10000007 */  b     .L8010EC70
/* B85DF4 8010EC54 92026304 */   lbu   $v0, 0x6304($s0)
glabel L8010EC58
/* B85DF8 8010EC58 10000006 */  b     .L8010EC74
/* B85DFC 8010EC5C 2841000C */   slti  $at, $v0, 0xc
.L8010EC60:
glabel L8010EC60
/* B85E00 8010EC60 240E0006 */  li    $t6, 6
/* B85E04 8010EC64 26217FFF */  addiu $at, $s1, 0x7fff
/* B85E08 8010EC68 A02E6305 */  sb    $t6, 0x6305($at)
/* B85E0C 8010EC6C 92026304 */  lbu   $v0, 0x6304($s0)
.L8010EC70:
/* B85E10 8010EC70 2841000C */  slti  $at, $v0, 0xc
.L8010EC74:
/* B85E14 8010EC74 1420018C */  bnez  $at, .L8010F2A8
/* B85E18 8010EC78 28410034 */   slti  $at, $v0, 0x34
/* B85E1C 8010EC7C 5020018B */  beql  $at, $zero, .L8010F2AC
/* B85E20 8010EC80 8FB80140 */   lw    $t8, 0x140($sp)
/* B85E24 8010EC84 960263F0 */  lhu   $v0, 0x63f0($s0)
/* B85E28 8010EC88 24010001 */  li    $at, 1
/* B85E2C 8010EC8C 10410186 */  beq   $v0, $at, .L8010F2A8
/* B85E30 8010EC90 24010030 */   li    $at, 48
/* B85E34 8010EC94 50410185 */  beql  $v0, $at, .L8010F2AC
/* B85E38 8010EC98 8FB80140 */   lw    $t8, 0x140($sp)
/* B85E3C 8010EC9C 0C02515F */  jal   func_8009457C
/* B85E40 8010ECA0 27A40140 */   addiu $a0, $sp, 0x140
/* B85E44 8010ECA4 8FAF0140 */  lw    $t7, 0x140($sp)
/* B85E48 8010ECA8 3C19FC30 */  lui   $t9, (0xFC309661 >> 16) # lui $t9, 0xfc30
/* B85E4C 8010ECAC 3C0E552E */  lui   $t6, (0x552EFF7F >> 16) # lui $t6, 0x552e
/* B85E50 8010ECB0 25F80008 */  addiu $t8, $t7, 8
/* B85E54 8010ECB4 AFB80140 */  sw    $t8, 0x140($sp)
/* B85E58 8010ECB8 35CEFF7F */  ori   $t6, (0x552EFF7F & 0xFFFF) # ori $t6, $t6, 0xff7f
/* B85E5C 8010ECBC 37399661 */  ori   $t9, (0xFC309661 & 0xFFFF) # ori $t9, $t9, 0x9661
/* B85E60 8010ECC0 ADF90000 */  sw    $t9, ($t7)
/* B85E64 8010ECC4 ADEE0004 */  sw    $t6, 4($t7)
/* B85E68 8010ECC8 92026304 */  lbu   $v0, 0x6304($s0)
/* B85E6C 8010ECCC 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B85E70 8010ECD0 2401001B */  li    $at, 27
/* B85E74 8010ECD4 14410093 */  bne   $v0, $at, .L8010EF24
/* B85E78 8010ECD8 2529FA90 */   addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B85E7C 8010ECDC 960463F0 */  lhu   $a0, 0x63f0($s0)
/* B85E80 8010ECE0 3C188013 */  lui   $t8, %hi(D_80131C00) # $t8, 0x8013
/* B85E84 8010ECE4 27181C00 */  addiu $t8, %lo(D_80131C00) # addiu $t8, $t8, 0x1c00
/* B85E88 8010ECE8 2484FFF1 */  addiu $a0, $a0, -0xf
/* B85E8C 8010ECEC 00042400 */  sll   $a0, $a0, 0x10
/* B85E90 8010ECF0 00042403 */  sra   $a0, $a0, 0x10
/* B85E94 8010ECF4 000478C0 */  sll   $t7, $a0, 3
/* B85E98 8010ECF8 01E47821 */  addu  $t7, $t7, $a0
/* B85E9C 8010ECFC 01F8C821 */  addu  $t9, $t7, $t8
/* B85EA0 8010ED00 93280000 */  lbu   $t0, ($t9)
/* B85EA4 8010ED04 8D2E0000 */  lw    $t6, ($t1)
/* B85EA8 8010ED08 00003825 */  move  $a3, $zero
/* B85EAC 8010ED0C 19000085 */  blez  $t0, .L8010EF24
/* B85EB0 8010ED10 95C50F4C */   lhu   $a1, 0xf4c($t6)
/* B85EB4 8010ED14 000478C0 */  sll   $t7, $a0, 3
/* B85EB8 8010ED18 01E47821 */  addu  $t7, $t7, $a0
/* B85EBC 8010ED1C 3C0D0A0A */  lui   $t5, (0x0A0A0A00 >> 16) # lui $t5, 0xa0a
/* B85EC0 8010ED20 3C0C9696 */  lui   $t4, (0x96969696 >> 16) # lui $t4, 0x9696
/* B85EC4 8010ED24 358C9696 */  ori   $t4, (0x96969696 & 0xFFFF) # ori $t4, $t4, 0x9696
/* B85EC8 8010ED28 35AD0A00 */  ori   $t5, (0x0A0A0A00 & 0xFFFF) # ori $t5, $t5, 0xa00
/* B85ECC 8010ED2C 01F8F821 */  addu  $ra, $t7, $t8
/* B85ED0 8010ED30 3C11FD70 */  lui   $s1, 0xfd70
/* B85ED4 8010ED34 3C0BFB00 */  lui   $t3, 0xfb00
/* B85ED8 8010ED38 3C0AFA00 */  lui   $t2, 0xfa00
/* B85EDC 8010ED3C 3C06E700 */  lui   $a2, 0xe700
.L8010ED40:
/* B85EE0 8010ED40 8FB90140 */  lw    $t9, 0x140($sp)
/* B85EE4 8010ED44 03E72021 */  addu  $a0, $ra, $a3
/* B85EE8 8010ED48 3C01E400 */  lui   $at, 0xe400
/* B85EEC 8010ED4C 272E0008 */  addiu $t6, $t9, 8
/* B85EF0 8010ED50 AFAE0140 */  sw    $t6, 0x140($sp)
/* B85EF4 8010ED54 AF200004 */  sw    $zero, 4($t9)
/* B85EF8 8010ED58 AF260000 */  sw    $a2, ($t9)
/* B85EFC 8010ED5C 8FAF0140 */  lw    $t7, 0x140($sp)
/* B85F00 8010ED60 24E70001 */  addiu $a3, $a3, 1
/* B85F04 8010ED64 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B85F08 8010ED68 25F80008 */  addiu $t8, $t7, 8
/* B85F0C 8010ED6C AFB80140 */  sw    $t8, 0x140($sp)
/* B85F10 8010ED70 ADEC0004 */  sw    $t4, 4($t7)
/* B85F14 8010ED74 ADEA0000 */  sw    $t2, ($t7)
/* B85F18 8010ED78 8FB90140 */  lw    $t9, 0x140($sp)
/* B85F1C 8010ED7C 3C0F8015 */  lui   $t7, %hi(D_80153C94)
/* B85F20 8010ED80 272E0008 */  addiu $t6, $t9, 8
/* B85F24 8010ED84 AFAE0140 */  sw    $t6, 0x140($sp)
/* B85F28 8010ED88 AF2D0004 */  sw    $t5, 4($t9)
/* B85F2C 8010ED8C AF2B0000 */  sw    $t3, ($t9)
/* B85F30 8010ED90 8FA20140 */  lw    $v0, 0x140($sp)
/* B85F34 8010ED94 24580008 */  addiu $t8, $v0, 8
/* B85F38 8010ED98 AFB80140 */  sw    $t8, 0x140($sp)
/* B85F3C 8010ED9C AC510000 */  sw    $s1, ($v0)
/* B85F40 8010EDA0 90990001 */  lbu   $t9, 1($a0)
/* B85F44 8010EDA4 00197080 */  sll   $t6, $t9, 2
/* B85F48 8010EDA8 01EE7821 */  addu  $t7, $t7, $t6
/* B85F4C 8010EDAC 8DEF3C94 */  lw    $t7, %lo(D_80153C94)($t7)
/* B85F50 8010EDB0 3C0EF570 */  lui   $t6, 0xf570
/* B85F54 8010EDB4 AC4F0004 */  sw    $t7, 4($v0)
/* B85F58 8010EDB8 8FB80140 */  lw    $t8, 0x140($sp)
/* B85F5C 8010EDBC 3C0F0700 */  lui   $t7, 0x700
/* B85F60 8010EDC0 27190008 */  addiu $t9, $t8, 8
/* B85F64 8010EDC4 AFB90140 */  sw    $t9, 0x140($sp)
/* B85F68 8010EDC8 AF0F0004 */  sw    $t7, 4($t8)
/* B85F6C 8010EDCC AF0E0000 */  sw    $t6, ($t8)
/* B85F70 8010EDD0 8FB80140 */  lw    $t8, 0x140($sp)
/* B85F74 8010EDD4 3C0EE600 */  lui   $t6, 0xe600
/* B85F78 8010EDD8 27190008 */  addiu $t9, $t8, 8
/* B85F7C 8010EDDC AFB90140 */  sw    $t9, 0x140($sp)
/* B85F80 8010EDE0 AF000004 */  sw    $zero, 4($t8)
/* B85F84 8010EDE4 AF0E0000 */  sw    $t6, ($t8)
/* B85F88 8010EDE8 8FAF0140 */  lw    $t7, 0x140($sp)
/* B85F8C 8010EDEC 3C0E0707 */  lui   $t6, (0x0707F400 >> 16) # lui $t6, 0x707
/* B85F90 8010EDF0 35CEF400 */  ori   $t6, (0x0707F400 & 0xFFFF) # ori $t6, $t6, 0xf400
/* B85F94 8010EDF4 25F80008 */  addiu $t8, $t7, 8
/* B85F98 8010EDF8 AFB80140 */  sw    $t8, 0x140($sp)
/* B85F9C 8010EDFC 3C19F300 */  lui   $t9, 0xf300
/* B85FA0 8010EE00 ADF90000 */  sw    $t9, ($t7)
/* B85FA4 8010EE04 ADEE0004 */  sw    $t6, 4($t7)
/* B85FA8 8010EE08 8FAF0140 */  lw    $t7, 0x140($sp)
/* B85FAC 8010EE0C 25F80008 */  addiu $t8, $t7, 8
/* B85FB0 8010EE10 AFB80140 */  sw    $t8, 0x140($sp)
/* B85FB4 8010EE14 ADE00004 */  sw    $zero, 4($t7)
/* B85FB8 8010EE18 ADE60000 */  sw    $a2, ($t7)
/* B85FBC 8010EE1C 8FB90140 */  lw    $t9, 0x140($sp)
/* B85FC0 8010EE20 3C0FF568 */  lui   $t7, (0xF5680400 >> 16) # lui $t7, 0xf568
/* B85FC4 8010EE24 35EF0400 */  ori   $t7, (0xF5680400 & 0xFFFF) # ori $t7, $t7, 0x400
/* B85FC8 8010EE28 272E0008 */  addiu $t6, $t9, 8
/* B85FCC 8010EE2C AFAE0140 */  sw    $t6, 0x140($sp)
/* B85FD0 8010EE30 AF200004 */  sw    $zero, 4($t9)
/* B85FD4 8010EE34 AF2F0000 */  sw    $t7, ($t9)
/* B85FD8 8010EE38 8FB80140 */  lw    $t8, 0x140($sp)
/* B85FDC 8010EE3C 3C0F0003 */  lui   $t7, (0x0003C03C >> 16) # lui $t7, 3
/* B85FE0 8010EE40 35EFC03C */  ori   $t7, (0x0003C03C & 0xFFFF) # ori $t7, $t7, 0xc03c
/* B85FE4 8010EE44 27190008 */  addiu $t9, $t8, 8
/* B85FE8 8010EE48 AFB90140 */  sw    $t9, 0x140($sp)
/* B85FEC 8010EE4C 3C0EF200 */  lui   $t6, 0xf200
/* B85FF0 8010EE50 AF0E0000 */  sw    $t6, ($t8)
/* B85FF4 8010EE54 AF0F0004 */  sw    $t7, 4($t8)
/* B85FF8 8010EE58 8FA20140 */  lw    $v0, 0x140($sp)
/* B85FFC 8010EE5C 908F0001 */  lbu   $t7, 1($a0)
/* B86000 8010EE60 8D2E0000 */  lw    $t6, ($t1)
/* B86004 8010EE64 24590008 */  addiu $t9, $v0, 8
/* B86008 8010EE68 AFB90140 */  sw    $t9, 0x140($sp)
/* B8600C 8010EE6C 000FC040 */  sll   $t8, $t7, 1
/* B86010 8010EE70 01D8C821 */  addu  $t9, $t6, $t8
/* B86014 8010EE74 872F0F6E */  lh    $t7, 0xf6e($t9)
/* B86018 8010EE78 25EE0010 */  addiu $t6, $t7, 0x10
/* B8601C 8010EE7C 000EC080 */  sll   $t8, $t6, 2
/* B86020 8010EE80 33190FFF */  andi  $t9, $t8, 0xfff
/* B86024 8010EE84 24AE0010 */  addiu $t6, $a1, 0x10
/* B86028 8010EE88 000EC080 */  sll   $t8, $t6, 2
/* B8602C 8010EE8C 03217825 */  or    $t7, $t9, $at
/* B86030 8010EE90 33190FFF */  andi  $t9, $t8, 0xfff
/* B86034 8010EE94 00197300 */  sll   $t6, $t9, 0xc
/* B86038 8010EE98 01EEC025 */  or    $t8, $t7, $t6
/* B8603C 8010EE9C AC580000 */  sw    $t8, ($v0)
/* B86040 8010EEA0 908F0001 */  lbu   $t7, 1($a0)
/* B86044 8010EEA4 8D390000 */  lw    $t9, ($t1)
/* B86048 8010EEA8 00E8082A */  slt   $at, $a3, $t0
/* B8604C 8010EEAC 000F7040 */  sll   $t6, $t7, 1
/* B86050 8010EEB0 032EC021 */  addu  $t8, $t9, $t6
/* B86054 8010EEB4 870F0F6E */  lh    $t7, 0xf6e($t8)
/* B86058 8010EEB8 0005C080 */  sll   $t8, $a1, 2
/* B8605C 8010EEBC 000FC880 */  sll   $t9, $t7, 2
/* B86060 8010EEC0 332E0FFF */  andi  $t6, $t9, 0xfff
/* B86064 8010EEC4 330F0FFF */  andi  $t7, $t8, 0xfff
/* B86068 8010EEC8 000FCB00 */  sll   $t9, $t7, 0xc
/* B8606C 8010EECC 01D9C025 */  or    $t8, $t6, $t9
/* B86070 8010EED0 AC580004 */  sw    $t8, 4($v0)
/* B86074 8010EED4 8FAF0140 */  lw    $t7, 0x140($sp)
/* B86078 8010EED8 3C19E100 */  lui   $t9, 0xe100
/* B8607C 8010EEDC 25EE0008 */  addiu $t6, $t7, 8
/* B86080 8010EEE0 AFAE0140 */  sw    $t6, 0x140($sp)
/* B86084 8010EEE4 ADE00004 */  sw    $zero, 4($t7)
/* B86088 8010EEE8 ADF90000 */  sw    $t9, ($t7)
/* B8608C 8010EEEC 8FB80140 */  lw    $t8, 0x140($sp)
/* B86090 8010EEF0 3C190400 */  lui   $t9, (0x04000400 >> 16) # lui $t9, 0x400
/* B86094 8010EEF4 37390400 */  ori   $t9, (0x04000400 & 0xFFFF) # ori $t9, $t9, 0x400
/* B86098 8010EEF8 270F0008 */  addiu $t7, $t8, 8
/* B8609C 8010EEFC AFAF0140 */  sw    $t7, 0x140($sp)
/* B860A0 8010EF00 3C0EF100 */  lui   $t6, 0xf100
/* B860A4 8010EF04 AF0E0000 */  sw    $t6, ($t8)
/* B860A8 8010EF08 AF190004 */  sw    $t9, 4($t8)
/* B860AC 8010EF0C 8D380000 */  lw    $t8, ($t1)
/* B860B0 8010EF10 870F0F4E */  lh    $t7, 0xf4e($t8)
/* B860B4 8010EF14 00AF2821 */  addu  $a1, $a1, $t7
/* B860B8 8010EF18 1420FF89 */  bnez  $at, .L8010ED40
/* B860BC 8010EF1C 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B860C0 8010EF20 92026304 */  lbu   $v0, 0x6304($s0)
.L8010EF24:
/* B860C4 8010EF24 24010021 */  li    $at, 33
/* B860C8 8010EF28 3C06E700 */  lui   $a2, 0xe700
/* B860CC 8010EF2C 3C0AFA00 */  lui   $t2, 0xfa00
/* B860D0 8010EF30 3C0BFB00 */  lui   $t3, 0xfb00
/* B860D4 8010EF34 104100DC */  beq   $v0, $at, .L8010F2A8
/* B860D8 8010EF38 3C11FD70 */   lui   $s1, 0xfd70
/* B860DC 8010EF3C 24010029 */  li    $at, 41
/* B860E0 8010EF40 504100DA */  beql  $v0, $at, .L8010F2AC
/* B860E4 8010EF44 8FB80140 */   lw    $t8, 0x140($sp)
/* B860E8 8010EF48 8D280000 */  lw    $t0, ($t1)
/* B860EC 8010EF4C 00003825 */  move  $a3, $zero
/* B860F0 8010EF50 95050F4C */  lhu   $a1, 0xf4c($t0)
.L8010EF54:
/* B860F4 8010EF54 3C0E8015 */  lui   $t6, %hi(D_8015394C) # $t6, 0x8015
/* B860F8 8010EF58 25CE394C */  addiu $t6, %lo(D_8015394C) # addiu $t6, $t6, 0x394c
/* B860FC 8010EF5C 00EE2021 */  addu  $a0, $a3, $t6
/* B86100 8010EF60 90990000 */  lbu   $t9, ($a0)
/* B86104 8010EF64 240100FF */  li    $at, 255
/* B86108 8010EF68 132100CF */  beq   $t9, $at, .L8010F2A8
/* B8610C 8010EF6C 3C0F8015 */   lui   $t7, %hi(D_80153958) # $t7, 0x8015
/* B86110 8010EF70 25EF3958 */  addiu $t7, %lo(D_80153958) # addiu $t7, $t7, 0x3958
/* B86114 8010EF74 0007C040 */  sll   $t8, $a3, 1
/* B86118 8010EF78 030F1821 */  addu  $v1, $t8, $t7
/* B8611C 8010EF7C 84620000 */  lh    $v0, ($v1)
/* B86120 8010EF80 240C00FF */  li    $t4, 255
/* B86124 8010EF84 5182000A */  beql  $t4, $v0, .L8010EFB0
/* B86128 8010EF88 8FAF0140 */   lw    $t7, 0x140($sp)
/* B8612C 8010EF8C 850E0F78 */  lh    $t6, 0xf78($t0)
/* B86130 8010EF90 004EC821 */  addu  $t9, $v0, $t6
/* B86134 8010EF94 A4790000 */  sh    $t9, ($v1)
/* B86138 8010EF98 84780000 */  lh    $t8, ($v1)
/* B8613C 8010EF9C 2B0100FF */  slti  $at, $t8, 0xff
/* B86140 8010EFA0 54200003 */  bnezl $at, .L8010EFB0
/* B86144 8010EFA4 8FAF0140 */   lw    $t7, 0x140($sp)
/* B86148 8010EFA8 A46C0000 */  sh    $t4, ($v1)
/* B8614C 8010EFAC 8FAF0140 */  lw    $t7, 0x140($sp)
.L8010EFB0:
/* B86150 8010EFB0 25EE0008 */  addiu $t6, $t7, 8
/* B86154 8010EFB4 AFAE0140 */  sw    $t6, 0x140($sp)
/* B86158 8010EFB8 ADE00004 */  sw    $zero, 4($t7)
/* B8615C 8010EFBC ADE60000 */  sw    $a2, ($t7)
/* B86160 8010EFC0 90990000 */  lbu   $t9, ($a0)
/* B86164 8010EFC4 5720002A */  bnezl $t9, .L8010F070
/* B86168 8010EFC8 8FA20140 */   lw    $v0, 0x140($sp)
/* B8616C 8010EFCC 8FA20140 */  lw    $v0, 0x140($sp)
/* B86170 8010EFD0 3C188017 */  lui   $t8, %hi(D_801759A8) # $t8, 0x8017
/* B86174 8010EFD4 244F0008 */  addiu $t7, $v0, 8
/* B86178 8010EFD8 AFAF0140 */  sw    $t7, 0x140($sp)
/* B8617C 8010EFDC AC4A0000 */  sw    $t2, ($v0)
/* B86180 8010EFE0 846E0000 */  lh    $t6, ($v1)
/* B86184 8010EFE4 870F59A8 */  lh    $t7, %lo(D_801759A8)($t8)
/* B86188 8010EFE8 31D900FF */  andi  $t9, $t6, 0xff
/* B8618C 8010EFEC 000F7600 */  sll   $t6, $t7, 0x18
/* B86190 8010EFF0 3C0F8017 */  lui   $t7, %hi(D_801759AC) # $t7, 0x8017
/* B86194 8010EFF4 85EF59AC */  lh    $t7, %lo(D_801759AC)($t7)
/* B86198 8010EFF8 032EC025 */  or    $t8, $t9, $t6
/* B8619C 8010EFFC 31F900FF */  andi  $t9, $t7, 0xff
/* B861A0 8010F000 00197400 */  sll   $t6, $t9, 0x10
/* B861A4 8010F004 3C198017 */  lui   $t9, %hi(D_801759AA) # $t9, 0x8017
/* B861A8 8010F008 873959AA */  lh    $t9, %lo(D_801759AA)($t9)
/* B861AC 8010F00C 030E7825 */  or    $t7, $t8, $t6
/* B861B0 8010F010 333800FF */  andi  $t8, $t9, 0xff
/* B861B4 8010F014 00187200 */  sll   $t6, $t8, 8
/* B861B8 8010F018 01EEC825 */  or    $t9, $t7, $t6
/* B861BC 8010F01C AC590004 */  sw    $t9, 4($v0)
/* B861C0 8010F020 8FA20140 */  lw    $v0, 0x140($sp)
/* B861C4 8010F024 3C0E8017 */  lui   $t6, %hi(D_801759AE) # $t6, 0x8017
/* B861C8 8010F028 244F0008 */  addiu $t7, $v0, 8
/* B861CC 8010F02C AFAF0140 */  sw    $t7, 0x140($sp)
/* B861D0 8010F030 AC4B0000 */  sw    $t3, ($v0)
/* B861D4 8010F034 3C0F8017 */  lui   $t7, %hi(D_801759B2) # $t7, 0x8017
/* B861D8 8010F038 85EF59B2 */  lh    $t7, %lo(D_801759B2)($t7)
/* B861DC 8010F03C 85D959AE */  lh    $t9, %lo(D_801759AE)($t6)
/* B861E0 8010F040 31EE00FF */  andi  $t6, $t7, 0xff
/* B861E4 8010F044 0019C600 */  sll   $t8, $t9, 0x18
/* B861E8 8010F048 000ECC00 */  sll   $t9, $t6, 0x10
/* B861EC 8010F04C 3C0E8017 */  lui   $t6, %hi(D_801759B0) # $t6, 0x8017
/* B861F0 8010F050 85CE59B0 */  lh    $t6, %lo(D_801759B0)($t6)
/* B861F4 8010F054 03197825 */  or    $t7, $t8, $t9
/* B861F8 8010F058 31D800FF */  andi  $t8, $t6, 0xff
/* B861FC 8010F05C 0018CA00 */  sll   $t9, $t8, 8
/* B86200 8010F060 01F97025 */  or    $t6, $t7, $t9
/* B86204 8010F064 10000028 */  b     .L8010F108
/* B86208 8010F068 AC4E0004 */   sw    $t6, 4($v0)
/* B8620C 8010F06C 8FA20140 */  lw    $v0, 0x140($sp)
.L8010F070:
/* B86210 8010F070 3C188017 */  lui   $t8, %hi(D_801759B4) # $t8, 0x8017
/* B86214 8010F074 244F0008 */  addiu $t7, $v0, 8
/* B86218 8010F078 AFAF0140 */  sw    $t7, 0x140($sp)
/* B8621C 8010F07C AC4A0000 */  sw    $t2, ($v0)
/* B86220 8010F080 84790000 */  lh    $t9, ($v1)
/* B86224 8010F084 870F59B4 */  lh    $t7, %lo(D_801759B4)($t8)
/* B86228 8010F088 332E00FF */  andi  $t6, $t9, 0xff
/* B8622C 8010F08C 000FCE00 */  sll   $t9, $t7, 0x18
/* B86230 8010F090 3C0F8017 */  lui   $t7, %hi(D_801759B8) # $t7, 0x8017
/* B86234 8010F094 85EF59B8 */  lh    $t7, %lo(D_801759B8)($t7)
/* B86238 8010F098 01D9C025 */  or    $t8, $t6, $t9
/* B8623C 8010F09C 31EE00FF */  andi  $t6, $t7, 0xff
/* B86240 8010F0A0 000ECC00 */  sll   $t9, $t6, 0x10
/* B86244 8010F0A4 3C0E8017 */  lui   $t6, %hi(D_801759B6) # $t6, 0x8017
/* B86248 8010F0A8 85CE59B6 */  lh    $t6, %lo(D_801759B6)($t6)
/* B8624C 8010F0AC 03197825 */  or    $t7, $t8, $t9
/* B86250 8010F0B0 31D800FF */  andi  $t8, $t6, 0xff
/* B86254 8010F0B4 0018CA00 */  sll   $t9, $t8, 8
/* B86258 8010F0B8 01F97025 */  or    $t6, $t7, $t9
/* B8625C 8010F0BC AC4E0004 */  sw    $t6, 4($v0)
/* B86260 8010F0C0 8FA20140 */  lw    $v0, 0x140($sp)
/* B86264 8010F0C4 3C198017 */  lui   $t9, %hi(D_801759BA) # $t9, 0x8017
/* B86268 8010F0C8 244F0008 */  addiu $t7, $v0, 8
/* B8626C 8010F0CC AFAF0140 */  sw    $t7, 0x140($sp)
/* B86270 8010F0D0 AC4B0000 */  sw    $t3, ($v0)
/* B86274 8010F0D4 3C0F8017 */  lui   $t7, %hi(D_801759BE) # $t7, 0x8017
/* B86278 8010F0D8 85EF59BE */  lh    $t7, %lo(D_801759BE)($t7)
/* B8627C 8010F0DC 872E59BA */  lh    $t6, %lo(D_801759BA)($t9)
/* B86280 8010F0E0 31F900FF */  andi  $t9, $t7, 0xff
/* B86284 8010F0E4 000EC600 */  sll   $t8, $t6, 0x18
/* B86288 8010F0E8 00197400 */  sll   $t6, $t9, 0x10
/* B8628C 8010F0EC 3C198017 */  lui   $t9, %hi(D_801759BC) # $t9, 0x8017
/* B86290 8010F0F0 873959BC */  lh    $t9, %lo(D_801759BC)($t9)
/* B86294 8010F0F4 030E7825 */  or    $t7, $t8, $t6
/* B86298 8010F0F8 333800FF */  andi  $t8, $t9, 0xff
/* B8629C 8010F0FC 00187200 */  sll   $t6, $t8, 8
/* B862A0 8010F100 01EEC825 */  or    $t9, $t7, $t6
/* B862A4 8010F104 AC590004 */  sw    $t9, 4($v0)
.L8010F108:
/* B862A8 8010F108 8FA20140 */  lw    $v0, 0x140($sp)
/* B862AC 8010F10C 3C188015 */  lui   $t8, %hi(D_80153C94)
/* B862B0 8010F110 3C01E400 */  lui   $at, 0xe400
/* B862B4 8010F114 244F0008 */  addiu $t7, $v0, 8
/* B862B8 8010F118 AFAF0140 */  sw    $t7, 0x140($sp)
/* B862BC 8010F11C AC510000 */  sw    $s1, ($v0)
/* B862C0 8010F120 908E0000 */  lbu   $t6, ($a0)
/* B862C4 8010F124 24E70001 */  addiu $a3, $a3, 1
/* B862C8 8010F128 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B862CC 8010F12C 000EC880 */  sll   $t9, $t6, 2
/* B862D0 8010F130 0319C021 */  addu  $t8, $t8, $t9
/* B862D4 8010F134 8F183C94 */  lw    $t8, %lo(D_80153C94)($t8)
/* B862D8 8010F138 3C19F570 */  lui   $t9, 0xf570
/* B862DC 8010F13C AC580004 */  sw    $t8, 4($v0)
/* B862E0 8010F140 8FAF0140 */  lw    $t7, 0x140($sp)
/* B862E4 8010F144 3C180700 */  lui   $t8, 0x700
/* B862E8 8010F148 25EE0008 */  addiu $t6, $t7, 8
/* B862EC 8010F14C AFAE0140 */  sw    $t6, 0x140($sp)
/* B862F0 8010F150 ADF80004 */  sw    $t8, 4($t7)
/* B862F4 8010F154 ADF90000 */  sw    $t9, ($t7)
/* B862F8 8010F158 8FAF0140 */  lw    $t7, 0x140($sp)
/* B862FC 8010F15C 3C19E600 */  lui   $t9, 0xe600
/* B86300 8010F160 25EE0008 */  addiu $t6, $t7, 8
/* B86304 8010F164 AFAE0140 */  sw    $t6, 0x140($sp)
/* B86308 8010F168 ADE00004 */  sw    $zero, 4($t7)
/* B8630C 8010F16C ADF90000 */  sw    $t9, ($t7)
/* B86310 8010F170 8FB80140 */  lw    $t8, 0x140($sp)
/* B86314 8010F174 3C190707 */  lui   $t9, (0x0707F400 >> 16) # lui $t9, 0x707
/* B86318 8010F178 3739F400 */  ori   $t9, (0x0707F400 & 0xFFFF) # ori $t9, $t9, 0xf400
/* B8631C 8010F17C 270F0008 */  addiu $t7, $t8, 8
/* B86320 8010F180 AFAF0140 */  sw    $t7, 0x140($sp)
/* B86324 8010F184 3C0EF300 */  lui   $t6, 0xf300
/* B86328 8010F188 AF0E0000 */  sw    $t6, ($t8)
/* B8632C 8010F18C AF190004 */  sw    $t9, 4($t8)
/* B86330 8010F190 8FB80140 */  lw    $t8, 0x140($sp)
/* B86334 8010F194 270F0008 */  addiu $t7, $t8, 8
/* B86338 8010F198 AFAF0140 */  sw    $t7, 0x140($sp)
/* B8633C 8010F19C AF000004 */  sw    $zero, 4($t8)
/* B86340 8010F1A0 AF060000 */  sw    $a2, ($t8)
/* B86344 8010F1A4 8FAE0140 */  lw    $t6, 0x140($sp)
/* B86348 8010F1A8 3C18F568 */  lui   $t8, (0xF5680400 >> 16) # lui $t8, 0xf568
/* B8634C 8010F1AC 37180400 */  ori   $t8, (0xF5680400 & 0xFFFF) # ori $t8, $t8, 0x400
/* B86350 8010F1B0 25D90008 */  addiu $t9, $t6, 8
/* B86354 8010F1B4 AFB90140 */  sw    $t9, 0x140($sp)
/* B86358 8010F1B8 ADC00004 */  sw    $zero, 4($t6)
/* B8635C 8010F1BC ADD80000 */  sw    $t8, ($t6)
/* B86360 8010F1C0 8FAF0140 */  lw    $t7, 0x140($sp)
/* B86364 8010F1C4 3C180003 */  lui   $t8, (0x0003C03C >> 16) # lui $t8, 3
/* B86368 8010F1C8 3718C03C */  ori   $t8, (0x0003C03C & 0xFFFF) # ori $t8, $t8, 0xc03c
/* B8636C 8010F1CC 25EE0008 */  addiu $t6, $t7, 8
/* B86370 8010F1D0 AFAE0140 */  sw    $t6, 0x140($sp)
/* B86374 8010F1D4 3C19F200 */  lui   $t9, 0xf200
/* B86378 8010F1D8 ADF90000 */  sw    $t9, ($t7)
/* B8637C 8010F1DC ADF80004 */  sw    $t8, 4($t7)
/* B86380 8010F1E0 8FA20140 */  lw    $v0, 0x140($sp)
/* B86384 8010F1E4 90980000 */  lbu   $t8, ($a0)
/* B86388 8010F1E8 8D390000 */  lw    $t9, ($t1)
/* B8638C 8010F1EC 244E0008 */  addiu $t6, $v0, 8
/* B86390 8010F1F0 AFAE0140 */  sw    $t6, 0x140($sp)
/* B86394 8010F1F4 00187840 */  sll   $t7, $t8, 1
/* B86398 8010F1F8 032F7021 */  addu  $t6, $t9, $t7
/* B8639C 8010F1FC 85D80F6E */  lh    $t8, 0xf6e($t6)
/* B863A0 8010F200 27190010 */  addiu $t9, $t8, 0x10
/* B863A4 8010F204 00197880 */  sll   $t7, $t9, 2
/* B863A8 8010F208 31EE0FFF */  andi  $t6, $t7, 0xfff
/* B863AC 8010F20C 24B90010 */  addiu $t9, $a1, 0x10
/* B863B0 8010F210 00197880 */  sll   $t7, $t9, 2
/* B863B4 8010F214 01C1C025 */  or    $t8, $t6, $at
/* B863B8 8010F218 31EE0FFF */  andi  $t6, $t7, 0xfff
/* B863BC 8010F21C 000ECB00 */  sll   $t9, $t6, 0xc
/* B863C0 8010F220 03197825 */  or    $t7, $t8, $t9
/* B863C4 8010F224 AC4F0000 */  sw    $t7, ($v0)
/* B863C8 8010F228 90980000 */  lbu   $t8, ($a0)
/* B863CC 8010F22C 8D2E0000 */  lw    $t6, ($t1)
/* B863D0 8010F230 28E10008 */  slti  $at, $a3, 8
/* B863D4 8010F234 0018C840 */  sll   $t9, $t8, 1
/* B863D8 8010F238 01D97821 */  addu  $t7, $t6, $t9
/* B863DC 8010F23C 85F80F6E */  lh    $t8, 0xf6e($t7)
/* B863E0 8010F240 00057880 */  sll   $t7, $a1, 2
/* B863E4 8010F244 00187080 */  sll   $t6, $t8, 2
/* B863E8 8010F248 31D90FFF */  andi  $t9, $t6, 0xfff
/* B863EC 8010F24C 31F80FFF */  andi  $t8, $t7, 0xfff
/* B863F0 8010F250 00187300 */  sll   $t6, $t8, 0xc
/* B863F4 8010F254 032E7825 */  or    $t7, $t9, $t6
/* B863F8 8010F258 AC4F0004 */  sw    $t7, 4($v0)
/* B863FC 8010F25C 8FB80140 */  lw    $t8, 0x140($sp)
/* B86400 8010F260 3C0EE100 */  lui   $t6, 0xe100
/* B86404 8010F264 27190008 */  addiu $t9, $t8, 8
/* B86408 8010F268 AFB90140 */  sw    $t9, 0x140($sp)
/* B8640C 8010F26C AF000004 */  sw    $zero, 4($t8)
/* B86410 8010F270 AF0E0000 */  sw    $t6, ($t8)
/* B86414 8010F274 8FAF0140 */  lw    $t7, 0x140($sp)
/* B86418 8010F278 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* B8641C 8010F27C 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* B86420 8010F280 25F80008 */  addiu $t8, $t7, 8
/* B86424 8010F284 AFB80140 */  sw    $t8, 0x140($sp)
/* B86428 8010F288 3C19F100 */  lui   $t9, 0xf100
/* B8642C 8010F28C ADF90000 */  sw    $t9, ($t7)
/* B86430 8010F290 ADEE0004 */  sw    $t6, 4($t7)
/* B86434 8010F294 8D280000 */  lw    $t0, ($t1)
/* B86438 8010F298 850F0F4E */  lh    $t7, 0xf4e($t0)
/* B8643C 8010F29C 00AF2821 */  addu  $a1, $a1, $t7
/* B86440 8010F2A0 1420FF2C */  bnez  $at, .L8010EF54
/* B86444 8010F2A4 30A5FFFF */   andi  $a1, $a1, 0xffff
.L8010F2A8:
/* B86448 8010F2A8 8FB80140 */  lw    $t8, 0x140($sp)
.L8010F2AC:
/* B8644C 8010F2AC 8FB9015C */  lw    $t9, 0x15c($sp)
/* B86450 8010F2B0 AF380000 */  sw    $t8, ($t9)
/* B86454 8010F2B4 8FBF003C */  lw    $ra, 0x3c($sp)
/* B86458 8010F2B8 8FB20038 */  lw    $s2, 0x38($sp)
/* B8645C 8010F2BC 8FB10034 */  lw    $s1, 0x34($sp)
/* B86460 8010F2C0 8FB00030 */  lw    $s0, 0x30($sp)
/* B86464 8010F2C4 03E00008 */  jr    $ra
/* B86468 8010F2C8 27BD0158 */   addiu $sp, $sp, 0x158
