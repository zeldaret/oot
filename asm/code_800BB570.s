.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800BB570
/* B32710 800BB570 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B32714 800BB574 AFA40028 */  sw    $a0, 0x28($sp)
/* B32718 800BB578 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3271C 800BB57C 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B32720 800BB580 AFA0001C */  sw    $zero, 0x1c($sp)
/* B32724 800BB584 0C031C94 */  jal   PadMgr_LockGetControllerQueue
/* B32728 800BB588 248468C0 */   addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B3272C 800BB58C 3C058016 */  lui   $a1, %hi(D_801612F0) # $a1, 0x8016
/* B32730 800BB590 AFA20024 */  sw    $v0, 0x24($sp)
/* B32734 800BB594 24A512F0 */  addiu $a1, %lo(D_801612F0) # addiu $a1, $a1, 0x12f0
/* B32738 800BB598 00402025 */  move  $a0, $v0
/* B3273C 800BB59C 0C0413D0 */  jal   func_80104F40
/* B32740 800BB5A0 8FA60028 */   lw    $a2, 0x28($sp)
/* B32744 800BB5A4 14400003 */  bnez  $v0, .L800BB5B4
/* B32748 800BB5A8 3C048016 */   lui   $a0, %hi(D_801612F0) # $a0, 0x8016
/* B3274C 800BB5AC 240E0001 */  li    $t6, 1
/* B32750 800BB5B0 AFAE001C */  sw    $t6, 0x1c($sp)
.L800BB5B4:
/* B32754 800BB5B4 3C058016 */  lui   $a1, %hi(D_80161358) # $a1, 0x8016
/* B32758 800BB5B8 24A51358 */  addiu $a1, %lo(D_80161358) # addiu $a1, $a1, 0x1358
/* B3275C 800BB5BC 0C040010 */  jal   func_80100040
/* B32760 800BB5C0 248412F0 */   addiu $a0, %lo(D_801612F0) # addiu $a0, $a0, 0x12f0
/* B32764 800BB5C4 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B32768 800BB5C8 248468C0 */  addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B3276C 800BB5CC 0C031CBF */  jal   PadMgr_UnlockReleaseControllerQueue
/* B32770 800BB5D0 8FA50024 */   lw    $a1, 0x24($sp)
/* B32774 800BB5D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B32778 800BB5D8 8FA2001C */  lw    $v0, 0x1c($sp)
/* B3277C 800BB5DC 27BD0028 */  addiu $sp, $sp, 0x28
/* B32780 800BB5E0 03E00008 */  jr    $ra
/* B32784 800BB5E4 00000000 */   nop   

glabel func_800BB5E8
/* B32788 800BB5E8 3C028016 */  lui   $v0, %hi(D_80161358)
/* B3278C 800BB5EC AFA40000 */  sw    $a0, ($sp)
/* B32790 800BB5F0 03E00008 */  jr    $ra
/* B32794 800BB5F4 8C421358 */   lw    $v0, %lo(D_80161358)($v0)

