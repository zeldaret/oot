.rdata
glabel D_801441DC
    .asciz "../z_play.c"
    .balign 4

.late_rodata
glabel jtbl_80144980
   .word L800BC728
   .word L800BC6C0
   .word L800BC790
   .word L800BC790
   .word L800BC790
   .word L800BC790
   .word L800BC790
   .word L800BC790
   .word L800BC728
   .word L800BC7F8
   .word L800BC7F8
   .word L800BC80C
   .word L800BC820
   .word L800BC790
   .word L800BC834
   .word L800BC848
   .word L800BC85C
   .word L800BC790
   .word L800BC790
   .word L800BC790

.text
glabel func_800BC5E0
/* B33780 800BC5E0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B33784 800BC5E4 3C010001 */  lui   $at, (0x000121C8 >> 16) # lui $at, 1
/* B33788 800BC5E8 00803025 */  move  $a2, $a0
/* B3378C 800BC5EC 342121C8 */  ori   $at, (0x000121C8 & 0xFFFF) # ori $at, $at, 0x21c8
/* B33790 800BC5F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B33794 800BC5F4 AFA50024 */  sw    $a1, 0x24($sp)
/* B33798 800BC5F8 00812021 */  addu  $a0, $a0, $at
/* B3379C 800BC5FC AFA40018 */  sw    $a0, 0x18($sp)
/* B337A0 800BC600 24050250 */  li    $a1, 592
/* B337A4 800BC604 0C001114 */  jal   bzero
/* B337A8 800BC608 AFA60020 */   sw    $a2, 0x20($sp)
/* B337AC 800BC60C 8FA20024 */  lw    $v0, 0x24($sp)
/* B337B0 800BC610 8FA40018 */  lw    $a0, 0x18($sp)
/* B337B4 800BC614 8FA60020 */  lw    $a2, 0x20($sp)
/* B337B8 800BC618 24010001 */  li    $at, 1
/* B337BC 800BC61C 00027143 */  sra   $t6, $v0, 5
/* B337C0 800BC620 15C1001D */  bne   $t6, $at, .L800BC698
/* B337C4 800BC624 AC820228 */   sw    $v0, 0x228($a0)
/* B337C8 800BC628 3C0F800B */  lui   $t7, %hi(func_800B301C) # $t7, 0x800b
/* B337CC 800BC62C 3C18800B */  lui   $t8, %hi(func_800B3044) # $t8, 0x800b
/* B337D0 800BC630 3C19800B */  lui   $t9, %hi(func_800B2E30) # $t9, 0x800b
/* B337D4 800BC634 3C08800B */  lui   $t0, %hi(func_800B346C) # $t0, 0x800b
/* B337D8 800BC638 3C09800B */  lui   $t1, %hi(func_800B31D0) # $t1, 0x800b
/* B337DC 800BC63C 3C0A800B */  lui   $t2, %hi(func_800B304C) # $t2, 0x800b
/* B337E0 800BC640 3C0B800B */  lui   $t3, %hi(func_800B3474) # $t3, 0x800b
/* B337E4 800BC644 3C0C800B */  lui   $t4, %hi(func_800B34CC) # $t4, 0x800b
/* B337E8 800BC648 3C0D800B */  lui   $t5, %hi(func_800B34D4) # $t5, 0x800b
/* B337EC 800BC64C 25EF301C */  addiu $t7, %lo(func_800B301C) # addiu $t7, $t7, 0x301c
/* B337F0 800BC650 27183044 */  addiu $t8, %lo(func_800B3044) # addiu $t8, $t8, 0x3044
/* B337F4 800BC654 27392E30 */  addiu $t9, %lo(func_800B2E30) # addiu $t9, $t9, 0x2e30
/* B337F8 800BC658 2508346C */  addiu $t0, %lo(func_800B346C) # addiu $t0, $t0, 0x346c
/* B337FC 800BC65C 252931D0 */  addiu $t1, %lo(func_800B31D0) # addiu $t1, $t1, 0x31d0
/* B33800 800BC660 254A304C */  addiu $t2, %lo(func_800B304C) # addiu $t2, $t2, 0x304c
/* B33804 800BC664 256B3474 */  addiu $t3, %lo(func_800B3474) # addiu $t3, $t3, 0x3474
/* B33808 800BC668 258C34CC */  addiu $t4, %lo(func_800B34CC) # addiu $t4, $t4, 0x34cc
/* B3380C 800BC66C 25AD34D4 */  addiu $t5, %lo(func_800B34D4) # addiu $t5, $t5, 0x34d4
/* B33810 800BC670 AC8F022C */  sw    $t7, 0x22c($a0)
/* B33814 800BC674 AC980230 */  sw    $t8, 0x230($a0)
/* B33818 800BC678 AC99023C */  sw    $t9, 0x23c($a0)
/* B3381C 800BC67C AC88024C */  sw    $t0, 0x24c($a0)
/* B33820 800BC680 AC890238 */  sw    $t1, 0x238($a0)
/* B33824 800BC684 AC8A0234 */  sw    $t2, 0x234($a0)
/* B33828 800BC688 AC8B0240 */  sw    $t3, 0x240($a0)
/* B3382C 800BC68C AC8C0244 */  sw    $t4, 0x244($a0)
/* B33830 800BC690 1000007A */  b     .L800BC87C
/* B33834 800BC694 AC8D0248 */   sw    $t5, 0x248($a0)
.L800BC698:
/* B33838 800BC698 8C8E0228 */  lw    $t6, 0x228($a0)
/* B3383C 800BC69C 240508F2 */  li    $a1, 2290
/* B33840 800BC6A0 2DC10014 */  sltiu $at, $t6, 0x14
/* B33844 800BC6A4 10200072 */  beqz  $at, .L800BC870
/* B33848 800BC6A8 000E7080 */   sll   $t6, $t6, 2
/* B3384C 800BC6AC 3C018014 */  lui   $at, %hi(jtbl_80144980)
/* B33850 800BC6B0 002E0821 */  addu  $at, $at, $t6
/* B33854 800BC6B4 8C2E4980 */  lw    $t6, %lo(jtbl_80144980)($at)
/* B33858 800BC6B8 01C00008 */  jr    $t6
/* B3385C 800BC6BC 00000000 */   nop   
glabel L800BC6C0
/* B33860 800BC6C0 3C0F800B */  lui   $t7, %hi(func_800B2438) # $t7, 0x800b
/* B33864 800BC6C4 3C18800B */  lui   $t8, %hi(func_800B24D0) # $t8, 0x800b
/* B33868 800BC6C8 3C19800B */  lui   $t9, %hi(func_800B2400) # $t9, 0x800b
/* B3386C 800BC6CC 3C08800B */  lui   $t0, %hi(func_800B2944) # $t0, 0x800b
/* B33870 800BC6D0 3C09800B */  lui   $t1, %hi(func_800B2604) # $t1, 0x800b
/* B33874 800BC6D4 3C0A800B */  lui   $t2, %hi(func_800B24D8) # $t2, 0x800b
/* B33878 800BC6D8 3C0B800B */  lui   $t3, %hi(func_800B25F4) # $t3, 0x800b
/* B3387C 800BC6DC 3C0C800B */  lui   $t4, %hi(func_800B25EC) # $t4, 0x800b
/* B33880 800BC6E0 25EF2438 */  addiu $t7, %lo(func_800B2438) # addiu $t7, $t7, 0x2438
/* B33884 800BC6E4 271824D0 */  addiu $t8, %lo(func_800B24D0) # addiu $t8, $t8, 0x24d0
/* B33888 800BC6E8 27392400 */  addiu $t9, %lo(func_800B2400) # addiu $t9, $t9, 0x2400
/* B3388C 800BC6EC 25082944 */  addiu $t0, %lo(func_800B2944) # addiu $t0, $t0, 0x2944
/* B33890 800BC6F0 25292604 */  addiu $t1, %lo(func_800B2604) # addiu $t1, $t1, 0x2604
/* B33894 800BC6F4 254A24D8 */  addiu $t2, %lo(func_800B24D8) # addiu $t2, $t2, 0x24d8
/* B33898 800BC6F8 256B25F4 */  addiu $t3, %lo(func_800B25F4) # addiu $t3, $t3, 0x25f4
/* B3389C 800BC6FC 258C25EC */  addiu $t4, %lo(func_800B25EC) # addiu $t4, $t4, 0x25ec
/* B338A0 800BC700 AC8F022C */  sw    $t7, 0x22c($a0)
/* B338A4 800BC704 AC980230 */  sw    $t8, 0x230($a0)
/* B338A8 800BC708 AC99023C */  sw    $t9, 0x23c($a0)
/* B338AC 800BC70C AC88024C */  sw    $t0, 0x24c($a0)
/* B338B0 800BC710 AC890238 */  sw    $t1, 0x238($a0)
/* B338B4 800BC714 AC8A0234 */  sw    $t2, 0x234($a0)
/* B338B8 800BC718 AC8B0240 */  sw    $t3, 0x240($a0)
/* B338BC 800BC71C AC8C0244 */  sw    $t4, 0x244($a0)
/* B338C0 800BC720 10000056 */  b     .L800BC87C
/* B338C4 800BC724 AC800248 */   sw    $zero, 0x248($a0)
glabel L800BC728
/* B338C8 800BC728 3C0D800B */  lui   $t5, %hi(func_800B2A88) # $t5, 0x800b
/* B338CC 800BC72C 3C0E800B */  lui   $t6, %hi(func_800B2AB0) # $t6, 0x800b
/* B338D0 800BC730 3C0F800B */  lui   $t7, %hi(func_800B29D0) # $t7, 0x800b
/* B338D4 800BC734 3C18800B */  lui   $t8, %hi(func_800B2DD4) # $t8, 0x800b
/* B338D8 800BC738 3C19800B */  lui   $t9, %hi(func_800B2B98) # $t9, 0x800b
/* B338DC 800BC73C 3C08800B */  lui   $t0, %hi(func_800B2AB8) # $t0, 0x800b
/* B338E0 800BC740 3C09800B */  lui   $t1, %hi(func_800B2DDC) # $t1, 0x800b
/* B338E4 800BC744 3C0A800B */  lui   $t2, %hi(func_800B2E1C) # $t2, 0x800b
/* B338E8 800BC748 25AD2A88 */  addiu $t5, %lo(func_800B2A88) # addiu $t5, $t5, 0x2a88
/* B338EC 800BC74C 25CE2AB0 */  addiu $t6, %lo(func_800B2AB0) # addiu $t6, $t6, 0x2ab0
/* B338F0 800BC750 25EF29D0 */  addiu $t7, %lo(func_800B29D0) # addiu $t7, $t7, 0x29d0
/* B338F4 800BC754 27182DD4 */  addiu $t8, %lo(func_800B2DD4) # addiu $t8, $t8, 0x2dd4
/* B338F8 800BC758 27392B98 */  addiu $t9, %lo(func_800B2B98) # addiu $t9, $t9, 0x2b98
/* B338FC 800BC75C 25082AB8 */  addiu $t0, %lo(func_800B2AB8) # addiu $t0, $t0, 0x2ab8
/* B33900 800BC760 25292DDC */  addiu $t1, %lo(func_800B2DDC) # addiu $t1, $t1, 0x2ddc
/* B33904 800BC764 254A2E1C */  addiu $t2, %lo(func_800B2E1C) # addiu $t2, $t2, 0x2e1c
/* B33908 800BC768 AC8D022C */  sw    $t5, 0x22c($a0)
/* B3390C 800BC76C AC8E0230 */  sw    $t6, 0x230($a0)
/* B33910 800BC770 AC8F023C */  sw    $t7, 0x23c($a0)
/* B33914 800BC774 AC98024C */  sw    $t8, 0x24c($a0)
/* B33918 800BC778 AC990238 */  sw    $t9, 0x238($a0)
/* B3391C 800BC77C AC880234 */  sw    $t0, 0x234($a0)
/* B33920 800BC780 AC890240 */  sw    $t1, 0x240($a0)
/* B33924 800BC784 AC8A0244 */  sw    $t2, 0x244($a0)
/* B33928 800BC788 1000003C */  b     .L800BC87C
/* B3392C 800BC78C AC800248 */   sw    $zero, 0x248($a0)
glabel L800BC790
/* B33930 800BC790 3C0B800B */  lui   $t3, %hi(func_800B3538) # $t3, 0x800b
/* B33934 800BC794 3C0C800B */  lui   $t4, %hi(func_800B3560) # $t4, 0x800b
/* B33938 800BC798 3C0D800B */  lui   $t5, %hi(func_800B34E0) # $t5, 0x800b
/* B3393C 800BC79C 3C0E800B */  lui   $t6, %hi(func_800B37DC) # $t6, 0x800b
/* B33940 800BC7A0 3C0F800B */  lui   $t7, %hi(func_800B3718) # $t7, 0x800b
/* B33944 800BC7A4 3C18800B */  lui   $t8, %hi(func_800B3568) # $t8, 0x800b
/* B33948 800BC7A8 3C19800B */  lui   $t9, %hi(func_800B37EC) # $t9, 0x800b
/* B3394C 800BC7AC 3C08800B */  lui   $t0, %hi(func_800B37E4) # $t0, 0x800b
/* B33950 800BC7B0 256B3538 */  addiu $t3, %lo(func_800B3538) # addiu $t3, $t3, 0x3538
/* B33954 800BC7B4 258C3560 */  addiu $t4, %lo(func_800B3560) # addiu $t4, $t4, 0x3560
/* B33958 800BC7B8 25AD34E0 */  addiu $t5, %lo(func_800B34E0) # addiu $t5, $t5, 0x34e0
/* B3395C 800BC7BC 25CE37DC */  addiu $t6, %lo(func_800B37DC) # addiu $t6, $t6, 0x37dc
/* B33960 800BC7C0 25EF3718 */  addiu $t7, %lo(func_800B3718) # addiu $t7, $t7, 0x3718
/* B33964 800BC7C4 27183568 */  addiu $t8, %lo(func_800B3568) # addiu $t8, $t8, 0x3568
/* B33968 800BC7C8 273937EC */  addiu $t9, %lo(func_800B37EC) # addiu $t9, $t9, 0x37ec
/* B3396C 800BC7CC 250837E4 */  addiu $t0, %lo(func_800B37E4) # addiu $t0, $t0, 0x37e4
/* B33970 800BC7D0 AC8B022C */  sw    $t3, 0x22c($a0)
/* B33974 800BC7D4 AC8C0230 */  sw    $t4, 0x230($a0)
/* B33978 800BC7D8 AC8D023C */  sw    $t5, 0x23c($a0)
/* B3397C 800BC7DC AC8E024C */  sw    $t6, 0x24c($a0)
/* B33980 800BC7E0 AC8F0238 */  sw    $t7, 0x238($a0)
/* B33984 800BC7E4 AC980234 */  sw    $t8, 0x234($a0)
/* B33988 800BC7E8 AC990240 */  sw    $t9, 0x240($a0)
/* B3398C 800BC7EC AC880244 */  sw    $t0, 0x244($a0)
/* B33990 800BC7F0 10000022 */  b     .L800BC87C
/* B33994 800BC7F4 AC800248 */   sw    $zero, 0x248($a0)
glabel L800BC7F8
/* B33998 800BC7F8 3C010001 */  lui   $at, 1
/* B3399C 800BC7FC 00260821 */  addu  $at, $at, $a2
/* B339A0 800BC800 24090004 */  li    $t1, 4
/* B339A4 800BC804 1000001D */  b     .L800BC87C
/* B339A8 800BC808 A029241B */   sb    $t1, 0x241b($at)
glabel L800BC80C
/* B339AC 800BC80C 3C010001 */  lui   $at, 1
/* B339B0 800BC810 00260821 */  addu  $at, $at, $a2
/* B339B4 800BC814 240A000A */  li    $t2, 10
/* B339B8 800BC818 10000018 */  b     .L800BC87C
/* B339BC 800BC81C A02A241B */   sb    $t2, 0x241b($at)
glabel L800BC820
/* B339C0 800BC820 3C010001 */  lui   $at, 1
/* B339C4 800BC824 00260821 */  addu  $at, $at, $a2
/* B339C8 800BC828 240B0007 */  li    $t3, 7
/* B339CC 800BC82C 10000013 */  b     .L800BC87C
/* B339D0 800BC830 A02B241B */   sb    $t3, 0x241b($at)
glabel L800BC834
/* B339D4 800BC834 3C010001 */  lui   $at, 1
/* B339D8 800BC838 00260821 */  addu  $at, $at, $a2
/* B339DC 800BC83C 240C000C */  li    $t4, 12
/* B339E0 800BC840 1000000E */  b     .L800BC87C
/* B339E4 800BC844 A02C241B */   sb    $t4, 0x241b($at)
glabel L800BC848
/* B339E8 800BC848 3C010001 */  lui   $at, 1
/* B339EC 800BC84C 00260821 */  addu  $at, $at, $a2
/* B339F0 800BC850 240D000E */  li    $t5, 14
/* B339F4 800BC854 10000009 */  b     .L800BC87C
/* B339F8 800BC858 A02D241B */   sb    $t5, 0x241b($at)
glabel L800BC85C
/* B339FC 800BC85C 3C010001 */  lui   $at, 1
/* B33A00 800BC860 00260821 */  addu  $at, $at, $a2
/* B33A04 800BC864 240E0010 */  li    $t6, 16
/* B33A08 800BC868 10000004 */  b     .L800BC87C
/* B33A0C 800BC86C A02E241B */   sb    $t6, 0x241b($at)
.L800BC870:
/* B33A10 800BC870 3C048014 */  lui   $a0, %hi(D_801441DC) # $a0, 0x8014
/* B33A14 800BC874 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* B33A18 800BC878 248441DC */   addiu $a0, %lo(D_801441DC) # addiu $a0, $a0, 0x41dc
.L800BC87C:
/* B33A1C 800BC87C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B33A20 800BC880 27BD0020 */  addiu $sp, $sp, 0x20
/* B33A24 800BC884 03E00008 */  jr    $ra
/* B33A28 800BC888 00000000 */   nop   

