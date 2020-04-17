.rdata
glabel D_801417D0
    .asciz "../z_vismono.c"
    .balign 4

glabel D_801417E0
    .asciz "glistp_end = %08x\n"
    .balign 4

glabel D_801417F4
    .asciz "../z_vismono.c"
    .balign 4

glabel D_80141804
    .asciz "mono_dl = %08x\n"
    .balign 4

glabel D_80141814
    .asciz "../z_vismono.c"
    .balign 4

glabel D_80141824
    .asciz "mono_dl + (1+3+1+1+80*(7+2+2+3)+1) = %08x\n"
    .balign 4 

glabel D_80141850
    .asciz "../z_vismono.c"
    .balign 4

glabel D_80141860
    .asciz "(1+3+1+1+80*(7+2+2+3)+1) = %08x\n"
    .balign 4

glabel D_80141884
    .asciz "glistp_end <= mono_dl + DLSIZE"
    .balign 4

glabel D_801418A4
    .asciz "../z_vismono.c"
    .balign 4

.text
glabel func_800AD5C0
/* B24760 800AD5C0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B24764 800AD5C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B24768 800AD5C8 AFA40060 */  sw    $a0, 0x60($sp)
/* B2476C 800AD5CC AFA50064 */  sw    $a1, 0x64($sp)
/* B24770 800AD5D0 8CAF0000 */  lw    $t7, ($a1)
/* B24774 800AD5D4 AFAF005C */  sw    $t7, 0x5c($sp)
/* B24778 800AD5D8 8C820010 */  lw    $v0, 0x10($a0)
/* B2477C 800AD5DC 27A4005C */  addiu $a0, $sp, 0x5c
/* B24780 800AD5E0 10400003 */  beqz  $v0, .L800AD5F0
/* B24784 800AD5E4 00000000 */   nop   
/* B24788 800AD5E8 10000007 */  b     .L800AD608
/* B2478C 800AD5EC AFA20058 */   sw    $v0, 0x58($sp)
.L800AD5F0:
/* B24790 800AD5F0 0C031B0F */  jal   Graph_DlistAlloc
/* B24794 800AD5F4 24050200 */   li    $a1, 512
/* B24798 800AD5F8 AFA20058 */  sw    $v0, 0x58($sp)
/* B2479C 800AD5FC 8FA40060 */  lw    $a0, 0x60($sp)
/* B247A0 800AD600 0C02B420 */  jal   func_800AD080
/* B247A4 800AD604 00402825 */   move  $a1, $v0
.L800AD608:
/* B247A8 800AD608 8FB90060 */  lw    $t9, 0x60($sp)
/* B247AC 800AD60C 27A4005C */  addiu $a0, $sp, 0x5c
/* B247B0 800AD610 8F220014 */  lw    $v0, 0x14($t9)
/* B247B4 800AD614 10400003 */  beqz  $v0, .L800AD624
/* B247B8 800AD618 00000000 */   nop   
/* B247BC 800AD61C 10000037 */  b     .L800AD6FC
/* B247C0 800AD620 AFA20054 */   sw    $v0, 0x54($sp)
.L800AD624:
/* B247C4 800AD624 0C031B0F */  jal   Graph_DlistAlloc
/* B247C8 800AD628 24052338 */   li    $a1, 9016
/* B247CC 800AD62C AFA20054 */  sw    $v0, 0x54($sp)
/* B247D0 800AD630 8FA40060 */  lw    $a0, 0x60($sp)
/* B247D4 800AD634 0C02B4E5 */  jal   func_800AD394
/* B247D8 800AD638 00402825 */   move  $a1, $v0
/* B247DC 800AD63C 8FA80054 */  lw    $t0, 0x54($sp)
/* B247E0 800AD640 AFA20050 */  sw    $v0, 0x50($sp)
/* B247E4 800AD644 3C048014 */  lui   $a0, %hi(D_801417D0) # $a0, 0x8014
/* B247E8 800AD648 25092338 */  addiu $t1, $t0, 0x2338
/* B247EC 800AD64C 0122082B */  sltu  $at, $t1, $v0
/* B247F0 800AD650 10200020 */  beqz  $at, .L800AD6D4
/* B247F4 800AD654 AFA9001C */   sw    $t1, 0x1c($sp)
/* B247F8 800AD658 248417D0 */  addiu $a0, %lo(D_801417D0) # addiu $a0, $a0, 0x17d0
/* B247FC 800AD65C 0C000B84 */  jal   LogUtils_LogThreadId
/* B24800 800AD660 24050101 */   li    $a1, 257
/* B24804 800AD664 3C048014 */  lui   $a0, %hi(D_801417E0) # $a0, 0x8014
/* B24808 800AD668 248417E0 */  addiu $a0, %lo(D_801417E0) # addiu $a0, $a0, 0x17e0
/* B2480C 800AD66C 0C00084C */  jal   osSyncPrintf
/* B24810 800AD670 8FA50050 */   lw    $a1, 0x50($sp)
/* B24814 800AD674 3C048014 */  lui   $a0, %hi(D_801417F4) # $a0, 0x8014
/* B24818 800AD678 248417F4 */  addiu $a0, %lo(D_801417F4) # addiu $a0, $a0, 0x17f4
/* B2481C 800AD67C 0C000B84 */  jal   LogUtils_LogThreadId
/* B24820 800AD680 24050102 */   li    $a1, 258
/* B24824 800AD684 3C048014 */  lui   $a0, %hi(D_80141804) # $a0, 0x8014
/* B24828 800AD688 24841804 */  addiu $a0, %lo(D_80141804) # addiu $a0, $a0, 0x1804
/* B2482C 800AD68C 0C00084C */  jal   osSyncPrintf
/* B24830 800AD690 8FA50054 */   lw    $a1, 0x54($sp)
/* B24834 800AD694 3C048014 */  lui   $a0, %hi(D_80141814) # $a0, 0x8014
/* B24838 800AD698 24841814 */  addiu $a0, %lo(D_80141814) # addiu $a0, $a0, 0x1814
/* B2483C 800AD69C 0C000B84 */  jal   LogUtils_LogThreadId
/* B24840 800AD6A0 24050103 */   li    $a1, 259
/* B24844 800AD6A4 3C048014 */  lui   $a0, %hi(D_80141824) # $a0, 0x8014
/* B24848 800AD6A8 24841824 */  addiu $a0, %lo(D_80141824) # addiu $a0, $a0, 0x1824
/* B2484C 800AD6AC 0C00084C */  jal   osSyncPrintf
/* B24850 800AD6B0 8FA5001C */   lw    $a1, 0x1c($sp)
/* B24854 800AD6B4 3C048014 */  lui   $a0, %hi(D_80141850) # $a0, 0x8014
/* B24858 800AD6B8 24841850 */  addiu $a0, %lo(D_80141850) # addiu $a0, $a0, 0x1850
/* B2485C 800AD6BC 0C000B84 */  jal   LogUtils_LogThreadId
/* B24860 800AD6C0 24050104 */   li    $a1, 260
/* B24864 800AD6C4 3C048014 */  lui   $a0, %hi(D_80141860) # $a0, 0x8014
/* B24868 800AD6C8 24841860 */  addiu $a0, %lo(D_80141860) # addiu $a0, $a0, 0x1860
/* B2486C 800AD6CC 0C00084C */  jal   osSyncPrintf
/* B24870 800AD6D0 24050467 */   li    $a1, 1127
.L800AD6D4:
/* B24874 800AD6D4 8FAA001C */  lw    $t2, 0x1c($sp)
/* B24878 800AD6D8 8FAB0050 */  lw    $t3, 0x50($sp)
/* B2487C 800AD6DC 3C048014 */  lui   $a0, %hi(D_80141884) # $a0, 0x8014
/* B24880 800AD6E0 24841884 */  addiu $a0, %lo(D_80141884) # addiu $a0, $a0, 0x1884
/* B24884 800AD6E4 014B082B */  sltu  $at, $t2, $t3
/* B24888 800AD6E8 10200004 */  beqz  $at, .L800AD6FC
/* B2488C 800AD6EC 3C058014 */   lui   $a1, %hi(D_801418A4) # $a1, 0x8014
/* B24890 800AD6F0 24A518A4 */  addiu $a1, %lo(D_801418A4) # addiu $a1, $a1, 0x18a4
/* B24894 800AD6F4 0C0007FC */  jal   __assert
/* B24898 800AD6F8 24060106 */   li    $a2, 262
.L800AD6FC:
/* B2489C 800AD6FC 8FAC005C */  lw    $t4, 0x5c($sp)
/* B248A0 800AD700 3C03E700 */  lui   $v1, 0xe700
/* B248A4 800AD704 24010001 */  li    $at, 1
/* B248A8 800AD708 258D0008 */  addiu $t5, $t4, 8
/* B248AC 800AD70C AFAD005C */  sw    $t5, 0x5c($sp)
/* B248B0 800AD710 AD800004 */  sw    $zero, 4($t4)
/* B248B4 800AD714 AD830000 */  sw    $v1, ($t4)
/* B248B8 800AD718 8FAE0060 */  lw    $t6, 0x60($sp)
/* B248BC 800AD71C 8FB8005C */  lw    $t8, 0x5c($sp)
/* B248C0 800AD720 3C090050 */  lui   $t1, (0x005003C0 >> 16) # lui $t1, 0x50
/* B248C4 800AD724 8DCF0004 */  lw    $t7, 4($t6)
/* B248C8 800AD728 352903C0 */  ori   $t1, (0x005003C0 & 0xFFFF) # ori $t1, $t1, 0x3c0
/* B248CC 800AD72C 3C08ED00 */  lui   $t0, 0xed00
/* B248D0 800AD730 15E10004 */  bne   $t7, $at, .L800AD744
/* B248D4 800AD734 27190008 */   addiu $t9, $t8, 8
/* B248D8 800AD738 AFB9005C */  sw    $t9, 0x5c($sp)
/* B248DC 800AD73C AF090004 */  sw    $t1, 4($t8)
/* B248E0 800AD740 AF080000 */  sw    $t0, ($t8)
.L800AD744:
/* B248E4 800AD744 8FAA005C */  lw    $t2, 0x5c($sp)
/* B248E8 800AD748 3C0CFA00 */  lui   $t4, 0xfa00
/* B248EC 800AD74C 3C19FB00 */  lui   $t9, 0xfb00
/* B248F0 800AD750 254B0008 */  addiu $t3, $t2, 8
/* B248F4 800AD754 AFAB005C */  sw    $t3, 0x5c($sp)
/* B248F8 800AD758 AD4C0000 */  sw    $t4, ($t2)
/* B248FC 800AD75C 8FAD0060 */  lw    $t5, 0x60($sp)
/* B24900 800AD760 3C0CFD10 */  lui   $t4, 0xfd10
/* B24904 800AD764 8DAE0008 */  lw    $t6, 8($t5)
/* B24908 800AD768 AD4E0004 */  sw    $t6, 4($t2)
/* B2490C 800AD76C 8FAF005C */  lw    $t7, 0x5c($sp)
/* B24910 800AD770 25F80008 */  addiu $t8, $t7, 8
/* B24914 800AD774 AFB8005C */  sw    $t8, 0x5c($sp)
/* B24918 800AD778 ADF90000 */  sw    $t9, ($t7)
/* B2491C 800AD77C 8FA80060 */  lw    $t0, 0x60($sp)
/* B24920 800AD780 3C18E800 */  lui   $t8, 0xe800
/* B24924 800AD784 8D09000C */  lw    $t1, 0xc($t0)
/* B24928 800AD788 ADE90004 */  sw    $t1, 4($t7)
/* B2492C 800AD78C 8FAA005C */  lw    $t2, 0x5c($sp)
/* B24930 800AD790 3C09F500 */  lui   $t1, (0xF5000100 >> 16) # lui $t1, 0xf500
/* B24934 800AD794 35290100 */  ori   $t1, (0xF5000100 & 0xFFFF) # ori $t1, $t1, 0x100
/* B24938 800AD798 254B0008 */  addiu $t3, $t2, 8
/* B2493C 800AD79C AFAB005C */  sw    $t3, 0x5c($sp)
/* B24940 800AD7A0 AD4C0000 */  sw    $t4, ($t2)
/* B24944 800AD7A4 8FAD0058 */  lw    $t5, 0x58($sp)
/* B24948 800AD7A8 AD4D0004 */  sw    $t5, 4($t2)
/* B2494C 800AD7AC 8FAE005C */  lw    $t6, 0x5c($sp)
/* B24950 800AD7B0 3C0A0700 */  lui   $t2, 0x700
/* B24954 800AD7B4 3C0DE600 */  lui   $t5, 0xe600
/* B24958 800AD7B8 25CF0008 */  addiu $t7, $t6, 8
/* B2495C 800AD7BC AFAF005C */  sw    $t7, 0x5c($sp)
/* B24960 800AD7C0 ADC00004 */  sw    $zero, 4($t6)
/* B24964 800AD7C4 ADD80000 */  sw    $t8, ($t6)
/* B24968 800AD7C8 8FB9005C */  lw    $t9, 0x5c($sp)
/* B2496C 800AD7CC 3C18F000 */  lui   $t8, 0xf000
/* B24970 800AD7D0 27280008 */  addiu $t0, $t9, 8
/* B24974 800AD7D4 AFA8005C */  sw    $t0, 0x5c($sp)
/* B24978 800AD7D8 AF290000 */  sw    $t1, ($t9)
/* B2497C 800AD7DC AF2A0004 */  sw    $t2, 4($t9)
/* B24980 800AD7E0 8FAB005C */  lw    $t3, 0x5c($sp)
/* B24984 800AD7E4 3C19073F */  lui   $t9, (0x073FC000 >> 16) # lui $t9, 0x73f
/* B24988 800AD7E8 3739C000 */  ori   $t9, (0x073FC000 & 0xFFFF) # ori $t9, $t9, 0xc000
/* B2498C 800AD7EC 256C0008 */  addiu $t4, $t3, 8
/* B24990 800AD7F0 AFAC005C */  sw    $t4, 0x5c($sp)
/* B24994 800AD7F4 AD600004 */  sw    $zero, 4($t3)
/* B24998 800AD7F8 AD6D0000 */  sw    $t5, ($t3)
/* B2499C 800AD7FC 8FAE005C */  lw    $t6, 0x5c($sp)
/* B249A0 800AD800 3C0CDE00 */  lui   $t4, 0xde00
/* B249A4 800AD804 25CF0008 */  addiu $t7, $t6, 8
/* B249A8 800AD808 AFAF005C */  sw    $t7, 0x5c($sp)
/* B249AC 800AD80C ADD90004 */  sw    $t9, 4($t6)
/* B249B0 800AD810 ADD80000 */  sw    $t8, ($t6)
/* B249B4 800AD814 8FA8005C */  lw    $t0, 0x5c($sp)
/* B249B8 800AD818 25090008 */  addiu $t1, $t0, 8
/* B249BC 800AD81C AFA9005C */  sw    $t1, 0x5c($sp)
/* B249C0 800AD820 AD000004 */  sw    $zero, 4($t0)
/* B249C4 800AD824 AD030000 */  sw    $v1, ($t0)
/* B249C8 800AD828 8FAA005C */  lw    $t2, 0x5c($sp)
/* B249CC 800AD82C 254B0008 */  addiu $t3, $t2, 8
/* B249D0 800AD830 AFAB005C */  sw    $t3, 0x5c($sp)
/* B249D4 800AD834 AD4C0000 */  sw    $t4, ($t2)
/* B249D8 800AD838 8FAD0054 */  lw    $t5, 0x54($sp)
/* B249DC 800AD83C AD4D0004 */  sw    $t5, 4($t2)
/* B249E0 800AD840 8FAE005C */  lw    $t6, 0x5c($sp)
/* B249E4 800AD844 25CF0008 */  addiu $t7, $t6, 8
/* B249E8 800AD848 AFAF005C */  sw    $t7, 0x5c($sp)
/* B249EC 800AD84C ADC00004 */  sw    $zero, 4($t6)
/* B249F0 800AD850 ADC30000 */  sw    $v1, ($t6)
/* B249F4 800AD854 8FB90064 */  lw    $t9, 0x64($sp)
/* B249F8 800AD858 8FB8005C */  lw    $t8, 0x5c($sp)
/* B249FC 800AD85C AF380000 */  sw    $t8, ($t9)
/* B24A00 800AD860 8FBF0014 */  lw    $ra, 0x14($sp)
/* B24A04 800AD864 27BD0060 */  addiu $sp, $sp, 0x60
/* B24A08 800AD868 03E00008 */  jr    $ra
/* B24A0C 800AD86C 00000000 */   nop   