glabel func_800BB5F8
/* B32798 800BB5F8 27BDFF98 */  addiu $sp, $sp, -0x68
/* B3279C 800BB5FC AFA40068 */  sw    $a0, 0x68($sp)
/* B327A0 800BB600 AFBF0044 */  sw    $ra, 0x44($sp)
/* B327A4 800BB604 AFB50034 */  sw    $s5, 0x34($sp)
/* B327A8 800BB608 AFB3002C */  sw    $s3, 0x2c($sp)
/* B327AC 800BB60C AFB10024 */  sw    $s1, 0x24($sp)
/* B327B0 800BB610 AFB00020 */  sw    $s0, 0x20($sp)
/* B327B4 800BB614 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B327B8 800BB618 30B000FF */  andi  $s0, $a1, 0xff
/* B327BC 800BB61C 30D100FF */  andi  $s1, $a2, 0xff
/* B327C0 800BB620 AFBE0040 */  sw    $fp, 0x40($sp)
/* B327C4 800BB624 AFB7003C */  sw    $s7, 0x3c($sp)
/* B327C8 800BB628 AFB60038 */  sw    $s6, 0x38($sp)
/* B327CC 800BB62C AFB40030 */  sw    $s4, 0x30($sp)
/* B327D0 800BB630 AFB20028 */  sw    $s2, 0x28($sp)
/* B327D4 800BB634 AFA5006C */  sw    $a1, 0x6c($sp)
/* B327D8 800BB638 AFA60070 */  sw    $a2, 0x70($sp)
/* B327DC 800BB63C 24130001 */  li    $s3, 1
/* B327E0 800BB640 0000A825 */  move  $s5, $zero
/* B327E4 800BB644 0C031C94 */  jal   PadMgr_LockGetControllerQueue
/* B327E8 800BB648 248468C0 */   addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B327EC 800BB64C 0230082A */  slt   $at, $s1, $s0
/* B327F0 800BB650 AFA20064 */  sw    $v0, 0x64($sp)
/* B327F4 800BB654 321200FF */  andi  $s2, $s0, 0xff
/* B327F8 800BB658 AFB10050 */  sw    $s1, 0x50($sp)
/* B327FC 800BB65C 1420002A */  bnez  $at, .L800BB708
/* B32800 800BB660 AFB0004C */   sw    $s0, 0x4c($sp)
/* B32804 800BB664 3C1E8013 */  lui   $fp, %hi(D_8012D184) # $fp, 0x8013
/* B32808 800BB668 3C178013 */  lui   $s7, %hi(D_8012D180) # $s7, 0x8013
/* B3280C 800BB66C 3C168016 */  lui   $s6, %hi(D_801612F0) # $s6, 0x8016
/* B32810 800BB670 3C148013 */  lui   $s4, %hi(D_8012D198) # $s4, 0x8013
/* B32814 800BB674 2694D198 */  addiu $s4, %lo(D_8012D198) # addiu $s4, $s4, -0x2e68
/* B32818 800BB678 26D612F0 */  addiu $s6, %lo(D_801612F0) # addiu $s6, $s6, 0x12f0
/* B3281C 800BB67C 26F7D180 */  addiu $s7, %lo(D_8012D180) # addiu $s7, $s7, -0x2e80
/* B32820 800BB680 27DED184 */  addiu $fp, %lo(D_8012D184) # addiu $fp, $fp, -0x2e7c
/* B32824 800BB684 02408025 */  move  $s0, $s2
.L800BB688:
/* B32828 800BB688 3C088016 */  lui   $t0, %hi(D_80161360) # $t0, 0x8016
/* B3282C 800BB68C 25081360 */  addiu $t0, %lo(D_80161360) # addiu $t0, $t0, 0x1360
/* B32830 800BB690 0010C880 */  sll   $t9, $s0, 2
/* B32834 800BB694 03288821 */  addu  $s1, $t9, $t0
/* B32838 800BB698 2618FFD9 */  addiu $t8, $s0, -0x27
/* B3283C 800BB69C 2629FEFC */  addiu $t1, $s1, -0x104
/* B32840 800BB6A0 3C078013 */  lui   $a3, %hi(D_8012D188) # $a3, 0x8013
/* B32844 800BB6A4 A2980000 */  sb    $t8, ($s4)
/* B32848 800BB6A8 24E7D188 */  addiu $a3, %lo(D_8012D188) # addiu $a3, $a3, -0x2e78
/* B3284C 800BB6AC AFA90014 */  sw    $t1, 0x14($sp)
/* B32850 800BB6B0 02C02025 */  move  $a0, $s6
/* B32854 800BB6B4 96E50000 */  lhu   $a1, ($s7)
/* B32858 800BB6B8 8FC60000 */  lw    $a2, ($fp)
/* B3285C 800BB6BC 0C040C04 */  jal   func_80103010
/* B32860 800BB6C0 AFB40010 */   sw    $s4, 0x10($sp)
/* B32864 800BB6C4 14400003 */  bnez  $v0, .L800BB6D4
/* B32868 800BB6C8 00403025 */   move  $a2, $v0
/* B3286C 800BB6CC 10000003 */  b     .L800BB6DC
/* B32870 800BB6D0 02B3A825 */   or    $s5, $s5, $s3
.L800BB6D4:
/* B32874 800BB6D4 240AFFFF */  li    $t2, -1
/* B32878 800BB6D8 AE2AFEFC */  sw    $t2, -0x104($s1)
.L800BB6DC:
/* B3287C 800BB6DC 3C048014 */  lui   $a0, %hi(D_80143CF0) # $a0, 0x8014
/* B32880 800BB6E0 00139840 */  sll   $s3, $s3, 1
/* B32884 800BB6E4 24843CF0 */  addiu $a0, %lo(D_80143CF0) # addiu $a0, $a0, 0x3cf0
/* B32888 800BB6E8 0C00084C */  jal   osSyncPrintf
/* B3288C 800BB6EC 02002825 */   move  $a1, $s0
/* B32890 800BB6F0 8FAB0050 */  lw    $t3, 0x50($sp)
/* B32894 800BB6F4 26520001 */  addiu $s2, $s2, 1
/* B32898 800BB6F8 325200FF */  andi  $s2, $s2, 0xff
/* B3289C 800BB6FC 0172082A */  slt   $at, $t3, $s2
/* B328A0 800BB700 1020FFE1 */  beqz  $at, .L800BB688
/* B328A4 800BB704 02408025 */   move  $s0, $s2
.L800BB708:
/* B328A8 800BB708 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B328AC 800BB70C 248468C0 */  addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B328B0 800BB710 0C031CBF */  jal   PadMgr_UnlockReleaseControllerQueue
/* B328B4 800BB714 8FA50064 */   lw    $a1, 0x64($sp)
/* B328B8 800BB718 3C048014 */  lui   $a0, %hi(D_80143D08) # $a0, 0x8014
/* B328BC 800BB71C 24843D08 */  addiu $a0, %lo(D_80143D08) # addiu $a0, $a0, 0x3d08
/* B328C0 800BB720 8FA5004C */  lw    $a1, 0x4c($sp)
/* B328C4 800BB724 8FA60050 */  lw    $a2, 0x50($sp)
/* B328C8 800BB728 0C00084C */  jal   osSyncPrintf
/* B328CC 800BB72C 02A03825 */   move  $a3, $s5
/* B328D0 800BB730 8FBF0044 */  lw    $ra, 0x44($sp)
/* B328D4 800BB734 02A01025 */  move  $v0, $s5
/* B328D8 800BB738 8FB50034 */  lw    $s5, 0x34($sp)
/* B328DC 800BB73C 8FB00020 */  lw    $s0, 0x20($sp)
/* B328E0 800BB740 8FB10024 */  lw    $s1, 0x24($sp)
/* B328E4 800BB744 8FB20028 */  lw    $s2, 0x28($sp)
/* B328E8 800BB748 8FB3002C */  lw    $s3, 0x2c($sp)
/* B328EC 800BB74C 8FB40030 */  lw    $s4, 0x30($sp)
/* B328F0 800BB750 8FB60038 */  lw    $s6, 0x38($sp)
/* B328F4 800BB754 8FB7003C */  lw    $s7, 0x3c($sp)
/* B328F8 800BB758 8FBE0040 */  lw    $fp, 0x40($sp)
/* B328FC 800BB75C 03E00008 */  jr    $ra
/* B32900 800BB760 27BD0068 */   addiu $sp, $sp, 0x68

