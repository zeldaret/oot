.rdata
glabel D_801406F0
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_80140700
    .asciz "pskin_awb->avb_tbl != NULL"
    .balign 4

glabel D_8014071C
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_8014072C
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_8014073C
    .asciz "psavb->buf[0] != NULL"
    .balign 4

glabel D_80140754
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_80140764
    .asciz "../z_skin_awb.c"
    .balign 4

glabel D_80140774
    .asciz "psavb->buf[1] != NULL"
    .balign 4

glabel D_8014078C
    .asciz "../z_skin_awb.c"
    .balign 4

.text
glabel func_800A663C
/* B1D7DC 800A663C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B1D7E0 800A6640 AFB60030 */  sw    $s6, 0x30($sp)
/* B1D7E4 800A6644 00067100 */  sll   $t6, $a2, 4
/* B1D7E8 800A6648 3C168016 */  lui   $s6, %hi(gSegments) # $s6, 0x8016
/* B1D7EC 800A664C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1D7F0 800A6650 26D66FA8 */  addiu $s6, %lo(gSegments) # addiu $s6, $s6, 0x6fa8
/* B1D7F4 800A6654 000FC080 */  sll   $t8, $t7, 2
/* B1D7F8 800A6658 AFB70034 */  sw    $s7, 0x34($sp)
/* B1D7FC 800A665C 02D8C821 */  addu  $t9, $s6, $t8
/* B1D800 800A6660 8F290000 */  lw    $t1, ($t9)
/* B1D804 800A6664 3C1700FF */  lui   $s7, (0x00FFFFFF >> 16) # lui $s7, 0xff
/* B1D808 800A6668 36F7FFFF */  ori   $s7, (0x00FFFFFF & 0xFFFF) # ori $s7, $s7, 0xffff
/* B1D80C 800A666C AFBE0038 */  sw    $fp, 0x38($sp)
/* B1D810 800A6670 00D75024 */  and   $t2, $a2, $s7
/* B1D814 800A6674 3C1E8000 */  lui   $fp, 0x8000
/* B1D818 800A6678 012A5821 */  addu  $t3, $t1, $t2
/* B1D81C 800A667C AFBF003C */  sw    $ra, 0x3c($sp)
/* B1D820 800A6680 AFB5002C */  sw    $s5, 0x2c($sp)
/* B1D824 800A6684 AFB40028 */  sw    $s4, 0x28($sp)
/* B1D828 800A6688 AFB30024 */  sw    $s3, 0x24($sp)
/* B1D82C 800A668C AFB20020 */  sw    $s2, 0x20($sp)
/* B1D830 800A6690 AFB1001C */  sw    $s1, 0x1c($sp)
/* B1D834 800A6694 AFB00018 */  sw    $s0, 0x18($sp)
/* B1D838 800A6698 AFA40048 */  sw    $a0, 0x48($sp)
/* B1D83C 800A669C AFA70054 */  sw    $a3, 0x54($sp)
/* B1D840 800A66A0 017E1021 */  addu  $v0, $t3, $fp
/* B1D844 800A66A4 904C0004 */  lbu   $t4, 4($v0)
/* B1D848 800A66A8 ACA20000 */  sw    $v0, ($a1)
/* B1D84C 800A66AC 00A0A825 */  move  $s5, $a1
/* B1D850 800A66B0 ACAC0044 */  sw    $t4, 0x44($a1)
/* B1D854 800A66B4 8C430000 */  lw    $v1, ($v0)
/* B1D858 800A66B8 90480004 */  lbu   $t0, 4($v0)
/* B1D85C 800A66BC 00C08825 */  move  $s1, $a2
/* B1D860 800A66C0 00036900 */  sll   $t5, $v1, 4
/* B1D864 800A66C4 000D7702 */  srl   $t6, $t5, 0x1c
/* B1D868 800A66C8 000E7880 */  sll   $t7, $t6, 2
/* B1D86C 800A66CC 02CFC021 */  addu  $t8, $s6, $t7
/* B1D870 800A66D0 8F190000 */  lw    $t9, ($t8)
/* B1D874 800A66D4 00774824 */  and   $t1, $v1, $s7
/* B1D878 800A66D8 00082080 */  sll   $a0, $t0, 2
/* B1D87C 800A66DC 3C058014 */  lui   $a1, %hi(D_801406F0) # $a1, 0x8014
/* B1D880 800A66E0 00882023 */  subu  $a0, $a0, $t0
/* B1D884 800A66E4 03295021 */  addu  $t2, $t9, $t1
/* B1D888 800A66E8 015E8021 */  addu  $s0, $t2, $fp
/* B1D88C 800A66EC 00042080 */  sll   $a0, $a0, 2
/* B1D890 800A66F0 24A506F0 */  addiu $a1, %lo(D_801406F0) # addiu $a1, $a1, 0x6f0
/* B1D894 800A66F4 AFB10050 */  sw    $s1, 0x50($sp)
/* B1D898 800A66F8 240600D4 */  li    $a2, 212
/* B1D89C 800A66FC 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* B1D8A0 800A6700 AFA80044 */   sw    $t0, 0x44($sp)
/* B1D8A4 800A6704 14400007 */  bnez  $v0, .L800A6724
/* B1D8A8 800A6708 AEA20048 */   sw    $v0, 0x48($s5)
/* B1D8AC 800A670C 3C048014 */  lui   $a0, %hi(D_80140700) # $a0, 0x8014
/* B1D8B0 800A6710 3C058014 */  lui   $a1, %hi(D_8014071C) # $a1, 0x8014
/* B1D8B4 800A6714 24A5071C */  addiu $a1, %lo(D_8014071C) # addiu $a1, $a1, 0x71c
/* B1D8B8 800A6718 24840700 */  addiu $a0, %lo(D_80140700) # addiu $a0, $a0, 0x700
/* B1D8BC 800A671C 0C0007FC */  jal   __assert
/* B1D8C0 800A6720 240600D6 */   li    $a2, 214
.L800A6724:
/* B1D8C4 800A6724 8FAB0044 */  lw    $t3, 0x44($sp)
/* B1D8C8 800A6728 00009025 */  move  $s2, $zero
/* B1D8CC 800A672C 00009825 */  move  $s3, $zero
/* B1D8D0 800A6730 19600044 */  blez  $t3, .L800A6844
/* B1D8D4 800A6734 0200A025 */   move  $s4, $s0
.L800A6738:
/* B1D8D8 800A6738 8E820000 */  lw    $v0, ($s4)
/* B1D8DC 800A673C 8EAC0048 */  lw    $t4, 0x48($s5)
/* B1D8E0 800A6740 24010004 */  li    $at, 4
/* B1D8E4 800A6744 00027100 */  sll   $t6, $v0, 4
/* B1D8E8 800A6748 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1D8EC 800A674C 000FC080 */  sll   $t8, $t7, 2
/* B1D8F0 800A6750 02D8C821 */  addu  $t9, $s6, $t8
/* B1D8F4 800A6754 8F290000 */  lw    $t1, ($t9)
/* B1D8F8 800A6758 00576824 */  and   $t5, $v0, $s7
/* B1D8FC 800A675C 01938021 */  addu  $s0, $t4, $s3
/* B1D900 800A6760 01A95021 */  addu  $t2, $t5, $t1
/* B1D904 800A6764 015E1821 */  addu  $v1, $t2, $fp
/* B1D908 800A6768 8C6B0008 */  lw    $t3, 8($v1)
/* B1D90C 800A676C 55610006 */  bnel  $t3, $at, .L800A6788
/* B1D910 800A6770 A2000000 */   sb    $zero, ($s0)
/* B1D914 800A6774 8C67000C */  lw    $a3, 0xc($v1)
/* B1D918 800A6778 3C058014 */  lui   $a1, %hi(D_8014072C) # $a1, 0x8014
/* B1D91C 800A677C 14E00005 */  bnez  $a3, .L800A6794
/* B1D920 800A6780 00F76024 */   and   $t4, $a3, $s7
/* B1D924 800A6784 A2000000 */  sb    $zero, ($s0)
.L800A6788:
/* B1D928 800A6788 AE000004 */  sw    $zero, 4($s0)
/* B1D92C 800A678C 10000028 */  b     .L800A6830
/* B1D930 800A6790 AE000008 */   sw    $zero, 8($s0)
.L800A6794:
/* B1D934 800A6794 00077100 */  sll   $t6, $a3, 4
/* B1D938 800A6798 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1D93C 800A679C 000FC080 */  sll   $t8, $t7, 2
/* B1D940 800A67A0 02D8C821 */  addu  $t9, $s6, $t8
/* B1D944 800A67A4 8F2D0000 */  lw    $t5, ($t9)
/* B1D948 800A67A8 A2000000 */  sb    $zero, ($s0)
/* B1D94C 800A67AC 24A5072C */  addiu $a1, %lo(D_8014072C) # addiu $a1, $a1, 0x72c
/* B1D950 800A67B0 018D4821 */  addu  $t1, $t4, $t5
/* B1D954 800A67B4 013E8821 */  addu  $s1, $t1, $fp
/* B1D958 800A67B8 96240000 */  lhu   $a0, ($s1)
/* B1D95C 800A67BC 240600EB */  li    $a2, 235
/* B1D960 800A67C0 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* B1D964 800A67C4 00042100 */   sll   $a0, $a0, 4
/* B1D968 800A67C8 14400007 */  bnez  $v0, .L800A67E8
/* B1D96C 800A67CC AE020004 */   sw    $v0, 4($s0)
/* B1D970 800A67D0 3C048014 */  lui   $a0, %hi(D_8014073C) # $a0, 0x8014
/* B1D974 800A67D4 3C058014 */  lui   $a1, %hi(D_80140754) # $a1, 0x8014
/* B1D978 800A67D8 24A50754 */  addiu $a1, %lo(D_80140754) # addiu $a1, $a1, 0x754
/* B1D97C 800A67DC 2484073C */  addiu $a0, %lo(D_8014073C) # addiu $a0, $a0, 0x73c
/* B1D980 800A67E0 0C0007FC */  jal   __assert
/* B1D984 800A67E4 240600ED */   li    $a2, 237
.L800A67E8:
/* B1D988 800A67E8 96240000 */  lhu   $a0, ($s1)
/* B1D98C 800A67EC 3C058014 */  lui   $a1, %hi(D_80140764) # $a1, 0x8014
/* B1D990 800A67F0 24A50764 */  addiu $a1, %lo(D_80140764) # addiu $a1, $a1, 0x764
/* B1D994 800A67F4 240600F0 */  li    $a2, 240
/* B1D998 800A67F8 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* B1D99C 800A67FC 00042100 */   sll   $a0, $a0, 4
/* B1D9A0 800A6800 14400007 */  bnez  $v0, .L800A6820
/* B1D9A4 800A6804 AE020008 */   sw    $v0, 8($s0)
/* B1D9A8 800A6808 3C048014 */  lui   $a0, %hi(D_80140774) # $a0, 0x8014
/* B1D9AC 800A680C 3C058014 */  lui   $a1, %hi(D_8014078C) # $a1, 0x8014
/* B1D9B0 800A6810 24A5078C */  addiu $a1, %lo(D_8014078C) # addiu $a1, $a1, 0x78c
/* B1D9B4 800A6814 24840774 */  addiu $a0, %lo(D_80140774) # addiu $a0, $a0, 0x774
/* B1D9B8 800A6818 0C0007FC */  jal   __assert
/* B1D9BC 800A681C 240600F2 */   li    $a2, 242
.L800A6820:
/* B1D9C0 800A6820 8FA40048 */  lw    $a0, 0x48($sp)
/* B1D9C4 800A6824 02A02825 */  move  $a1, $s5
/* B1D9C8 800A6828 0C029918 */  jal   func_800A6460
/* B1D9CC 800A682C 02403025 */   move  $a2, $s2
.L800A6830:
/* B1D9D0 800A6830 8FAA0044 */  lw    $t2, 0x44($sp)
/* B1D9D4 800A6834 26520001 */  addiu $s2, $s2, 1
/* B1D9D8 800A6838 2673000C */  addiu $s3, $s3, 0xc
/* B1D9DC 800A683C 164AFFBE */  bne   $s2, $t2, .L800A6738
/* B1D9E0 800A6840 26940004 */   addiu $s4, $s4, 4
.L800A6844:
/* B1D9E4 800A6844 8FA40048 */  lw    $a0, 0x48($sp)
/* B1D9E8 800A6848 26A5004C */  addiu $a1, $s5, 0x4c
/* B1D9EC 800A684C 8FA60050 */  lw    $a2, 0x50($sp)
/* B1D9F0 800A6850 0C02921F */  jal   SkelAnime_InitSkin
/* B1D9F4 800A6854 8FA70054 */   lw    $a3, 0x54($sp)
/* B1D9F8 800A6858 8FBF003C */  lw    $ra, 0x3c($sp)
/* B1D9FC 800A685C 8FB00018 */  lw    $s0, 0x18($sp)
/* B1DA00 800A6860 8FB1001C */  lw    $s1, 0x1c($sp)
/* B1DA04 800A6864 8FB20020 */  lw    $s2, 0x20($sp)
/* B1DA08 800A6868 8FB30024 */  lw    $s3, 0x24($sp)
/* B1DA0C 800A686C 8FB40028 */  lw    $s4, 0x28($sp)
/* B1DA10 800A6870 8FB5002C */  lw    $s5, 0x2c($sp)
/* B1DA14 800A6874 8FB60030 */  lw    $s6, 0x30($sp)
/* B1DA18 800A6878 8FB70034 */  lw    $s7, 0x34($sp)
/* B1DA1C 800A687C 8FBE0038 */  lw    $fp, 0x38($sp)
/* B1DA20 800A6880 03E00008 */  jr    $ra
/* B1DA24 800A6884 27BD0048 */   addiu $sp, $sp, 0x48

