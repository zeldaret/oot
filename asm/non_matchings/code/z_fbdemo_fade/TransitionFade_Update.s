.rdata
glabel D_801430C0
    .asciz "\x1b[41;37m０除算! ZCommonGet fade_speed に０がはいってる\x1b[m"
    # EUC-JP: ０除算! ZCommonGet fade_speed に０がはいってる | Divide by zero! Zero is entered in ZCommonGetfade_speed
    .balign 4

.text
glabel TransitionFade_Update
/* B2A708 800B3568 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B2A70C 800B356C AFBF0014 */  sw    $ra, 0x14($sp)
/* B2A710 800B3570 90820000 */  lbu   $v0, ($a0)
/* B2A714 800B3574 00803825 */  move  $a3, $a0
/* B2A718 800B3578 24010001 */  li    $at, 1
/* B2A71C 800B357C 50400063 */  beql  $v0, $zero, .L800B370C
/* B2A720 800B3580 8FBF0014 */   lw    $ra, 0x14($sp)
/* B2A724 800B3584 10410005 */  beq   $v0, $at, .L800B359C
/* B2A728 800B3588 24010002 */   li    $at, 2
/* B2A72C 800B358C 50410037 */  beql  $v0, $at, .L800B366C
/* B2A730 800B3590 90ED0007 */   lbu   $t5, 7($a3)
/* B2A734 800B3594 1000005D */  b     .L800B370C
/* B2A738 800B3598 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B359C:
/* B2A73C 800B359C 94EE0008 */  lhu   $t6, 8($a3)
/* B2A740 800B35A0 3C028016 */  lui   $v0, %hi(gSaveContext+0x1418) # $v0, 0x8016
/* B2A744 800B35A4 3C048014 */  lui   $a0, %hi(D_801430C0) # $a0, 0x8014
/* B2A748 800B35A8 01C57821 */  addu  $t7, $t6, $a1
/* B2A74C 800B35AC A4EF0008 */  sh    $t7, 8($a3)
/* B2A750 800B35B0 9042FA78 */  lbu   $v0, %lo(gSaveContext+0x1418)($v0)
/* B2A754 800B35B4 31F8FFFF */  andi  $t8, $t7, 0xffff
/* B2A758 800B35B8 24190001 */  li    $t9, 1
/* B2A75C 800B35BC 0302082A */  slt   $at, $t8, $v0
/* B2A760 800B35C0 14200005 */  bnez  $at, .L800B35D8
/* B2A764 800B35C4 248430C0 */   addiu $a0, %lo(D_801430C0) # addiu $a0, $a0, 0x30c0
/* B2A768 800B35C8 A4E20008 */  sh    $v0, 8($a3)
/* B2A76C 800B35CC 3C028016 */  lui   $v0, %hi(gSaveContext+0x1418) # $v0, 0x8016
/* B2A770 800B35D0 A0F90001 */  sb    $t9, 1($a3)
/* B2A774 800B35D4 9042FA78 */  lbu   $v0, %lo(gSaveContext+0x1418)($v0)
.L800B35D8:
/* B2A778 800B35D8 54400007 */  bnezl $v0, .L800B35F8
/* B2A77C 800B35DC 94E80008 */   lhu   $t0, 8($a3)
/* B2A780 800B35E0 0C00084C */  jal   osSyncPrintf
/* B2A784 800B35E4 AFA70030 */   sw    $a3, 0x30($sp)
/* B2A788 800B35E8 3C028016 */  lui   $v0, %hi(gSaveContext+0x1418) # $v0, 0x8016
/* B2A78C 800B35EC 9042FA78 */  lbu   $v0, %lo(gSaveContext+0x1418)($v0)
/* B2A790 800B35F0 8FA70030 */  lw    $a3, 0x30($sp)
/* B2A794 800B35F4 94E80008 */  lhu   $t0, 8($a3)
.L800B35F8:
/* B2A798 800B35F8 3C01437F */  li    $at, 0x437F0000 # 0.000000
/* B2A79C 800B35FC 44812000 */  mtc1  $at, $f4
/* B2A7A0 800B3600 44883000 */  mtc1  $t0, $f6
/* B2A7A4 800B3604 44829000 */  mtc1  $v0, $f18
/* B2A7A8 800B3608 05010005 */  bgez  $t0, .L800B3620
/* B2A7AC 800B360C 46803220 */   cvt.s.w $f8, $f6
/* B2A7B0 800B3610 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B2A7B4 800B3614 44815000 */  mtc1  $at, $f10
/* B2A7B8 800B3618 00000000 */  nop
/* B2A7BC 800B361C 460A4200 */  add.s $f8, $f8, $f10
.L800B3620:
/* B2A7C0 800B3620 46082402 */  mul.s $f16, $f4, $f8
/* B2A7C4 800B3624 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B2A7C8 800B3628 240B00FF */  li    $t3, 255
/* B2A7CC 800B362C 04410004 */  bgez  $v0, .L800B3640
/* B2A7D0 800B3630 468091A0 */   cvt.s.w $f6, $f18
/* B2A7D4 800B3634 44815000 */  mtc1  $at, $f10
/* B2A7D8 800B3638 00000000 */  nop
/* B2A7DC 800B363C 460A3180 */  add.s $f6, $f6, $f10
.L800B3640:
/* B2A7E0 800B3640 46068103 */  div.s $f4, $f16, $f6
/* B2A7E4 800B3644 90EA0002 */  lbu   $t2, 2($a3)
/* B2A7E8 800B3648 4600220D */  trunc.w.s $f8, $f4
/* B2A7EC 800B364C 44034000 */  mfc1  $v1, $f8
/* B2A7F0 800B3650 11400003 */  beqz  $t2, .L800B3660
/* B2A7F4 800B3654 01636023 */   subu  $t4, $t3, $v1
/* B2A7F8 800B3658 1000002B */  b     .L800B3708
/* B2A7FC 800B365C A0EC0007 */   sb    $t4, 7($a3)
.L800B3660:
/* B2A800 800B3660 10000029 */  b     .L800B3708
/* B2A804 800B3664 A0E30007 */   sb    $v1, 7($a3)
/* B2A808 800B3668 90ED0007 */  lbu   $t5, 7($a3)
.L800B366C:
/* B2A80C 800B366C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B2A810 800B3670 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B2A814 800B3674 A7AD002A */  sh    $t5, 0x2a($sp)
/* B2A818 800B3678 84430D38 */  lh    $v1, 0xd38($v0)
/* B2A81C 800B367C 50600021 */  beql  $v1, $zero, .L800B3704
/* B2A820 800B3680 87A9002A */   lh    $t1, 0x2a($sp)
/* B2A824 800B3684 0461000D */  bgez  $v1, .L800B36BC
/* B2A828 800B3688 24440D38 */   addiu $a0, $v0, 0xd38
/* B2A82C 800B368C 27A4002A */  addiu $a0, $sp, 0x2a
/* B2A830 800B3690 240500FF */  li    $a1, 255
/* B2A834 800B3694 240600FF */  li    $a2, 255
/* B2A838 800B3698 0C01DE5F */  jal   Math_ApproxS
/* B2A83C 800B369C AFA70030 */   sw    $a3, 0x30($sp)
/* B2A840 800B36A0 10400017 */  beqz  $v0, .L800B3700
/* B2A844 800B36A4 8FA70030 */   lw    $a3, 0x30($sp)
/* B2A848 800B36A8 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* B2A84C 800B36AC 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* B2A850 800B36B0 240E0096 */  li    $t6, 150
/* B2A854 800B36B4 10000012 */  b     .L800B3700
/* B2A858 800B36B8 A5EE0D38 */   sh    $t6, 0xd38($t7)
.L800B36BC:
/* B2A85C 800B36BC 24050014 */  li    $a1, 20
/* B2A860 800B36C0 2406003C */  li    $a2, 60
/* B2A864 800B36C4 0C01DE5F */  jal   Math_ApproxS
/* B2A868 800B36C8 AFA70030 */   sw    $a3, 0x30($sp)
/* B2A86C 800B36CC 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* B2A870 800B36D0 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* B2A874 800B36D4 27A4002A */  addiu $a0, $sp, 0x2a
/* B2A878 800B36D8 00002825 */  move  $a1, $zero
/* B2A87C 800B36DC 0C01DE5F */  jal   Math_ApproxS
/* B2A880 800B36E0 87060D38 */   lh    $a2, 0xd38($t8)
/* B2A884 800B36E4 10400006 */  beqz  $v0, .L800B3700
/* B2A888 800B36E8 8FA70030 */   lw    $a3, 0x30($sp)
/* B2A88C 800B36EC 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* B2A890 800B36F0 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* B2A894 800B36F4 24080001 */  li    $t0, 1
/* B2A898 800B36F8 A7200D38 */  sh    $zero, 0xd38($t9)
/* B2A89C 800B36FC A0E80001 */  sb    $t0, 1($a3)
.L800B3700:
/* B2A8A0 800B3700 87A9002A */  lh    $t1, 0x2a($sp)
.L800B3704:
/* B2A8A4 800B3704 A0E90007 */  sb    $t1, 7($a3)
.L800B3708:
/* B2A8A8 800B3708 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B370C:
/* B2A8AC 800B370C 27BD0030 */  addiu $sp, $sp, 0x30
/* B2A8B0 800B3710 03E00008 */  jr    $ra
/* B2A8B4 800B3714 00000000 */   nop