glabel func_800BB764
/* B32904 800BB764 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B32908 800BB768 AFA40038 */  sw    $a0, 0x38($sp)
/* B3290C 800BB76C AFBF001C */  sw    $ra, 0x1c($sp)
/* B32910 800BB770 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B32914 800BB774 AFA5003C */  sw    $a1, 0x3c($sp)
/* B32918 800BB778 AFA60040 */  sw    $a2, 0x40($sp)
/* B3291C 800BB77C AFA70044 */  sw    $a3, 0x44($sp)
/* B32920 800BB780 AFA0002C */  sw    $zero, 0x2c($sp)
/* B32924 800BB784 0C031C94 */  jal   PadMgr_LockGetControllerQueue
/* B32928 800BB788 248468C0 */   addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B3292C 800BB78C 3C0E8016 */  lui   $t6, %hi(D_80161358) # $t6, 0x8016
/* B32930 800BB790 8FA80048 */  lw    $t0, 0x48($sp)
/* B32934 800BB794 8DCE1358 */  lw    $t6, %lo(D_80161358)($t6)
/* B32938 800BB798 3C048016 */  lui   $a0, %hi(D_801612F0) # $a0, 0x8016
/* B3293C 800BB79C AFA20034 */  sw    $v0, 0x34($sp)
/* B32940 800BB7A0 010E082A */  slt   $at, $t0, $t6
/* B32944 800BB7A4 1020001B */  beqz  $at, .L800BB814
/* B32948 800BB7A8 248412F0 */   addiu $a0, %lo(D_801612F0) # addiu $a0, $a0, 0x12f0
/* B3294C 800BB7AC 93A2003F */  lbu   $v0, 0x3f($sp)
/* B32950 800BB7B0 3C188016 */  lui   $t8, %hi(D_80161360) # $t8, 0x8016
/* B32954 800BB7B4 8FB90040 */  lw    $t9, 0x40($sp)
/* B32958 800BB7B8 27181360 */  addiu $t8, %lo(D_80161360) # addiu $t8, $t8, 0x1360
/* B3295C 800BB7BC 00027880 */  sll   $t7, $v0, 2
/* B32960 800BB7C0 01F81821 */  addu  $v1, $t7, $t8
/* B32964 800BB7C4 8C65FEFC */  lw    $a1, -0x104($v1)
/* B32968 800BB7C8 AFA30020 */  sw    $v1, 0x20($sp)
/* B3296C 800BB7CC 24060001 */  li    $a2, 1
/* B32970 800BB7D0 8FA70044 */  lw    $a3, 0x44($sp)
/* B32974 800BB7D4 AFA80010 */  sw    $t0, 0x10($sp)
/* B32978 800BB7D8 AFA20024 */  sw    $v0, 0x24($sp)
/* B3297C 800BB7DC 0C040565 */  jal   func_80101594
/* B32980 800BB7E0 AFB90014 */   sw    $t9, 0x14($sp)
/* B32984 800BB7E4 8FA30020 */  lw    $v1, 0x20($sp)
/* B32988 800BB7E8 14400003 */  bnez  $v0, .L800BB7F8
/* B3298C 800BB7EC 00404025 */   move  $t0, $v0
/* B32990 800BB7F0 24090001 */  li    $t1, 1
/* B32994 800BB7F4 AFA9002C */  sw    $t1, 0x2c($sp)
.L800BB7F8:
/* B32998 800BB7F8 3C048014 */  lui   $a0, %hi(D_80143D28) # $a0, 0x8014
/* B3299C 800BB7FC 24843D28 */  addiu $a0, %lo(D_80143D28) # addiu $a0, $a0, 0x3d28
/* B329A0 800BB800 8FA50048 */  lw    $a1, 0x48($sp)
/* B329A4 800BB804 8FA60024 */  lw    $a2, 0x24($sp)
/* B329A8 800BB808 8C67FEFC */  lw    $a3, -0x104($v1)
/* B329AC 800BB80C 0C00084C */  jal   osSyncPrintf
/* B329B0 800BB810 AFA80010 */   sw    $t0, 0x10($sp)
.L800BB814:
/* B329B4 800BB814 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B329B8 800BB818 248468C0 */  addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B329BC 800BB81C 0C031CBF */  jal   PadMgr_UnlockReleaseControllerQueue
/* B329C0 800BB820 8FA50034 */   lw    $a1, 0x34($sp)
/* B329C4 800BB824 8FBF001C */  lw    $ra, 0x1c($sp)
/* B329C8 800BB828 8FA2002C */  lw    $v0, 0x2c($sp)
/* B329CC 800BB82C 27BD0038 */  addiu $sp, $sp, 0x38
/* B329D0 800BB830 03E00008 */  jr    $ra
/* B329D4 800BB834 00000000 */   nop   

