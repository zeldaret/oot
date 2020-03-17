.rdata
glabel D_8014ADEC
    .asciz "__osRealloc(%08x, %d)\n"
    .balign 4

glabel D_8014AE04
    .asciz "メモリブロックサイズが変わらないためなにもしません\n" #Does nothing because the memory block size does not change
    .balign 4

glabel D_8014AE38
    .asciz "現メモリブロックの後ろにフリーブロックがあるので結合します\n" #Merge because there is a free block after the current memory block
    .balign 4

glabel D_8014AE74
    .asciz "新たにメモリブロックを確保して内容を移動します\n" #Allocate a new memory block and move the contents
    .balign 4

glabel D_8014AEA4
    .asciz "現メモリブロックの後ろのフリーブロックを大きくしました\n" #Increased free block behind current memory block
    .balign 4

glabel D_8014AEDC
    .asciz "現メモリブロックの後ろにフリーブロックがないので生成します\n" #Generated because there is no free block after the current memory block
    .balign 4

glabel D_8014AF18
    .asciz "フリーブロック生成するだけの空きがありません\n" #There is no room to generate free blocks
    .balign 4

.text
glabel __osRealloc
/* B75C10 800FEA70 27BDFF78 */  addiu $sp, $sp, -0x88
/* B75C14 800FEA74 AFB00018 */  sw    $s0, 0x18($sp)
/* B75C18 800FEA78 AFA40088 */  sw    $a0, 0x88($sp)
/* B75C1C 800FEA7C 24D0000F */  addiu $s0, $a2, 0xf
/* B75C20 800FEA80 2401FFF0 */  li    $at, -16
/* B75C24 800FEA84 AFBF001C */  sw    $ra, 0x1c($sp)
/* B75C28 800FEA88 02018024 */  and   $s0, $s0, $at
/* B75C2C 800FEA8C 3C048015 */  lui   $a0, %hi(D_8014ADEC) # $a0, 0x8015
/* B75C30 800FEA90 AFA5008C */  sw    $a1, 0x8c($sp)
/* B75C34 800FEA94 2484ADEC */  addiu $a0, %lo(D_8014ADEC) # addiu $a0, $a0, -0x5214
/* B75C38 800FEA98 0C00084C */  jal   osSyncPrintf
/* B75C3C 800FEA9C 02003025 */   move  $a2, $s0
/* B75C40 800FEAA0 0C03F70F */  jal   ArenaImpl_Lock
/* B75C44 800FEAA4 8FA40088 */   lw    $a0, 0x88($sp)
/* B75C48 800FEAA8 8FAE008C */  lw    $t6, 0x8c($sp)
/* B75C4C 800FEAAC 8FA40088 */  lw    $a0, 0x88($sp)
/* B75C50 800FEAB0 15C00005 */  bnez  $t6, .L800FEAC8
/* B75C54 800FEAB4 00000000 */   nop   
/* B75C58 800FEAB8 0C03F8BF */  jal   __osMalloc_NoLock
/* B75C5C 800FEABC 02002825 */   move  $a1, $s0
/* B75C60 800FEAC0 100000AF */  b     .L800FED80
/* B75C64 800FEAC4 AFA2008C */   sw    $v0, 0x8c($sp)
.L800FEAC8:
/* B75C68 800FEAC8 16000006 */  bnez  $s0, .L800FEAE4
/* B75C6C 800FEACC 8FA7008C */   lw    $a3, 0x8c($sp)
/* B75C70 800FEAD0 8FA40088 */  lw    $a0, 0x88($sp)
/* B75C74 800FEAD4 0C03F979 */  jal   __osFree_NoLock
/* B75C78 800FEAD8 8FA5008C */   lw    $a1, 0x8c($sp)
/* B75C7C 800FEADC 100000A8 */  b     .L800FED80
/* B75C80 800FEAE0 AFA0008C */   sw    $zero, 0x8c($sp)
.L800FEAE4:
/* B75C84 800FEAE4 8CE3FFD4 */  lw    $v1, -0x2c($a3)
/* B75C88 800FEAE8 24E7FFD0 */  addiu $a3, $a3, -0x30
/* B75C8C 800FEAEC 3C048015 */  lui   $a0, %hi(D_8014AE04) # $a0, 0x8015
/* B75C90 800FEAF0 16030005 */  bne   $s0, $v1, .L800FEB08
/* B75C94 800FEAF4 0070082B */   sltu  $at, $v1, $s0
/* B75C98 800FEAF8 0C00084C */  jal   osSyncPrintf
/* B75C9C 800FEAFC 2484AE04 */   addiu $a0, %lo(D_8014AE04) # addiu $a0, $a0, -0x51fc
/* B75CA0 800FEB00 1000009F */  b     .L800FED80
/* B75CA4 800FEB04 00000000 */   nop   
.L800FEB08:
/* B75CA8 800FEB08 1020003C */  beqz  $at, .L800FEBFC
/* B75CAC 800FEB0C 00E02025 */   move  $a0, $a3
/* B75CB0 800FEB10 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75CB4 800FEB14 AFA70024 */   sw    $a3, 0x24($sp)
/* B75CB8 800FEB18 8FA70024 */  lw    $a3, 0x24($sp)
/* B75CBC 800FEB1C 3C048015 */  lui   $a0, %hi(D_8014AE74) # $a0, 0x8015
/* B75CC0 800FEB20 2484AE74 */  addiu $a0, %lo(D_8014AE74) # addiu $a0, $a0, -0x518c
/* B75CC4 800FEB24 8CE30004 */  lw    $v1, 4($a3)
/* B75CC8 800FEB28 00E37821 */  addu  $t7, $a3, $v1
/* B75CCC 800FEB2C 25F80030 */  addiu $t8, $t7, 0x30
/* B75CD0 800FEB30 14580021 */  bne   $v0, $t8, .L800FEBB8
/* B75CD4 800FEB34 02034023 */   subu  $t0, $s0, $v1
/* B75CD8 800FEB38 84590002 */  lh    $t9, 2($v0)
/* B75CDC 800FEB3C 1320001E */  beqz  $t9, .L800FEBB8
/* B75CE0 800FEB40 00000000 */   nop   
/* B75CE4 800FEB44 8C490004 */  lw    $t1, 4($v0)
/* B75CE8 800FEB48 0128082B */  sltu  $at, $t1, $t0
/* B75CEC 800FEB4C 1420001A */  bnez  $at, .L800FEBB8
/* B75CF0 800FEB50 00000000 */   nop   
/* B75CF4 800FEB54 3C048015 */  lui   $a0, %hi(D_8014AE38) # $a0, 0x8015
/* B75CF8 800FEB58 2484AE38 */  addiu $a0, %lo(D_8014AE38) # addiu $a0, $a0, -0x51c8
/* B75CFC 800FEB5C AFA2007C */  sw    $v0, 0x7c($sp)
/* B75D00 800FEB60 AFA70024 */  sw    $a3, 0x24($sp)
/* B75D04 800FEB64 0C00084C */  jal   osSyncPrintf
/* B75D08 800FEB68 AFA80068 */   sw    $t0, 0x68($sp)
/* B75D0C 800FEB6C 8FA4007C */  lw    $a0, 0x7c($sp)
/* B75D10 800FEB70 8FA80068 */  lw    $t0, 0x68($sp)
/* B75D14 800FEB74 8C8A0004 */  lw    $t2, 4($a0)
/* B75D18 800FEB78 01485823 */  subu  $t3, $t2, $t0
/* B75D1C 800FEB7C 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75D20 800FEB80 AC8B0004 */   sw    $t3, 4($a0)
/* B75D24 800FEB84 8FA5007C */  lw    $a1, 0x7c($sp)
/* B75D28 800FEB88 8FA70024 */  lw    $a3, 0x24($sp)
/* B75D2C 800FEB8C 10400003 */  beqz  $v0, .L800FEB9C
/* B75D30 800FEB90 8FA80068 */   lw    $t0, 0x68($sp)
/* B75D34 800FEB94 00A86021 */  addu  $t4, $a1, $t0
/* B75D38 800FEB98 AC4C000C */  sw    $t4, 0xc($v0)
.L800FEB9C:
/* B75D3C 800FEB9C 00A82021 */  addu  $a0, $a1, $t0
/* B75D40 800FEBA0 ACE40008 */  sw    $a0, 8($a3)
/* B75D44 800FEBA4 ACF00004 */  sw    $s0, 4($a3)
/* B75D48 800FEBA8 0C041A2C */  jal   func_801068B0
/* B75D4C 800FEBAC 24060030 */   li    $a2, 48
/* B75D50 800FEBB0 10000073 */  b     .L800FED80
/* B75D54 800FEBB4 00000000 */   nop   
.L800FEBB8:
/* B75D58 800FEBB8 0C00084C */  jal   osSyncPrintf
/* B75D5C 800FEBBC AFA70024 */   sw    $a3, 0x24($sp)
/* B75D60 800FEBC0 8FA40088 */  lw    $a0, 0x88($sp)
/* B75D64 800FEBC4 0C03F8BF */  jal   __osMalloc_NoLock
/* B75D68 800FEBC8 02002825 */   move  $a1, $s0
/* B75D6C 800FEBCC 8FA70024 */  lw    $a3, 0x24($sp)
/* B75D70 800FEBD0 10400008 */  beqz  $v0, .L800FEBF4
/* B75D74 800FEBD4 00408025 */   move  $s0, $v0
/* B75D78 800FEBD8 8FA4008C */  lw    $a0, 0x8c($sp)
/* B75D7C 800FEBDC 00402825 */  move  $a1, $v0
/* B75D80 800FEBE0 0C001BC4 */  jal   bcopy
/* B75D84 800FEBE4 8CE60004 */   lw    $a2, 4($a3)
/* B75D88 800FEBE8 8FA40088 */  lw    $a0, 0x88($sp)
/* B75D8C 800FEBEC 0C03F979 */  jal   __osFree_NoLock
/* B75D90 800FEBF0 8FA5008C */   lw    $a1, 0x8c($sp)
.L800FEBF4:
/* B75D94 800FEBF4 10000062 */  b     .L800FED80
/* B75D98 800FEBF8 AFB0008C */   sw    $s0, 0x8c($sp)
.L800FEBFC:
/* B75D9C 800FEBFC 0203082B */  sltu  $at, $s0, $v1
/* B75DA0 800FEC00 1020005F */  beqz  $at, .L800FED80
/* B75DA4 800FEC04 00E02025 */   move  $a0, $a3
/* B75DA8 800FEC08 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75DAC 800FEC0C AFA70024 */   sw    $a3, 0x24($sp)
/* B75DB0 800FEC10 10400035 */  beqz  $v0, .L800FECE8
/* B75DB4 800FEC14 8FA70024 */   lw    $a3, 0x24($sp)
/* B75DB8 800FEC18 844D0002 */  lh    $t5, 2($v0)
/* B75DBC 800FEC1C 3C048015 */  lui   $a0, %hi(D_8014AEA4) # $a0, 0x8015
/* B75DC0 800FEC20 2484AEA4 */  addiu $a0, %lo(D_8014AEA4) # addiu $a0, $a0, -0x515c
/* B75DC4 800FEC24 51A00031 */  beql  $t5, $zero, .L800FECEC
/* B75DC8 800FEC28 8CF90004 */   lw    $t9, 4($a3)
/* B75DCC 800FEC2C AFA2006C */  sw    $v0, 0x6c($sp)
/* B75DD0 800FEC30 0C00084C */  jal   osSyncPrintf
/* B75DD4 800FEC34 AFA70024 */   sw    $a3, 0x24($sp)
/* B75DD8 800FEC38 8FB8006C */  lw    $t8, 0x6c($sp)
/* B75DDC 800FEC3C 27A20030 */  addiu $v0, $sp, 0x30
/* B75DE0 800FEC40 8FA70024 */  lw    $a3, 0x24($sp)
/* B75DE4 800FEC44 0040C825 */  move  $t9, $v0
/* B75DE8 800FEC48 27090030 */  addiu $t1, $t8, 0x30
.L800FEC4C:
/* B75DEC 800FEC4C 8F0F0000 */  lw    $t7, ($t8)
/* B75DF0 800FEC50 2718000C */  addiu $t8, $t8, 0xc
/* B75DF4 800FEC54 2739000C */  addiu $t9, $t9, 0xc
/* B75DF8 800FEC58 AF2FFFF4 */  sw    $t7, -0xc($t9)
/* B75DFC 800FEC5C 8F0EFFF8 */  lw    $t6, -8($t8)
/* B75E00 800FEC60 AF2EFFF8 */  sw    $t6, -8($t9)
/* B75E04 800FEC64 8F0FFFFC */  lw    $t7, -4($t8)
/* B75E08 800FEC68 1709FFF8 */  bne   $t8, $t1, .L800FEC4C
/* B75E0C 800FEC6C AF2FFFFC */   sw    $t7, -4($t9)
/* B75E10 800FEC70 260A000F */  addiu $t2, $s0, 0xf
/* B75E14 800FEC74 2401FFF0 */  li    $at, -16
/* B75E18 800FEC78 01415824 */  and   $t3, $t2, $at
/* B75E1C 800FEC7C 00EB2021 */  addu  $a0, $a3, $t3
/* B75E20 800FEC80 24840030 */  addiu $a0, $a0, 0x30
/* B75E24 800FEC84 0080C025 */  move  $t8, $a0
/* B75E28 800FEC88 00404825 */  move  $t1, $v0
/* B75E2C 800FEC8C 24590030 */  addiu $t9, $v0, 0x30
.L800FEC90:
/* B75E30 800FEC90 8D2D0000 */  lw    $t5, ($t1)
/* B75E34 800FEC94 2529000C */  addiu $t1, $t1, 0xc
/* B75E38 800FEC98 2718000C */  addiu $t8, $t8, 0xc
/* B75E3C 800FEC9C AF0DFFF4 */  sw    $t5, -0xc($t8)
/* B75E40 800FECA0 8D2CFFF8 */  lw    $t4, -8($t1)
/* B75E44 800FECA4 AF0CFFF8 */  sw    $t4, -8($t8)
/* B75E48 800FECA8 8D2DFFFC */  lw    $t5, -4($t1)
/* B75E4C 800FECAC 1539FFF8 */  bne   $t1, $t9, .L800FEC90
/* B75E50 800FECB0 AF0DFFFC */   sw    $t5, -4($t8)
/* B75E54 800FECB4 8C8E0004 */  lw    $t6, 4($a0)
/* B75E58 800FECB8 8CEF0004 */  lw    $t7, 4($a3)
/* B75E5C 800FECBC 01CF5021 */  addu  $t2, $t6, $t7
/* B75E60 800FECC0 01505823 */  subu  $t3, $t2, $s0
/* B75E64 800FECC4 AC8B0004 */  sw    $t3, 4($a0)
/* B75E68 800FECC8 ACE40008 */  sw    $a0, 8($a3)
/* B75E6C 800FECCC ACF00004 */  sw    $s0, 4($a3)
/* B75E70 800FECD0 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75E74 800FECD4 AFA40020 */   sw    $a0, 0x20($sp)
/* B75E78 800FECD8 10400029 */  beqz  $v0, .L800FED80
/* B75E7C 800FECDC 8FA40020 */   lw    $a0, 0x20($sp)
/* B75E80 800FECE0 10000027 */  b     .L800FED80
/* B75E84 800FECE4 AC44000C */   sw    $a0, 0xc($v0)
.L800FECE8:
/* B75E88 800FECE8 8CF90004 */  lw    $t9, 4($a3)
.L800FECEC:
/* B75E8C 800FECEC 26090030 */  addiu $t1, $s0, 0x30
/* B75E90 800FECF0 3C048015 */  lui   $a0, %hi(D_8014AF18)
/* B75E94 800FECF4 0139082B */  sltu  $at, $t1, $t9
/* B75E98 800FECF8 1020001E */  beqz  $at, .L800FED74
/* B75E9C 800FECFC 00000000 */   nop   
/* B75EA0 800FED00 3C048015 */  lui   $a0, %hi(D_8014AEDC) # $a0, 0x8015
/* B75EA4 800FED04 2484AEDC */  addiu $a0, %lo(D_8014AEDC) # addiu $a0, $a0, -0x5124
/* B75EA8 800FED08 0C00084C */  jal   osSyncPrintf
/* B75EAC 800FED0C AFA70024 */   sw    $a3, 0x24($sp)
/* B75EB0 800FED10 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75EB4 800FED14 8FA40024 */   lw    $a0, 0x24($sp)
/* B75EB8 800FED18 8FA70024 */  lw    $a3, 0x24($sp)
/* B75EBC 800FED1C 2603000F */  addiu $v1, $s0, 0xf
/* B75EC0 800FED20 2401FFF0 */  li    $at, -16
/* B75EC4 800FED24 00611824 */  and   $v1, $v1, $at
/* B75EC8 800FED28 24630030 */  addiu $v1, $v1, 0x30
/* B75ECC 800FED2C 00E32021 */  addu  $a0, $a3, $v1
/* B75ED0 800FED30 AC820008 */  sw    $v0, 8($a0)
/* B75ED4 800FED34 AC87000C */  sw    $a3, 0xc($a0)
/* B75ED8 800FED38 8CF80004 */  lw    $t8, 4($a3)
/* B75EDC 800FED3C 240D0001 */  li    $t5, 1
/* B75EE0 800FED40 240E7373 */  li    $t6, 29555
/* B75EE4 800FED44 03036023 */  subu  $t4, $t8, $v1
/* B75EE8 800FED48 AC8C0004 */  sw    $t4, 4($a0)
/* B75EEC 800FED4C A48D0002 */  sh    $t5, 2($a0)
/* B75EF0 800FED50 A48E0000 */  sh    $t6, ($a0)
/* B75EF4 800FED54 ACE40008 */  sw    $a0, 8($a3)
/* B75EF8 800FED58 ACF00004 */  sw    $s0, 4($a3)
/* B75EFC 800FED5C 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75F00 800FED60 AFA40020 */   sw    $a0, 0x20($sp)
/* B75F04 800FED64 10400006 */  beqz  $v0, .L800FED80
/* B75F08 800FED68 8FA40020 */   lw    $a0, 0x20($sp)
/* B75F0C 800FED6C 10000004 */  b     .L800FED80
/* B75F10 800FED70 AC44000C */   sw    $a0, 0xc($v0)
.L800FED74:
/* B75F14 800FED74 0C00084C */  jal   osSyncPrintf
/* B75F18 800FED78 2484AF18 */   addiu $a0, %lo(D_8014AF18)
/* B75F1C 800FED7C AFA0008C */  sw    $zero, 0x8c($sp)
.L800FED80:
/* B75F20 800FED80 0C03F719 */  jal   ArenaImpl_Unlock
/* B75F24 800FED84 8FA40088 */   lw    $a0, 0x88($sp)
/* B75F28 800FED88 8FBF001C */  lw    $ra, 0x1c($sp)
/* B75F2C 800FED8C 8FA2008C */  lw    $v0, 0x8c($sp)
/* B75F30 800FED90 8FB00018 */  lw    $s0, 0x18($sp)
/* B75F34 800FED94 03E00008 */  jr    $ra
/* B75F38 800FED98 27BD0088 */   addiu $sp, $sp, 0x88