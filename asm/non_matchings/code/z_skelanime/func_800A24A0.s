.rdata
glabel D_80140328
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014033C
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel func_800A24A0
/* B19640 800A24A0 27BDFF98 */  addiu $sp, $sp, -0x68
/* B19644 800A24A4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B19648 800A24A8 AFB00030 */  sw    $s0, 0x30($sp)
/* B1964C 800A24AC AFA40068 */  sw    $a0, 0x68($sp)
/* B19650 800A24B0 AFA5006C */  sw    $a1, 0x6c($sp)
/* B19654 800A24B4 AFA60070 */  sw    $a2, 0x70($sp)
/* B19658 800A24B8 0C034213 */  jal   Matrix_Push
/* B1965C 800A24BC AFA70074 */   sw    $a3, 0x74($sp)
/* B19660 800A24C0 8FAF006C */  lw    $t7, 0x6c($sp)
/* B19664 800A24C4 8FAE0070 */  lw    $t6, 0x70($sp)
/* B19668 800A24C8 3C0C8016 */  lui   $t4, %hi(gSegments)
/* B1966C 800A24CC 000FC080 */  sll   $t8, $t7, 2
/* B19670 800A24D0 01D8C821 */  addu  $t9, $t6, $t8
/* B19674 800A24D4 8F220000 */  lw    $v0, ($t9)
/* B19678 800A24D8 25ED0001 */  addiu $t5, $t7, 1
/* B1967C 800A24DC 8FB80074 */  lw    $t8, 0x74($sp)
/* B19680 800A24E0 000DC880 */  sll   $t9, $t5, 2
/* B19684 800A24E4 00024900 */  sll   $t1, $v0, 4
/* B19688 800A24E8 00095702 */  srl   $t2, $t1, 0x1c
/* B1968C 800A24EC 032DC823 */  subu  $t9, $t9, $t5
/* B19690 800A24F0 000A5880 */  sll   $t3, $t2, 2
/* B19694 800A24F4 0019C840 */  sll   $t9, $t9, 1
/* B19698 800A24F8 018B6021 */  addu  $t4, $t4, $t3
/* B1969C 800A24FC AFAD006C */  sw    $t5, 0x6c($sp)
/* B196A0 800A2500 03194821 */  addu  $t1, $t8, $t9
/* B196A4 800A2504 892B0000 */  lwl   $t3, ($t1)
/* B196A8 800A2508 992B0003 */  lwr   $t3, 3($t1)
/* B196AC 800A250C 8D8C6FA8 */  lw    $t4, %lo(gSegments)($t4)
/* B196B0 800A2510 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B196B4 800A2514 27AE0048 */  addiu $t6, $sp, 0x48
/* B196B8 800A2518 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B196BC 800A251C ADCB0000 */  sw    $t3, ($t6)
/* B196C0 800A2520 952B0004 */  lhu   $t3, 4($t1)
/* B196C4 800A2524 00414024 */  and   $t0, $v0, $at
/* B196C8 800A2528 3C018000 */  lui   $at, 0x8000
/* B196CC 800A252C 010C8021 */  addu  $s0, $t0, $t4
/* B196D0 800A2530 02018021 */  addu  $s0, $s0, $at
/* B196D4 800A2534 A5CB0004 */  sh    $t3, 4($t6)
/* B196D8 800A2538 86080000 */  lh    $t0, ($s0)
/* B196DC 800A253C 8FB90078 */  lw    $t9, 0x78($sp)
/* B196E0 800A2540 8FA5006C */  lw    $a1, 0x6c($sp)
/* B196E4 800A2544 44882000 */  mtc1  $t0, $f4
/* B196E8 800A2548 8FA40068 */  lw    $a0, 0x68($sp)
/* B196EC 800A254C 27AE0048 */  addiu $t6, $sp, 0x48
/* B196F0 800A2550 468021A0 */  cvt.s.w $f6, $f4
/* B196F4 800A2554 27AA0088 */  addiu $t2, $sp, 0x88
/* B196F8 800A2558 27A60060 */  addiu $a2, $sp, 0x60
/* B196FC 800A255C 27A70050 */  addiu $a3, $sp, 0x50
/* B19700 800A2560 E7A60050 */  swc1  $f6, 0x50($sp)
/* B19704 800A2564 860C0002 */  lh    $t4, 2($s0)
/* B19708 800A2568 448C4000 */  mtc1  $t4, $f8
/* B1970C 800A256C 00000000 */  nop   
/* B19710 800A2570 468042A0 */  cvt.s.w $f10, $f8
/* B19714 800A2574 E7AA0054 */  swc1  $f10, 0x54($sp)
/* B19718 800A2578 860F0004 */  lh    $t7, 4($s0)
/* B1971C 800A257C 448F8000 */  mtc1  $t7, $f16
/* B19720 800A2580 00000000 */  nop   
/* B19724 800A2584 468084A0 */  cvt.s.w $f18, $f16
/* B19728 800A2588 E7B20058 */  swc1  $f18, 0x58($sp)
/* B1972C 800A258C 8E0D0008 */  lw    $t5, 8($s0)
/* B19730 800A2590 AFAD005C */  sw    $t5, 0x5c($sp)
/* B19734 800A2594 13200007 */  beqz  $t9, .L800A25B4
/* B19738 800A2598 AFAD0060 */   sw    $t5, 0x60($sp)
/* B1973C 800A259C 8FA90080 */  lw    $t1, 0x80($sp)
/* B19740 800A25A0 AFAE0010 */  sw    $t6, 0x10($sp)
/* B19744 800A25A4 AFAA0018 */  sw    $t2, 0x18($sp)
/* B19748 800A25A8 0320F809 */  jalr  $t9
/* B1974C 800A25AC AFA90014 */  sw    $t1, 0x14($sp)
/* B19750 800A25B0 1440002C */  bnez  $v0, .L800A2664
.L800A25B4:
/* B19754 800A25B4 27A40050 */   addiu $a0, $sp, 0x50
/* B19758 800A25B8 0C0344D0 */  jal   func_800D1340
/* B1975C 800A25BC 27A50048 */   addiu $a1, $sp, 0x48
/* B19760 800A25C0 8FAB0060 */  lw    $t3, 0x60($sp)
/* B19764 800A25C4 8FA80084 */  lw    $t0, 0x84($sp)
/* B19768 800A25C8 3C058014 */  lui   $a1, %hi(D_80140328) # $a1, 0x8014
/* B1976C 800A25CC 1160001A */  beqz  $t3, .L800A2638
/* B19770 800A25D0 8FAD005C */   lw    $t5, 0x5c($sp)
/* B19774 800A25D4 8D040000 */  lw    $a0, ($t0)
/* B19778 800A25D8 24A50328 */  addiu $a1, %lo(D_80140328) # addiu $a1, $a1, 0x328
/* B1977C 800A25DC 0C034695 */  jal   Matrix_ToMtx
/* B19780 800A25E0 24060657 */   li    $a2, 1623
/* B19784 800A25E4 8FAC0088 */  lw    $t4, 0x88($sp)
/* B19788 800A25E8 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* B1978C 800A25EC 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* B19790 800A25F0 258F0008 */  addiu $t7, $t4, 8
/* B19794 800A25F4 AFAF0088 */  sw    $t7, 0x88($sp)
/* B19798 800A25F8 AD8D0000 */  sw    $t5, ($t4)
/* B1979C 800A25FC 8FB80084 */  lw    $t8, 0x84($sp)
/* B197A0 800A2600 3C19DE00 */  lui   $t9, 0xde00
/* B197A4 800A2604 8F0E0000 */  lw    $t6, ($t8)
/* B197A8 800A2608 AD8E0004 */  sw    $t6, 4($t4)
/* B197AC 800A260C 8FA90088 */  lw    $t1, 0x88($sp)
/* B197B0 800A2610 252A0008 */  addiu $t2, $t1, 8
/* B197B4 800A2614 AFAA0088 */  sw    $t2, 0x88($sp)
/* B197B8 800A2618 AD390000 */  sw    $t9, ($t1)
/* B197BC 800A261C 8FAB0060 */  lw    $t3, 0x60($sp)
/* B197C0 800A2620 AD2B0004 */  sw    $t3, 4($t1)
/* B197C4 800A2624 8FA80084 */  lw    $t0, 0x84($sp)
/* B197C8 800A2628 8D0C0000 */  lw    $t4, ($t0)
/* B197CC 800A262C 258F0040 */  addiu $t7, $t4, 0x40
/* B197D0 800A2630 1000000C */  b     .L800A2664
/* B197D4 800A2634 AD0F0000 */   sw    $t7, ($t0)
.L800A2638:
/* B197D8 800A2638 11A0000A */  beqz  $t5, .L800A2664
/* B197DC 800A263C 8FB80084 */   lw    $t8, 0x84($sp)
/* B197E0 800A2640 3C058014 */  lui   $a1, %hi(D_8014033C) # $a1, 0x8014
/* B197E4 800A2644 24A5033C */  addiu $a1, %lo(D_8014033C) # addiu $a1, $a1, 0x33c
/* B197E8 800A2648 8F040000 */  lw    $a0, ($t8)
/* B197EC 800A264C 0C034695 */  jal   Matrix_ToMtx
/* B197F0 800A2650 2406065E */   li    $a2, 1630
/* B197F4 800A2654 8FAE0084 */  lw    $t6, 0x84($sp)
/* B197F8 800A2658 8DC90000 */  lw    $t1, ($t6)
/* B197FC 800A265C 252A0040 */  addiu $t2, $t1, 0x40
/* B19800 800A2660 ADCA0000 */  sw    $t2, ($t6)
.L800A2664:
/* B19804 800A2664 8FB9007C */  lw    $t9, 0x7c($sp)
/* B19808 800A2668 8FA40068 */  lw    $a0, 0x68($sp)
/* B1980C 800A266C 8FA5006C */  lw    $a1, 0x6c($sp)
/* B19810 800A2670 13200007 */  beqz  $t9, .L800A2690
/* B19814 800A2674 27A6005C */   addiu $a2, $sp, 0x5c
/* B19818 800A2678 8FAB0080 */  lw    $t3, 0x80($sp)
/* B1981C 800A267C 27AC0088 */  addiu $t4, $sp, 0x88
/* B19820 800A2680 AFAC0014 */  sw    $t4, 0x14($sp)
/* B19824 800A2684 27A70048 */  addiu $a3, $sp, 0x48
/* B19828 800A2688 0320F809 */  jalr  $t9
/* B1982C 800A268C AFAB0010 */  sw    $t3, 0x10($sp)
.L800A2690:
/* B19830 800A2690 92050006 */  lbu   $a1, 6($s0)
/* B19834 800A2694 240100FF */  li    $at, 255
/* B19838 800A2698 8FA40068 */  lw    $a0, 0x68($sp)
/* B1983C 800A269C 10A1000E */  beq   $a1, $at, .L800A26D8
/* B19840 800A26A0 8FA60070 */   lw    $a2, 0x70($sp)
/* B19844 800A26A4 8FAF0078 */  lw    $t7, 0x78($sp)
/* B19848 800A26A8 8FA8007C */  lw    $t0, 0x7c($sp)
/* B1984C 800A26AC 8FAD0080 */  lw    $t5, 0x80($sp)
/* B19850 800A26B0 8FB80084 */  lw    $t8, 0x84($sp)
/* B19854 800A26B4 8FA90088 */  lw    $t1, 0x88($sp)
/* B19858 800A26B8 8FA70074 */  lw    $a3, 0x74($sp)
/* B1985C 800A26BC AFAF0010 */  sw    $t7, 0x10($sp)
/* B19860 800A26C0 AFA80014 */  sw    $t0, 0x14($sp)
/* B19864 800A26C4 AFAD0018 */  sw    $t5, 0x18($sp)
/* B19868 800A26C8 AFB8001C */  sw    $t8, 0x1c($sp)
/* B1986C 800A26CC 0C028928 */  jal   func_800A24A0
/* B19870 800A26D0 AFA90020 */   sw    $t1, 0x20($sp)
/* B19874 800A26D4 AFA20088 */  sw    $v0, 0x88($sp)
.L800A26D8:
/* B19878 800A26D8 0C034221 */  jal   Matrix_Pull
/* B1987C 800A26DC 00000000 */   nop   
/* B19880 800A26E0 92050007 */  lbu   $a1, 7($s0)
/* B19884 800A26E4 240100FF */  li    $at, 255
/* B19888 800A26E8 8FA40068 */  lw    $a0, 0x68($sp)
/* B1988C 800A26EC 10A1000E */  beq   $a1, $at, .L800A2728
/* B19890 800A26F0 8FA60070 */   lw    $a2, 0x70($sp)
/* B19894 800A26F4 8FAA0078 */  lw    $t2, 0x78($sp)
/* B19898 800A26F8 8FAE007C */  lw    $t6, 0x7c($sp)
/* B1989C 800A26FC 8FAB0080 */  lw    $t3, 0x80($sp)
/* B198A0 800A2700 8FAC0084 */  lw    $t4, 0x84($sp)
/* B198A4 800A2704 8FB90088 */  lw    $t9, 0x88($sp)
/* B198A8 800A2708 8FA70074 */  lw    $a3, 0x74($sp)
/* B198AC 800A270C AFAA0010 */  sw    $t2, 0x10($sp)
/* B198B0 800A2710 AFAE0014 */  sw    $t6, 0x14($sp)
/* B198B4 800A2714 AFAB0018 */  sw    $t3, 0x18($sp)
/* B198B8 800A2718 AFAC001C */  sw    $t4, 0x1c($sp)
/* B198BC 800A271C 0C028928 */  jal   func_800A24A0
/* B198C0 800A2720 AFB90020 */   sw    $t9, 0x20($sp)
/* B198C4 800A2724 AFA20088 */  sw    $v0, 0x88($sp)
.L800A2728:
/* B198C8 800A2728 8FBF0034 */  lw    $ra, 0x34($sp)
/* B198CC 800A272C 8FA20088 */  lw    $v0, 0x88($sp)
/* B198D0 800A2730 8FB00030 */  lw    $s0, 0x30($sp)
/* B198D4 800A2734 03E00008 */  jr    $ra
/* B198D8 800A2738 27BD0068 */   addiu $sp, $sp, 0x68