glabel func_800BB838
/* B329D8 800BB838 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B329DC 800BB83C AFA40038 */  sw    $a0, 0x38($sp)
/* B329E0 800BB840 AFBF001C */  sw    $ra, 0x1c($sp)
/* B329E4 800BB844 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B329E8 800BB848 AFA5003C */  sw    $a1, 0x3c($sp)
/* B329EC 800BB84C AFA60040 */  sw    $a2, 0x40($sp)
/* B329F0 800BB850 AFA70044 */  sw    $a3, 0x44($sp)
/* B329F4 800BB854 AFA0002C */  sw    $zero, 0x2c($sp)
/* B329F8 800BB858 0C031C94 */  jal   PadMgr_LockGetControllerQueue
/* B329FC 800BB85C 248468C0 */   addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B32A00 800BB860 3C0E8016 */  lui   $t6, %hi(D_80161358) # $t6, 0x8016
/* B32A04 800BB864 8FA80048 */  lw    $t0, 0x48($sp)
/* B32A08 800BB868 8DCE1358 */  lw    $t6, %lo(D_80161358)($t6)
/* B32A0C 800BB86C 3C048016 */  lui   $a0, %hi(D_801612F0) # $a0, 0x8016
/* B32A10 800BB870 AFA20034 */  sw    $v0, 0x34($sp)
/* B32A14 800BB874 010E082A */  slt   $at, $t0, $t6
/* B32A18 800BB878 1020001B */  beqz  $at, .L800BB8E8
/* B32A1C 800BB87C 248412F0 */   addiu $a0, %lo(D_801612F0) # addiu $a0, $a0, 0x12f0
/* B32A20 800BB880 93A2003F */  lbu   $v0, 0x3f($sp)
/* B32A24 800BB884 3C188016 */  lui   $t8, %hi(D_80161360) # $t8, 0x8016
/* B32A28 800BB888 8FB90040 */  lw    $t9, 0x40($sp)
/* B32A2C 800BB88C 27181360 */  addiu $t8, %lo(D_80161360) # addiu $t8, $t8, 0x1360
/* B32A30 800BB890 00027880 */  sll   $t7, $v0, 2
/* B32A34 800BB894 01F81821 */  addu  $v1, $t7, $t8
/* B32A38 800BB898 8C65FEFC */  lw    $a1, -0x104($v1)
/* B32A3C 800BB89C AFA30020 */  sw    $v1, 0x20($sp)
/* B32A40 800BB8A0 00003025 */  move  $a2, $zero
/* B32A44 800BB8A4 8FA70044 */  lw    $a3, 0x44($sp)
/* B32A48 800BB8A8 AFA80010 */  sw    $t0, 0x10($sp)
/* B32A4C 800BB8AC AFA20024 */  sw    $v0, 0x24($sp)
/* B32A50 800BB8B0 0C040565 */  jal   func_80101594
/* B32A54 800BB8B4 AFB90014 */   sw    $t9, 0x14($sp)
/* B32A58 800BB8B8 8FA30020 */  lw    $v1, 0x20($sp)
/* B32A5C 800BB8BC 14400003 */  bnez  $v0, .L800BB8CC
/* B32A60 800BB8C0 00404025 */   move  $t0, $v0
/* B32A64 800BB8C4 24090001 */  li    $t1, 1
/* B32A68 800BB8C8 AFA9002C */  sw    $t1, 0x2c($sp)
.L800BB8CC:
/* B32A6C 800BB8CC 3C048014 */  lui   $a0, %hi(D_80143D50) # $a0, 0x8014
/* B32A70 800BB8D0 24843D50 */  addiu $a0, %lo(D_80143D50) # addiu $a0, $a0, 0x3d50
/* B32A74 800BB8D4 8FA50048 */  lw    $a1, 0x48($sp)
/* B32A78 800BB8D8 8FA60024 */  lw    $a2, 0x24($sp)
/* B32A7C 800BB8DC 8C67FEFC */  lw    $a3, -0x104($v1)
/* B32A80 800BB8E0 0C00084C */  jal   osSyncPrintf
/* B32A84 800BB8E4 AFA80010 */   sw    $t0, 0x10($sp)
.L800BB8E8:
/* B32A88 800BB8E8 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B32A8C 800BB8EC 248468C0 */  addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B32A90 800BB8F0 0C031CBF */  jal   PadMgr_UnlockReleaseControllerQueue
/* B32A94 800BB8F4 8FA50034 */   lw    $a1, 0x34($sp)
/* B32A98 800BB8F8 8FBF001C */  lw    $ra, 0x1c($sp)
/* B32A9C 800BB8FC 8FA2002C */  lw    $v0, 0x2c($sp)
/* B32AA0 800BB900 27BD0038 */  addiu $sp, $sp, 0x38
/* B32AA4 800BB904 03E00008 */  jr    $ra
/* B32AA8 800BB908 00000000 */   nop   

