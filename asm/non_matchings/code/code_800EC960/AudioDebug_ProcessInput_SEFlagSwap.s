glabel AudioDebug_ProcessInput_SEFlagSwap
/* B69604 800F2464 3C058013 */  lui   $a1, %hi(sAudioSEFlagSwapIsEditing) # $a1, 0x8013
/* B69608 800F2468 24A51F00 */  addiu $a1, %lo(sAudioSEFlagSwapIsEditing) # addiu $a1, $a1, 0x1f00
/* B6960C 800F246C 90AE0000 */  lbu   $t6, ($a1)
/* B69610 800F2470 27BDFFF8 */  addiu $sp, $sp, -8
/* B69614 800F2474 3C028017 */  lui   $v0, %hi(sDebugPadPress) # $v0, 0x8017
/* B69618 800F2478 15C0003F */  bnez  $t6, .L800F2578
/* B6961C 800F247C 00000000 */   nop   
/* B69620 800F2480 8C42BAB8 */  lw    $v0, %lo(sDebugPadPress)($v0)
/* B69624 800F2484 3C048013 */  lui   $a0, %hi(sAudioSEFlagSwapSel) # $a0, 0x8013
/* B69628 800F2488 24841F04 */  addiu $a0, %lo(sAudioSEFlagSwapSel) # addiu $a0, $a0, 0x1f04
/* B6962C 800F248C 304F0800 */  andi  $t7, $v0, 0x800
/* B69630 800F2490 11E00008 */  beqz  $t7, .L800F24B4
/* B69634 800F2494 304C0400 */   andi  $t4, $v0, 0x400
/* B69638 800F2498 90830000 */  lbu   $v1, ($a0)
/* B6963C 800F249C 24190009 */  li    $t9, 9
/* B69640 800F24A0 18600003 */  blez  $v1, .L800F24B0
/* B69644 800F24A4 2478FFFF */   addiu $t8, $v1, -1
/* B69648 800F24A8 10000002 */  b     .L800F24B4
/* B6964C 800F24AC A0980000 */   sb    $t8, ($a0)
.L800F24B0:
/* B69650 800F24B0 A0990000 */  sb    $t9, ($a0)
.L800F24B4:
/* B69654 800F24B4 3C048013 */  lui   $a0, %hi(sAudioSEFlagSwapSel) # $a0, 0x8013
/* B69658 800F24B8 11800008 */  beqz  $t4, .L800F24DC
/* B6965C 800F24BC 24841F04 */   addiu $a0, %lo(sAudioSEFlagSwapSel) # addiu $a0, $a0, 0x1f04
/* B69660 800F24C0 90830000 */  lbu   $v1, ($a0)
/* B69664 800F24C4 28610009 */  slti  $at, $v1, 9
/* B69668 800F24C8 10200003 */  beqz  $at, .L800F24D8
/* B6966C 800F24CC 246D0001 */   addiu $t5, $v1, 1
/* B69670 800F24D0 10000002 */  b     .L800F24DC
/* B69674 800F24D4 A08D0000 */   sb    $t5, ($a0)
.L800F24D8:
/* B69678 800F24D8 A0800000 */  sb    $zero, ($a0)
.L800F24DC:
/* B6967C 800F24DC 304E8000 */  andi  $t6, $v0, 0x8000
/* B69680 800F24E0 11C00003 */  beqz  $t6, .L800F24F0
/* B69684 800F24E4 30584000 */   andi  $t8, $v0, 0x4000
/* B69688 800F24E8 240F0001 */  li    $t7, 1
/* B6968C 800F24EC A0AF0000 */  sb    $t7, ($a1)
.L800F24F0:
/* B69690 800F24F0 13000009 */  beqz  $t8, .L800F2518
/* B69694 800F24F4 30591000 */   andi  $t9, $v0, 0x1000
/* B69698 800F24F8 90860000 */  lbu   $a2, ($a0)
/* B6969C 800F24FC 3C018017 */  lui   $at, %hi(gAudioSEFlagSwapSource)
/* B696A0 800F2500 00063040 */  sll   $a2, $a2, 1
/* B696A4 800F2504 00260821 */  addu  $at, $at, $a2
/* B696A8 800F2508 A420E2E0 */  sh    $zero, %lo(gAudioSEFlagSwapSource)($at)
/* B696AC 800F250C 3C018017 */  lui   $at, %hi(gAudioSEFlagSwapTarget)
/* B696B0 800F2510 00260821 */  addu  $at, $at, $a2
/* B696B4 800F2514 A420E2F8 */  sh    $zero, %lo(gAudioSEFlagSwapTarget)($at)
.L800F2518:
/* B696B8 800F2518 1320008E */  beqz  $t9, .L800F2754
/* B696BC 800F251C 3C0C8017 */   lui   $t4, %hi(gAudioSEFlagSwapSource) # $t4, 0x8017
/* B696C0 800F2520 90830000 */  lbu   $v1, ($a0)
/* B696C4 800F2524 3C0D8017 */  lui   $t5, %hi(gAudioSEFlagSwapTarget) # $t5, 0x8017
/* B696C8 800F2528 25ADE2F8 */  addiu $t5, %lo(gAudioSEFlagSwapTarget) # addiu $t5, $t5, -0x1d08
/* B696CC 800F252C 258CE2E0 */  addiu $t4, %lo(gAudioSEFlagSwapSource) # addiu $t4, $t4, -0x1d20
/* B696D0 800F2530 00033040 */  sll   $a2, $v1, 1
/* B696D4 800F2534 00CC3821 */  addu  $a3, $a2, $t4
/* B696D8 800F2538 10600004 */  beqz  $v1, .L800F254C
/* B696DC 800F253C 00CD4021 */   addu  $t0, $a2, $t5
/* B696E0 800F2540 2463FFFF */  addiu $v1, $v1, -1
/* B696E4 800F2544 10000002 */  b     .L800F2550
/* B696E8 800F2548 306300FF */   andi  $v1, $v1, 0xff
.L800F254C:
/* B696EC 800F254C 24030009 */  li    $v1, 9
.L800F2550:
/* B696F0 800F2550 00032840 */  sll   $a1, $v1, 1
/* B696F4 800F2554 3C0E8017 */  lui   $t6, %hi(gAudioSEFlagSwapSource)
/* B696F8 800F2558 01C57021 */  addu  $t6, $t6, $a1
/* B696FC 800F255C 95CEE2E0 */  lhu   $t6, %lo(gAudioSEFlagSwapSource)($t6)
/* B69700 800F2560 3C0F8017 */  lui   $t7, %hi(gAudioSEFlagSwapTarget)
/* B69704 800F2564 01E57821 */  addu  $t7, $t7, $a1
/* B69708 800F2568 A4EE0000 */  sh    $t6, ($a3)
/* B6970C 800F256C 95EFE2F8 */  lhu   $t7, %lo(gAudioSEFlagSwapTarget)($t7)
/* B69710 800F2570 10000078 */  b     .L800F2754
/* B69714 800F2574 A50F0000 */   sh    $t7, ($t0)
.L800F2578:
/* B69718 800F2578 3C028017 */  lui   $v0, %hi(sDebugPadPress) # $v0, 0x8017
/* B6971C 800F257C 8C42BAB8 */  lw    $v0, %lo(sDebugPadPress)($v0)
/* B69720 800F2580 30580200 */  andi  $t8, $v0, 0x200
/* B69724 800F2584 1300000A */  beqz  $t8, .L800F25B0
/* B69728 800F2588 304D0100 */   andi  $t5, $v0, 0x100
/* B6972C 800F258C 3C038013 */  lui   $v1, %hi(sAudioSEFlagSwapNibbleSel) # $v1, 0x8013
/* B69730 800F2590 24631F08 */  addiu $v1, %lo(sAudioSEFlagSwapNibbleSel) # addiu $v1, $v1, 0x1f08
/* B69734 800F2594 90640000 */  lbu   $a0, ($v1)
/* B69738 800F2598 240C0007 */  li    $t4, 7
/* B6973C 800F259C 18800003 */  blez  $a0, .L800F25AC
/* B69740 800F25A0 2499FFFF */   addiu $t9, $a0, -1
/* B69744 800F25A4 10000002 */  b     .L800F25B0
/* B69748 800F25A8 A0790000 */   sb    $t9, ($v1)
.L800F25AC:
/* B6974C 800F25AC A06C0000 */  sb    $t4, ($v1)
.L800F25B0:
/* B69750 800F25B0 3C038013 */  lui   $v1, %hi(sAudioSEFlagSwapNibbleSel) # $v1, 0x8013
/* B69754 800F25B4 11A00008 */  beqz  $t5, .L800F25D8
/* B69758 800F25B8 24631F08 */   addiu $v1, %lo(sAudioSEFlagSwapNibbleSel) # addiu $v1, $v1, 0x1f08
/* B6975C 800F25BC 90640000 */  lbu   $a0, ($v1)
/* B69760 800F25C0 28810007 */  slti  $at, $a0, 7
/* B69764 800F25C4 10200003 */  beqz  $at, .L800F25D4
/* B69768 800F25C8 248E0001 */   addiu $t6, $a0, 1
/* B6976C 800F25CC 10000002 */  b     .L800F25D8
/* B69770 800F25D0 A06E0000 */   sb    $t6, ($v1)
.L800F25D4:
/* B69774 800F25D4 A0600000 */  sb    $zero, ($v1)
.L800F25D8:
/* B69778 800F25D8 30440800 */  andi  $a0, $v0, 0x800
/* B6977C 800F25DC 14800003 */  bnez  $a0, .L800F25EC
/* B69780 800F25E0 304F0400 */   andi  $t7, $v0, 0x400
/* B69784 800F25E4 11E00047 */  beqz  $t7, .L800F2704
/* B69788 800F25E8 00000000 */   nop   
.L800F25EC:
/* B6978C 800F25EC 1080000B */  beqz  $a0, .L800F261C
/* B69790 800F25F0 30460400 */   andi  $a2, $v0, 0x400
/* B69794 800F25F4 3C188017 */  lui   $t8, %hi(sDebugPadHold) # $t8, 0x8017
/* B69798 800F25F8 8F18BAB0 */  lw    $t8, %lo(sDebugPadHold)($t8)
/* B6979C 800F25FC 24090001 */  li    $t1, 1
/* B697A0 800F2600 33190008 */  andi  $t9, $t8, 8
/* B697A4 800F2604 53200005 */  beql  $t9, $zero, .L800F261C
/* B697A8 800F2608 A7A90006 */   sh    $t1, 6($sp)
/* B697AC 800F260C 24090008 */  li    $t1, 8
/* B697B0 800F2610 10000002 */  b     .L800F261C
/* B697B4 800F2614 A7A90006 */   sh    $t1, 6($sp)
/* B697B8 800F2618 A7A90006 */  sh    $t1, 6($sp)
.L800F261C:
/* B697BC 800F261C 10C00009 */  beqz  $a2, .L800F2644
/* B697C0 800F2620 87A90006 */   lh    $t1, 6($sp)
/* B697C4 800F2624 3C0C8017 */  lui   $t4, %hi(sDebugPadHold) # $t4, 0x8017
/* B697C8 800F2628 8D8CBAB0 */  lw    $t4, %lo(sDebugPadHold)($t4)
/* B697CC 800F262C 2409FFFF */  li    $t1, -1
/* B697D0 800F2630 318D0008 */  andi  $t5, $t4, 8
/* B697D4 800F2634 11A00003 */  beqz  $t5, .L800F2644
/* B697D8 800F2638 00000000 */   nop   
/* B697DC 800F263C 10000001 */  b     .L800F2644
/* B697E0 800F2640 2409FFF8 */   li    $t1, -8
.L800F2644:
/* B697E4 800F2644 90660000 */  lbu   $a2, ($v1)
/* B697E8 800F2648 3C048013 */  lui   $a0, %hi(sAudioSEFlagSwapSel) # $a0, 0x8013
/* B697EC 800F264C 24841F04 */  addiu $a0, %lo(sAudioSEFlagSwapSel) # addiu $a0, $a0, 0x1f04
/* B697F0 800F2650 28C10004 */  slti  $at, $a2, 4
/* B697F4 800F2654 10200015 */  beqz  $at, .L800F26AC
/* B697F8 800F2658 3C188017 */   lui   $t8, %hi(gAudioSEFlagSwapSource) # $t8, 0x8017
/* B697FC 800F265C 908E0000 */  lbu   $t6, ($a0)
/* B69800 800F2660 2718E2E0 */  addiu $t8, %lo(gAudioSEFlagSwapSource) # addiu $t8, $t8, -0x1d20
/* B69804 800F2664 00065823 */  negu  $t3, $a2
/* B69808 800F2668 000E7840 */  sll   $t7, $t6, 1
/* B6980C 800F266C 01F83821 */  addu  $a3, $t7, $t8
/* B69810 800F2670 94E80000 */  lhu   $t0, ($a3)
/* B69814 800F2674 000B5880 */  sll   $t3, $t3, 2
/* B69818 800F2678 256B000C */  addiu $t3, $t3, 0xc
/* B6981C 800F267C 01685007 */  srav  $t2, $t0, $t3
/* B69820 800F2680 01495021 */  addu  $t2, $t2, $t1
/* B69824 800F2684 2419000F */  li    $t9, 15
/* B69828 800F2688 314A000F */  andi  $t2, $t2, 0xf
/* B6982C 800F268C 01796004 */  sllv  $t4, $t9, $t3
/* B69830 800F2690 314AFFFF */  andi  $t2, $t2, 0xffff
/* B69834 800F2694 398DFFFF */  xori  $t5, $t4, 0xffff
/* B69838 800F2698 016A7804 */  sllv  $t7, $t2, $t3
/* B6983C 800F269C 010D7024 */  and   $t6, $t0, $t5
/* B69840 800F26A0 01CFC021 */  addu  $t8, $t6, $t7
/* B69844 800F26A4 10000017 */  b     .L800F2704
/* B69848 800F26A8 A4F80000 */   sh    $t8, ($a3)
.L800F26AC:
/* B6984C 800F26AC 3C048013 */  lui   $a0, %hi(sAudioSEFlagSwapSel) # $a0, 0x8013
/* B69850 800F26B0 24841F04 */  addiu $a0, %lo(sAudioSEFlagSwapSel) # addiu $a0, $a0, 0x1f04
/* B69854 800F26B4 90990000 */  lbu   $t9, ($a0)
/* B69858 800F26B8 3C0D8017 */  lui   $t5, %hi(gAudioSEFlagSwapTarget) # $t5, 0x8017
/* B6985C 800F26BC 25ADE2F8 */  addiu $t5, %lo(gAudioSEFlagSwapTarget) # addiu $t5, $t5, -0x1d08
/* B69860 800F26C0 00196040 */  sll   $t4, $t9, 1
/* B69864 800F26C4 018D4021 */  addu  $t0, $t4, $t5
/* B69868 800F26C8 95070000 */  lhu   $a3, ($t0)
/* B6986C 800F26CC 00065823 */  negu  $t3, $a2
/* B69870 800F26D0 000B5880 */  sll   $t3, $t3, 2
/* B69874 800F26D4 256B001C */  addiu $t3, $t3, 0x1c
/* B69878 800F26D8 01675007 */  srav  $t2, $a3, $t3
/* B6987C 800F26DC 01495021 */  addu  $t2, $t2, $t1
/* B69880 800F26E0 240E000F */  li    $t6, 15
/* B69884 800F26E4 314A000F */  andi  $t2, $t2, 0xf
/* B69888 800F26E8 016E7804 */  sllv  $t7, $t6, $t3
/* B6988C 800F26EC 314AFFFF */  andi  $t2, $t2, 0xffff
/* B69890 800F26F0 39F8FFFF */  xori  $t8, $t7, 0xffff
/* B69894 800F26F4 016A6004 */  sllv  $t4, $t2, $t3
/* B69898 800F26F8 00F8C824 */  and   $t9, $a3, $t8
/* B6989C 800F26FC 032C6821 */  addu  $t5, $t9, $t4
/* B698A0 800F2700 A50D0000 */  sh    $t5, ($t0)
.L800F2704:
/* B698A4 800F2704 3C048013 */  lui   $a0, %hi(sAudioSEFlagSwapSel) # $a0, 0x8013
/* B698A8 800F2708 304E8000 */  andi  $t6, $v0, 0x8000
/* B698AC 800F270C 11C00002 */  beqz  $t6, .L800F2718
/* B698B0 800F2710 24841F04 */   addiu $a0, %lo(sAudioSEFlagSwapSel) # addiu $a0, $a0, 0x1f04
/* B698B4 800F2714 A0A00000 */  sb    $zero, ($a1)
.L800F2718:
/* B698B8 800F2718 304F4000 */  andi  $t7, $v0, 0x4000
/* B698BC 800F271C 51E0000E */  beql  $t7, $zero, .L800F2758
/* B698C0 800F2720 30590002 */   andi  $t9, $v0, 2
/* B698C4 800F2724 90780000 */  lbu   $t8, ($v1)
/* B698C8 800F2728 90860000 */  lbu   $a2, ($a0)
/* B698CC 800F272C 2B010004 */  slti  $at, $t8, 4
/* B698D0 800F2730 10200005 */  beqz  $at, .L800F2748
/* B698D4 800F2734 00063040 */   sll   $a2, $a2, 1
/* B698D8 800F2738 3C018017 */  lui   $at, %hi(gAudioSEFlagSwapSource)
/* B698DC 800F273C 00260821 */  addu  $at, $at, $a2
/* B698E0 800F2740 10000004 */  b     .L800F2754
/* B698E4 800F2744 A420E2E0 */   sh    $zero, %lo(gAudioSEFlagSwapSource)($at)
.L800F2748:
/* B698E8 800F2748 3C018017 */  lui   $at, %hi(gAudioSEFlagSwapTarget)
/* B698EC 800F274C 00260821 */  addu  $at, $at, $a2
/* B698F0 800F2750 A420E2F8 */  sh    $zero, %lo(gAudioSEFlagSwapTarget)($at)
.L800F2754:
/* B698F4 800F2754 30590002 */  andi  $t9, $v0, 2
.L800F2758:
/* B698F8 800F2758 13200006 */  beqz  $t9, .L800F2774
/* B698FC 800F275C 304E0004 */   andi  $t6, $v0, 4
/* B69900 800F2760 3C038013 */  lui   $v1, %hi(gAudioSEFlagSwapOff) # $v1, 0x8013
/* B69904 800F2764 246333F4 */  addiu $v1, %lo(gAudioSEFlagSwapOff) # addiu $v1, $v1, 0x33f4
/* B69908 800F2768 906C0000 */  lbu   $t4, ($v1)
/* B6990C 800F276C 398D0001 */  xori  $t5, $t4, 1
/* B69910 800F2770 A06D0000 */  sb    $t5, ($v1)
.L800F2774:
/* B69914 800F2774 11C00008 */  beqz  $t6, .L800F2798
/* B69918 800F2778 00000000 */   nop   
/* B6991C 800F277C 908F0000 */  lbu   $t7, ($a0)
/* B69920 800F2780 3C188017 */  lui   $t8, %hi(gAudioSEFlagSwapMode) # $t8, 0x8017
/* B69924 800F2784 2718E310 */  addiu $t8, %lo(gAudioSEFlagSwapMode) # addiu $t8, $t8, -0x1cf0
/* B69928 800F2788 01F81021 */  addu  $v0, $t7, $t8
/* B6992C 800F278C 90590000 */  lbu   $t9, ($v0)
/* B69930 800F2790 3B2C0001 */  xori  $t4, $t9, 1
/* B69934 800F2794 A04C0000 */  sb    $t4, ($v0)
.L800F2798:
/* B69938 800F2798 03E00008 */  jr    $ra
/* B6993C 800F279C 27BD0008 */   addiu $sp, $sp, 8

