.rdata
glabel D_8014ACBC
    .asciz "\x1b[41;37m__osFree:不正解放(%08x)\n\x1b[m" #Unauthorized release
    .balign 4

glabel D_8014ACE0
    .asciz "\x1b[41;37m__osFree:二重解放(%08x)\n\x1b[m" #Double release
    .balign 4

glabel D_8014AD04
    .asciz "\x1b[41;37m__osFree:確保時と違う方法で解放しようとした (%08x:%08x)\n\x1b[m" #Tried to release in a different way than when it was secured
    .balign 4


.text
glabel __osFree_NoLock
/* B75784 800FE5E4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B75788 800FE5E8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B7578C 800FE5EC AFB10018 */  sw    $s1, 0x18($sp)
/* B75790 800FE5F0 AFB00014 */  sw    $s0, 0x14($sp)
/* B75794 800FE5F4 10A00076 */  beqz  $a1, .L800FE7D0
/* B75798 800FE5F8 00803825 */   move  $a3, $a0
/* B7579C 800FE5FC 24B0FFD0 */  addiu $s0, $a1, -0x30
/* B757A0 800FE600 12000005 */  beqz  $s0, .L800FE618
/* B757A4 800FE604 3C048015 */   lui   $a0, %hi(D_8014ACBC) # $a0, 0x8015
/* B757A8 800FE608 860E0000 */  lh    $t6, ($s0)
/* B757AC 800FE60C 24017373 */  li    $at, 29555
/* B757B0 800FE610 51C10006 */  beql  $t6, $at, .L800FE62C
/* B757B4 800FE614 860F0002 */   lh    $t7, 2($s0)
.L800FE618:
/* B757B8 800FE618 0C00084C */  jal   osSyncPrintf
/* B757BC 800FE61C 2484ACBC */   addiu $a0, %lo(D_8014ACBC) # addiu $a0, $a0, -0x5344
/* B757C0 800FE620 1000006C */  b     .L800FE7D4
/* B757C4 800FE624 8FBF001C */   lw    $ra, 0x1c($sp)
/* B757C8 800FE628 860F0002 */  lh    $t7, 2($s0)
.L800FE62C:
/* B757CC 800FE62C 3C048015 */  lui   $a0, %hi(D_8014ACE0) # $a0, 0x8015
/* B757D0 800FE630 51E00006 */  beql  $t7, $zero, .L800FE64C
/* B757D4 800FE634 8E06001C */   lw    $a2, 0x1c($s0)
/* B757D8 800FE638 0C00084C */  jal   osSyncPrintf
/* B757DC 800FE63C 2484ACE0 */   addiu $a0, %lo(D_8014ACE0) # addiu $a0, $a0, -0x5320
/* B757E0 800FE640 10000064 */  b     .L800FE7D4
/* B757E4 800FE644 8FBF001C */   lw    $ra, 0x1c($sp)
/* B757E8 800FE648 8E06001C */  lw    $a2, 0x1c($s0)
.L800FE64C:
/* B757EC 800FE64C 02002025 */  move  $a0, $s0
/* B757F0 800FE650 10E60008 */  beq   $a3, $a2, .L800FE674
/* B757F4 800FE654 00000000 */   nop   
/* B757F8 800FE658 10E00006 */  beqz  $a3, .L800FE674
/* B757FC 800FE65C 00E02825 */   move  $a1, $a3
/* B75800 800FE660 3C048015 */  lui   $a0, %hi(D_8014AD04) # $a0, 0x8015
/* B75804 800FE664 0C00084C */  jal   osSyncPrintf
/* B75808 800FE668 2484AD04 */   addiu $a0, %lo(D_8014AD04) # addiu $a0, $a0, -0x52fc
/* B7580C 800FE66C 10000059 */  b     .L800FE7D4
/* B75810 800FE670 8FBF001C */   lw    $ra, 0x1c($sp)
.L800FE674:
/* B75814 800FE674 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75818 800FE678 AFA70030 */   sw    $a3, 0x30($sp)
/* B7581C 800FE67C 00408825 */  move  $s1, $v0
/* B75820 800FE680 0C03F739 */  jal   ArenaImpl_GetPrevBlock
/* B75824 800FE684 02002025 */   move  $a0, $s0
/* B75828 800FE688 24180001 */  li    $t8, 1
/* B7582C 800FE68C A6180002 */  sh    $t8, 2($s0)
/* B75830 800FE690 AFA20024 */  sw    $v0, 0x24($sp)
/* B75834 800FE694 8FA70030 */  lw    $a3, 0x30($sp)
/* B75838 800FE698 02002025 */  move  $a0, $s0
/* B7583C 800FE69C 00002825 */  move  $a1, $zero
/* B75840 800FE6A0 0C03F6F0 */  jal   ArenaImpl_SetDebugInfo
/* B75844 800FE6A4 00003025 */   move  $a2, $zero
/* B75848 800FE6A8 8FB90030 */  lw    $t9, 0x30($sp)
/* B7584C 800FE6AC 8FA30024 */  lw    $v1, 0x24($sp)
/* B75850 800FE6B0 26040030 */  addiu $a0, $s0, 0x30
/* B75854 800FE6B4 93280022 */  lbu   $t0, 0x22($t9)
/* B75858 800FE6B8 240500EF */  li    $a1, 239
/* B7585C 800FE6BC 31090002 */  andi  $t1, $t0, 2
/* B75860 800FE6C0 51200006 */  beql  $t1, $zero, .L800FE6DC
/* B75864 800FE6C4 8E0A0004 */   lw    $t2, 4($s0)
/* B75868 800FE6C8 8E060004 */  lw    $a2, 4($s0)
/* B7586C 800FE6CC 0C041A18 */  jal   func_80106860
/* B75870 800FE6D0 AFA30024 */   sw    $v1, 0x24($sp)
/* B75874 800FE6D4 8FA30024 */  lw    $v1, 0x24($sp)
/* B75878 800FE6D8 8E0A0004 */  lw    $t2, 4($s0)
.L800FE6DC:
/* B7587C 800FE6DC 020A5821 */  addu  $t3, $s0, $t2
/* B75880 800FE6E0 256C0030 */  addiu $t4, $t3, 0x30
/* B75884 800FE6E4 162C001F */  bne   $s1, $t4, .L800FE764
/* B75888 800FE6E8 00000000 */   nop   
/* B7588C 800FE6EC 862D0002 */  lh    $t5, 2($s1)
/* B75890 800FE6F0 02202025 */  move  $a0, $s1
/* B75894 800FE6F4 11A0001B */  beqz  $t5, .L800FE764
/* B75898 800FE6F8 00000000 */   nop   
/* B7589C 800FE6FC 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B758A0 800FE700 AFA30024 */   sw    $v1, 0x24($sp)
/* B758A4 800FE704 8FA30024 */  lw    $v1, 0x24($sp)
/* B758A8 800FE708 10400002 */  beqz  $v0, .L800FE714
/* B758AC 800FE70C 00403825 */   move  $a3, $v0
/* B758B0 800FE710 AC50000C */  sw    $s0, 0xc($v0)
.L800FE714:
/* B758B4 800FE714 8E0E0004 */  lw    $t6, 4($s0)
/* B758B8 800FE718 8E2F0004 */  lw    $t7, 4($s1)
/* B758BC 800FE71C 02202025 */  move  $a0, $s1
/* B758C0 800FE720 240500EF */  li    $a1, 239
/* B758C4 800FE724 01CFC021 */  addu  $t8, $t6, $t7
/* B758C8 800FE728 27190030 */  addiu $t9, $t8, 0x30
/* B758CC 800FE72C AE190004 */  sw    $t9, 4($s0)
/* B758D0 800FE730 8FA80030 */  lw    $t0, 0x30($sp)
/* B758D4 800FE734 24060030 */  li    $a2, 48
/* B758D8 800FE738 91090022 */  lbu   $t1, 0x22($t0)
/* B758DC 800FE73C 312A0002 */  andi  $t2, $t1, 2
/* B758E0 800FE740 51400007 */  beql  $t2, $zero, .L800FE760
/* B758E4 800FE744 AE070008 */   sw    $a3, 8($s0)
/* B758E8 800FE748 AFA30024 */  sw    $v1, 0x24($sp)
/* B758EC 800FE74C 0C041A18 */  jal   func_80106860
/* B758F0 800FE750 AFA70020 */   sw    $a3, 0x20($sp)
/* B758F4 800FE754 8FA30024 */  lw    $v1, 0x24($sp)
/* B758F8 800FE758 8FA70020 */  lw    $a3, 0x20($sp)
/* B758FC 800FE75C AE070008 */  sw    $a3, 8($s0)
.L800FE760:
/* B75900 800FE760 00E08825 */  move  $s1, $a3
.L800FE764:
/* B75904 800FE764 5060001B */  beql  $v1, $zero, .L800FE7D4
/* B75908 800FE768 8FBF001C */   lw    $ra, 0x1c($sp)
/* B7590C 800FE76C 846B0002 */  lh    $t3, 2($v1)
/* B75910 800FE770 51600018 */  beql  $t3, $zero, .L800FE7D4
/* B75914 800FE774 8FBF001C */   lw    $ra, 0x1c($sp)
/* B75918 800FE778 8C620004 */  lw    $v0, 4($v1)
/* B7591C 800FE77C 00626021 */  addu  $t4, $v1, $v0
/* B75920 800FE780 258D0030 */  addiu $t5, $t4, 0x30
/* B75924 800FE784 560D0013 */  bnel  $s0, $t5, .L800FE7D4
/* B75928 800FE788 8FBF001C */   lw    $ra, 0x1c($sp)
/* B7592C 800FE78C 12200003 */  beqz  $s1, .L800FE79C
/* B75930 800FE790 02002025 */   move  $a0, $s0
/* B75934 800FE794 AE23000C */  sw    $v1, 0xc($s1)
/* B75938 800FE798 8C620004 */  lw    $v0, 4($v1)
.L800FE79C:
/* B7593C 800FE79C AC710008 */  sw    $s1, 8($v1)
/* B75940 800FE7A0 8E0E0004 */  lw    $t6, 4($s0)
/* B75944 800FE7A4 240500EF */  li    $a1, 239
/* B75948 800FE7A8 004E7821 */  addu  $t7, $v0, $t6
/* B7594C 800FE7AC 25F80030 */  addiu $t8, $t7, 0x30
/* B75950 800FE7B0 AC780004 */  sw    $t8, 4($v1)
/* B75954 800FE7B4 8FB90030 */  lw    $t9, 0x30($sp)
/* B75958 800FE7B8 93280022 */  lbu   $t0, 0x22($t9)
/* B7595C 800FE7BC 31090002 */  andi  $t1, $t0, 2
/* B75960 800FE7C0 51200004 */  beql  $t1, $zero, .L800FE7D4
/* B75964 800FE7C4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B75968 800FE7C8 0C041A18 */  jal   func_80106860
/* B7596C 800FE7CC 24060030 */   li    $a2, 48
.L800FE7D0:
/* B75970 800FE7D0 8FBF001C */  lw    $ra, 0x1c($sp)
.L800FE7D4:
/* B75974 800FE7D4 8FB00014 */  lw    $s0, 0x14($sp)
/* B75978 800FE7D8 8FB10018 */  lw    $s1, 0x18($sp)
/* B7597C 800FE7DC 03E00008 */  jr    $ra
/* B75980 800FE7E0 27BD0030 */   addiu $sp, $sp, 0x30