glabel func_800BB90C
/* B32AAC 800BB90C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B32AB0 800BB910 AFA40040 */  sw    $a0, 0x40($sp)
/* B32AB4 800BB914 AFBF002C */  sw    $ra, 0x2c($sp)
/* B32AB8 800BB918 AFB00028 */  sw    $s0, 0x28($sp)
/* B32ABC 800BB91C 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B32AC0 800BB920 00A08025 */  move  $s0, $a1
/* B32AC4 800BB924 AFA60048 */  sw    $a2, 0x48($sp)
/* B32AC8 800BB928 AFA00034 */  sw    $zero, 0x34($sp)
/* B32ACC 800BB92C 0C031C94 */  jal   PadMgr_LockGetControllerQueue
/* B32AD0 800BB930 248468C0 */   addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B32AD4 800BB934 AFA2003C */  sw    $v0, 0x3c($sp)
/* B32AD8 800BB938 92030000 */  lbu   $v1, ($s0)
/* B32ADC 800BB93C 00001025 */  move  $v0, $zero
/* B32AE0 800BB940 2405000A */  li    $a1, 10
/* B32AE4 800BB944 28610041 */  slti  $at, $v1, 0x41
/* B32AE8 800BB948 14200058 */  bnez  $at, .L800BBAAC
/* B32AEC 800BB94C 2404FFFF */   li    $a0, -1
/* B32AF0 800BB950 2861004C */  slti  $at, $v1, 0x4c
/* B32AF4 800BB954 10200055 */  beqz  $at, .L800BBAAC
/* B32AF8 800BB958 3C088013 */   lui   $t0, %hi(D_8012D198) # $t0, 0x8013
/* B32AFC 800BB95C 2508D198 */  addiu $t0, %lo(D_8012D198) # addiu $t0, $t0, -0x2e68
/* B32B00 800BB960 246EFFD9 */  addiu $t6, $v1, -0x27
/* B32B04 800BB964 A10E0000 */  sb    $t6, ($t0)
/* B32B08 800BB968 92030000 */  lbu   $v1, ($s0)
/* B32B0C 800BB96C 3C188016 */  lui   $t8, %hi(D_80161360) # $t8, 0x8016
/* B32B10 800BB970 27181360 */  addiu $t8, %lo(D_80161360) # addiu $t8, $t8, 0x1360
/* B32B14 800BB974 00037880 */  sll   $t7, $v1, 2
/* B32B18 800BB978 01F81021 */  addu  $v0, $t7, $t8
/* B32B1C 800BB97C 8C59FEFC */  lw    $t9, -0x104($v0)
/* B32B20 800BB980 2404FFFF */  li    $a0, -1
/* B32B24 800BB984 3C058013 */  lui   $a1,  %hi(D_8012D180)
/* B32B28 800BB988 1499001A */  bne   $a0, $t9, .L800BB9F4
/* B32B2C 800BB98C 246CFFD9 */   addiu $t4, $v1, -0x27
/* B32B30 800BB990 8FA90048 */  lw    $t1, 0x48($sp)
/* B32B34 800BB994 3C048016 */  lui   $a0, %hi(D_801612F0) # $a0, 0x8016
/* B32B38 800BB998 3C058013 */  lui   $a1, %hi(D_8012D180) # $a1, 0x8013
/* B32B3C 800BB99C 3C068013 */  lui   $a2, %hi(D_8012D184) # $a2, 0x8013
/* B32B40 800BB9A0 3C078013 */  lui   $a3, %hi(D_8012D188) # $a3, 0x8013
/* B32B44 800BB9A4 244AFEFC */  addiu $t2, $v0, -0x104
/* B32B48 800BB9A8 AFAA0018 */  sw    $t2, 0x18($sp)
/* B32B4C 800BB9AC 24E7D188 */  addiu $a3, %lo(D_8012D188) # addiu $a3, $a3, -0x2e78
/* B32B50 800BB9B0 8CC6D184 */  lw    $a2, %lo(D_8012D184)($a2)
/* B32B54 800BB9B4 94A5D180 */  lhu   $a1, %lo(D_8012D180)($a1)
/* B32B58 800BB9B8 248412F0 */  addiu $a0, %lo(D_801612F0) # addiu $a0, $a0, 0x12f0
/* B32B5C 800BB9BC AFA80010 */  sw    $t0, 0x10($sp)
/* B32B60 800BB9C0 0C0407AC */  jal   func_80101EB0
/* B32B64 800BB9C4 AFA90014 */   sw    $t1, 0x14($sp)
/* B32B68 800BB9C8 14400003 */  bnez  $v0, .L800BB9D8
/* B32B6C 800BB9CC 00403825 */   move  $a3, $v0
/* B32B70 800BB9D0 240B0001 */  li    $t3, 1
/* B32B74 800BB9D4 AFAB0034 */  sw    $t3, 0x34($sp)
.L800BB9D8:
/* B32B78 800BB9D8 3C048014 */  lui   $a0, %hi(D_80143D74) # $a0, 0x8014
/* B32B7C 800BB9DC 24843D74 */  addiu $a0, %lo(D_80143D74) # addiu $a0, $a0, 0x3d74
/* B32B80 800BB9E0 8FA50048 */  lw    $a1, 0x48($sp)
/* B32B84 800BB9E4 0C00084C */  jal   osSyncPrintf
/* B32B88 800BB9E8 92060000 */   lbu   $a2, ($s0)
/* B32B8C 800BB9EC 10000056 */  b     .L800BBB48
/* B32B90 800BB9F0 00000000 */   nop   
.L800BB9F4:
/* B32B94 800BB9F4 A10C0000 */  sb    $t4, ($t0)
/* B32B98 800BB9F8 3C048016 */  lui   $a0, %hi(D_801612F0) # $a0, 0x8016
/* B32B9C 800BB9FC 3C068013 */  lui   $a2, %hi(D_8012D184) # $a2, 0x8013
/* B32BA0 800BBA00 3C078013 */  lui   $a3, %hi(D_8012D188) # $a3, 0x8013
/* B32BA4 800BBA04 24E7D188 */  addiu $a3, %lo(D_8012D188) # addiu $a3, $a3, -0x2e78
/* B32BA8 800BBA08 8CC6D184 */  lw    $a2, %lo(D_8012D184)($a2)
/* B32BAC 800BBA0C 248412F0 */  addiu $a0, %lo(D_801612F0) # addiu $a0, $a0, 0x12f0
/* B32BB0 800BBA10 94A5D180 */  lhu   $a1, %lo(D_8012D180)($a1)
/* B32BB4 800BBA14 0C041078 */  jal   func_801041E0
/* B32BB8 800BBA18 AFA80010 */   sw    $t0, 0x10($sp)
/* B32BBC 800BBA1C 3C088013 */  lui   $t0, %hi(D_8012D198) # $t0, 0x8013
/* B32BC0 800BBA20 14400003 */  bnez  $v0, .L800BBA30
/* B32BC4 800BBA24 2508D198 */   addiu $t0, %lo(D_8012D198) # addiu $t0, $t0, -0x2e68
/* B32BC8 800BBA28 240D0001 */  li    $t5, 1
/* B32BCC 800BBA2C AFAD0034 */  sw    $t5, 0x34($sp)
.L800BBA30:
/* B32BD0 800BBA30 8FAE0048 */  lw    $t6, 0x48($sp)
/* B32BD4 800BBA34 AFA80010 */  sw    $t0, 0x10($sp)
/* B32BD8 800BBA38 3C098016 */  lui   $t1, %hi(D_80161360) # $t1, 0x8016
/* B32BDC 800BBA3C AFAE0014 */  sw    $t6, 0x14($sp)
/* B32BE0 800BBA40 920F0000 */  lbu   $t7, ($s0)
/* B32BE4 800BBA44 25291360 */  addiu $t1, %lo(D_80161360) # addiu $t1, $t1, 0x1360
/* B32BE8 800BBA48 3C048016 */  lui   $a0, %hi(D_801612F0) # $a0, 0x8016
/* B32BEC 800BBA4C 000FC080 */  sll   $t8, $t7, 2
/* B32BF0 800BBA50 2719FEFC */  addiu $t9, $t8, -0x104
/* B32BF4 800BBA54 03295021 */  addu  $t2, $t9, $t1
/* B32BF8 800BBA58 3C058013 */  lui   $a1, %hi(D_8012D180) # $a1, 0x8013
/* B32BFC 800BBA5C 3C068013 */  lui   $a2, %hi(D_8012D184) # $a2, 0x8013
/* B32C00 800BBA60 3C078013 */  lui   $a3, %hi(D_8012D188) # $a3, 0x8013
/* B32C04 800BBA64 24E7D188 */  addiu $a3, %lo(D_8012D188) # addiu $a3, $a3, -0x2e78
/* B32C08 800BBA68 8CC6D184 */  lw    $a2, %lo(D_8012D184)($a2)
/* B32C0C 800BBA6C 94A5D180 */  lhu   $a1, %lo(D_8012D180)($a1)
/* B32C10 800BBA70 AFAA0018 */  sw    $t2, 0x18($sp)
/* B32C14 800BBA74 0C0407AC */  jal   func_80101EB0
/* B32C18 800BBA78 248412F0 */   addiu $a0, %lo(D_801612F0) # addiu $a0, $a0, 0x12f0
/* B32C1C 800BBA7C 14400004 */  bnez  $v0, .L800BBA90
/* B32C20 800BBA80 00403825 */   move  $a3, $v0
/* B32C24 800BBA84 8FAB0034 */  lw    $t3, 0x34($sp)
/* B32C28 800BBA88 356C0001 */  ori   $t4, $t3, 1
/* B32C2C 800BBA8C AFAC0034 */  sw    $t4, 0x34($sp)
.L800BBA90:
/* B32C30 800BBA90 3C048014 */  lui   $a0, %hi(D_80143D98) # $a0, 0x8014
/* B32C34 800BBA94 24843D98 */  addiu $a0, %lo(D_80143D98) # addiu $a0, $a0, 0x3d98
/* B32C38 800BBA98 8FA50048 */  lw    $a1, 0x48($sp)
/* B32C3C 800BBA9C 0C00084C */  jal   osSyncPrintf
/* B32C40 800BBAA0 92060000 */   lbu   $a2, ($s0)
/* B32C44 800BBAA4 10000028 */  b     .L800BBB48
/* B32C48 800BBAA8 00000000 */   nop   
.L800BBAAC:
/* B32C4C 800BBAAC 3C038016 */  lui   $v1, %hi(D_80161360) # $v1, 0x8016
/* B32C50 800BBAB0 24631360 */  addiu $v1, %lo(D_80161360) # addiu $v1, $v1, 0x1360
.L800BBAB4:
/* B32C54 800BBAB4 8C6D0000 */  lw    $t5, ($v1)
/* B32C58 800BBAB8 508D0005 */  beql  $a0, $t5, .L800BBAD0
/* B32C5C 800BBABC 244F0041 */   addiu $t7, $v0, 0x41
/* B32C60 800BBAC0 24420001 */  addiu $v0, $v0, 1
/* B32C64 800BBAC4 1445FFFB */  bne   $v0, $a1, .L800BBAB4
/* B32C68 800BBAC8 24630004 */   addiu $v1, $v1, 4
/* B32C6C 800BBACC 244F0041 */  addiu $t7, $v0, 0x41
.L800BBAD0:
/* B32C70 800BBAD0 A20F0000 */  sb    $t7, ($s0)
/* B32C74 800BBAD4 3C088013 */  lui   $t0, %hi(D_8012D198) # $t0, 0x8013
/* B32C78 800BBAD8 8FB90048 */  lw    $t9, 0x48($sp)
/* B32C7C 800BBADC 2508D198 */  addiu $t0, %lo(D_8012D198) # addiu $t0, $t0, -0x2e68
/* B32C80 800BBAE0 25F8FFD9 */  addiu $t8, $t7, -0x27
/* B32C84 800BBAE4 A1180000 */  sb    $t8, ($t0)
/* B32C88 800BBAE8 3C048016 */  lui   $a0, %hi(D_801612F0) # $a0, 0x8016
/* B32C8C 800BBAEC 3C058013 */  lui   $a1, %hi(D_8012D180) # $a1, 0x8013
/* B32C90 800BBAF0 3C068013 */  lui   $a2, %hi(D_8012D184) # $a2, 0x8013
/* B32C94 800BBAF4 3C078013 */  lui   $a3, %hi(D_8012D188) # $a3, 0x8013
/* B32C98 800BBAF8 24E7D188 */  addiu $a3, %lo(D_8012D188) # addiu $a3, $a3, -0x2e78
/* B32C9C 800BBAFC 8CC6D184 */  lw    $a2, %lo(D_8012D184)($a2)
/* B32CA0 800BBB00 94A5D180 */  lhu   $a1, %lo(D_8012D180)($a1)
/* B32CA4 800BBB04 248412F0 */  addiu $a0, %lo(D_801612F0) # addiu $a0, $a0, 0x12f0
/* B32CA8 800BBB08 AFA80010 */  sw    $t0, 0x10($sp)
/* B32CAC 800BBB0C AFA30018 */  sw    $v1, 0x18($sp)
/* B32CB0 800BBB10 0C0407AC */  jal   func_80101EB0
/* B32CB4 800BBB14 AFB90014 */   sw    $t9, 0x14($sp)
/* B32CB8 800BBB18 AFA20038 */  sw    $v0, 0x38($sp)
/* B32CBC 800BBB1C 3C048014 */  lui   $a0, %hi(D_80143DBC) # $a0, 0x8014
/* B32CC0 800BBB20 24843DBC */  addiu $a0, %lo(D_80143DBC) # addiu $a0, $a0, 0x3dbc
/* B32CC4 800BBB24 92060000 */  lbu   $a2, ($s0)
/* B32CC8 800BBB28 8FA50048 */  lw    $a1, 0x48($sp)
/* B32CCC 800BBB2C 0C00084C */  jal   osSyncPrintf
/* B32CD0 800BBB30 00403825 */   move  $a3, $v0
/* B32CD4 800BBB34 8FA90038 */  lw    $t1, 0x38($sp)
/* B32CD8 800BBB38 240A0001 */  li    $t2, 1
/* B32CDC 800BBB3C 15200002 */  bnez  $t1, .L800BBB48
/* B32CE0 800BBB40 00000000 */   nop   
/* B32CE4 800BBB44 AFAA0034 */  sw    $t2, 0x34($sp)
.L800BBB48:
/* B32CE8 800BBB48 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B32CEC 800BBB4C 248468C0 */  addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B32CF0 800BBB50 0C031CBF */  jal   PadMgr_UnlockReleaseControllerQueue
/* B32CF4 800BBB54 8FA5003C */   lw    $a1, 0x3c($sp)
/* B32CF8 800BBB58 8FBF002C */  lw    $ra, 0x2c($sp)
/* B32CFC 800BBB5C 8FA20034 */  lw    $v0, 0x34($sp)
/* B32D00 800BBB60 8FB00028 */  lw    $s0, 0x28($sp)
/* B32D04 800BBB64 03E00008 */  jr    $ra
/* B32D08 800BBB68 27BD0040 */   addiu $sp, $sp, 0x40

