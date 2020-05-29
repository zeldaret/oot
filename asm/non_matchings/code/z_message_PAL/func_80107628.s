.rdata
glabel D_80153E74
    # Message found!!! = %x (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)
    .asciz " メッセージが,見つかった！！！ = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n"
    .balign 4

.text
glabel func_80107628
/* B7E7C8 80107628 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B7E7CC 8010762C 3C028015 */  lui   $v0, %hi(D_801538FC) # $v0, 0x8015
/* B7E7D0 80107630 8C4238FC */  lw    $v0, %lo(D_801538FC)($v0)
/* B7E7D4 80107634 AFBF0024 */  sw    $ra, 0x24($sp)
/* B7E7D8 80107638 AFA40028 */  sw    $a0, 0x28($sp)
/* B7E7DC 8010763C AFA5002C */  sw    $a1, 0x2c($sp)
/* B7E7E0 80107640 94430000 */  lhu   $v1, ($v0)
/* B7E7E4 80107644 3406FFFF */  li    $a2, 65535
/* B7E7E8 80107648 30A7FFFF */  andi  $a3, $a1, 0xffff
/* B7E7EC 8010764C 10C3001B */  beq   $a2, $v1, .L801076BC
/* B7E7F0 80107650 8C4A0004 */   lw    $t2, 4($v0)
/* B7E7F4 80107654 00E02825 */  move  $a1, $a3
.L80107658:
/* B7E7F8 80107658 54A30015 */  bnel  $a1, $v1, .L801076B0
/* B7E7FC 8010765C 94430008 */   lhu   $v1, 8($v0)
/* B7E800 80107660 8FA30028 */  lw    $v1, 0x28($sp)
/* B7E804 80107664 904E0002 */  lbu   $t6, 2($v0)
/* B7E808 80107668 8C480004 */  lw    $t0, 4($v0)
/* B7E80C 8010766C 3C048015 */  lui   $a0, %hi(D_80153E74) # $a0, 0x8015
/* B7E810 80107670 A06E2208 */  sb    $t6, 0x2208($v1)
/* B7E814 80107674 8C49000C */  lw    $t1, 0xc($v0)
/* B7E818 80107678 010A3023 */  subu  $a2, $t0, $t2
/* B7E81C 8010767C AC662200 */  sw    $a2, 0x2200($v1)
/* B7E820 80107680 01283823 */  subu  $a3, $t1, $t0
/* B7E824 80107684 AC672204 */  sw    $a3, 0x2204($v1)
/* B7E828 80107688 24420008 */  addiu $v0, $v0, 8
/* B7E82C 8010768C AFAA0014 */  sw    $t2, 0x14($sp)
/* B7E830 80107690 24843E74 */  addiu $a0, %lo(D_80153E74) # addiu $a0, $a0, 0x3e74
/* B7E834 80107694 24632200 */  addiu $v1, $v1, 0x2200
/* B7E838 80107698 AFA80010 */  sw    $t0, 0x10($sp)
/* B7E83C 8010769C 0C00084C */  jal   osSyncPrintf
/* B7E840 801076A0 AFA90018 */   sw    $t1, 0x18($sp)
/* B7E844 801076A4 10000006 */  b     .L801076C0
/* B7E848 801076A8 8FBF0024 */   lw    $ra, 0x24($sp)
/* B7E84C 801076AC 94430008 */  lhu   $v1, 8($v0)
.L801076B0:
/* B7E850 801076B0 24420008 */  addiu $v0, $v0, 8
/* B7E854 801076B4 14C3FFE8 */  bne   $a2, $v1, .L80107658
/* B7E858 801076B8 00000000 */   nop   
.L801076BC:
/* B7E85C 801076BC 8FBF0024 */  lw    $ra, 0x24($sp)
.L801076C0:
/* B7E860 801076C0 27BD0028 */  addiu $sp, $sp, 0x28
/* B7E864 801076C4 03E00008 */  jr    $ra
/* B7E868 801076C8 00000000 */   nop   