glabel func_800BBB6C
/* B32D0C 800BBB6C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B32D10 800BBB70 AFA40030 */  sw    $a0, 0x30($sp)
/* B32D14 800BBB74 AFBF001C */  sw    $ra, 0x1c($sp)
/* B32D18 800BBB78 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B32D1C 800BBB7C AFA50034 */  sw    $a1, 0x34($sp)
/* B32D20 800BBB80 AFA00024 */  sw    $zero, 0x24($sp)
/* B32D24 800BBB84 0C031C94 */  jal   PadMgr_LockGetControllerQueue
/* B32D28 800BBB88 248468C0 */   addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B32D2C 800BBB8C 93A30037 */  lbu   $v1, 0x37($sp)
/* B32D30 800BBB90 3C088013 */  lui   $t0, %hi(D_8012D198) # $t0, 0x8013
/* B32D34 800BBB94 2508D198 */  addiu $t0, %lo(D_8012D198) # addiu $t0, $t0, -0x2e68
/* B32D38 800BBB98 246EFFD9 */  addiu $t6, $v1, -0x27
/* B32D3C 800BBB9C A10E0000 */  sb    $t6, ($t0)
/* B32D40 800BBBA0 3C048016 */  lui   $a0, %hi(D_801612F0) # $a0, 0x8016
/* B32D44 800BBBA4 3C058013 */  lui   $a1, %hi(D_8012D180) # $a1, 0x8013
/* B32D48 800BBBA8 3C068013 */  lui   $a2, %hi(D_8012D184) # $a2, 0x8013
/* B32D4C 800BBBAC 3C078013 */  lui   $a3, %hi(D_8012D188) # $a3, 0x8013
/* B32D50 800BBBB0 AFA2002C */  sw    $v0, 0x2c($sp)
/* B32D54 800BBBB4 24E7D188 */  addiu $a3, %lo(D_8012D188) # addiu $a3, $a3, -0x2e78
/* B32D58 800BBBB8 8CC6D184 */  lw    $a2, %lo(D_8012D184)($a2)
/* B32D5C 800BBBBC 94A5D180 */  lhu   $a1, %lo(D_8012D180)($a1)
/* B32D60 800BBBC0 248412F0 */  addiu $a0, %lo(D_801612F0) # addiu $a0, $a0, 0x12f0
/* B32D64 800BBBC4 AFA80010 */  sw    $t0, 0x10($sp)
/* B32D68 800BBBC8 0C041078 */  jal   func_801041E0
/* B32D6C 800BBBCC AFA30020 */   sw    $v1, 0x20($sp)
/* B32D70 800BBBD0 14400003 */  bnez  $v0, .L800BBBE0
/* B32D74 800BBBD4 00403025 */   move  $a2, $v0
/* B32D78 800BBBD8 240F0001 */  li    $t7, 1
/* B32D7C 800BBBDC AFAF0024 */  sw    $t7, 0x24($sp)
.L800BBBE0:
/* B32D80 800BBBE0 3C048014 */  lui   $a0, %hi(D_80143DEC) # $a0, 0x8014
/* B32D84 800BBBE4 24843DEC */  addiu $a0, %lo(D_80143DEC) # addiu $a0, $a0, 0x3dec
/* B32D88 800BBBE8 0C00084C */  jal   osSyncPrintf
/* B32D8C 800BBBEC 8FA50020 */   lw    $a1, 0x20($sp)
/* B32D90 800BBBF0 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B32D94 800BBBF4 248468C0 */  addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B32D98 800BBBF8 0C031CBF */  jal   PadMgr_UnlockReleaseControllerQueue
/* B32D9C 800BBBFC 8FA5002C */   lw    $a1, 0x2c($sp)
/* B32DA0 800BBC00 8FBF001C */  lw    $ra, 0x1c($sp)
/* B32DA4 800BBC04 8FA20024 */  lw    $v0, 0x24($sp)
/* B32DA8 800BBC08 27BD0030 */  addiu $sp, $sp, 0x30
/* B32DAC 800BBC0C 03E00008 */  jr    $ra
/* B32DB0 800BBC10 00000000 */   nop   

glabel func_800BBC14
/* B32DB4 800BBC14 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B32DB8 800BBC18 AFA40048 */  sw    $a0, 0x48($sp)
/* B32DBC 800BBC1C AFBF0014 */  sw    $ra, 0x14($sp)
/* B32DC0 800BBC20 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B32DC4 800BBC24 AFA5004C */  sw    $a1, 0x4c($sp)
/* B32DC8 800BBC28 0C031C94 */  jal   PadMgr_LockGetControllerQueue
/* B32DCC 800BBC2C 248468C0 */   addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B32DD0 800BBC30 93AE004F */  lbu   $t6, 0x4f($sp)
/* B32DD4 800BBC34 3C058016 */  lui   $a1, %hi(D_8016125C)
/* B32DD8 800BBC38 3C048016 */  lui   $a0, %hi(D_801612F0) # $a0, 0x8016
/* B32DDC 800BBC3C 000E7880 */  sll   $t7, $t6, 2
/* B32DE0 800BBC40 00AF2821 */  addu  $a1, $a1, $t7
/* B32DE4 800BBC44 AFA20044 */  sw    $v0, 0x44($sp)
/* B32DE8 800BBC48 8CA5125C */  lw    $a1, %lo(D_8016125C)($a1)
/* B32DEC 800BBC4C 248412F0 */  addiu $a0, %lo(D_801612F0) # addiu $a0, $a0, 0x12f0
/* B32DF0 800BBC50 0C041358 */  jal   func_80104D60
/* B32DF4 800BBC54 27A60024 */   addiu $a2, $sp, 0x24
/* B32DF8 800BBC58 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B32DFC 800BBC5C AFA20020 */  sw    $v0, 0x20($sp)
/* B32E00 800BBC60 248468C0 */  addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B32E04 800BBC64 0C031CBF */  jal   PadMgr_UnlockReleaseControllerQueue
/* B32E08 800BBC68 8FA50044 */   lw    $a1, 0x44($sp)
/* B32E0C 800BBC6C 8FB80020 */  lw    $t8, 0x20($sp)
/* B32E10 800BBC70 8FBF0014 */  lw    $ra, 0x14($sp)
/* B32E14 800BBC74 8FA20024 */  lw    $v0, 0x24($sp)
/* B32E18 800BBC78 13000003 */  beqz  $t8, .L800BBC88
/* B32E1C 800BBC7C 00000000 */   nop   
/* B32E20 800BBC80 10000001 */  b     .L800BBC88
/* B32E24 800BBC84 00001025 */   move  $v0, $zero
.L800BBC88:
/* B32E28 800BBC88 03E00008 */  jr    $ra
/* B32E2C 800BBC8C 27BD0048 */   addiu $sp, $sp, 0x48
