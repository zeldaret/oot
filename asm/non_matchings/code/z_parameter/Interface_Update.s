.rdata
glabel D_8013E420
    .asciz "J_N=%x J_N=%x\n"
    .balign 4

glabel D_8013E430
    .asciz "J_N=%x J_N=%x\n"
    .balign 4

glabel D_8013E440
    .asciz "J_N=%x J_N=%x\n"
    .balign 4

glabel D_8013E450
    .asciz "case 50 : alpha=%d  alpha1=%d\n"
    .balign 4

glabel D_8013E470
    .asciz "now_life=%d  max_life=%d\n"
    .balign 4

glabel D_8013E48C
    .asciz "S_Private.now_life=%d  S_Private.max_life=%d\n"
    .balign 4

glabel D_8013E4BC
    .asciz "ルピー数ＭＡＸ = %d\n"
    # Translation: Rupee Count MAX
    .balign 4

glabel D_8013E4D4
    .asciz "\x1B[33m"
    .balign 4

glabel D_8013E4DC
    .asciz "魔法スター─────ト！！！！！！！！！\n"
    # Translation: Magic start!!!!!!!!!
    .balign 4

glabel D_8013E508
    .asciz "MAGIC_MAX=%d\n"
    .balign 4

glabel D_8013E518
    .asciz "MAGIC_NOW=%d\n"
    .balign 4

glabel D_8013E528
    .asciz "Z_MAGIC_NOW_NOW=%d\n"
    .balign 4

glabel D_8013E53C
    .asciz "Z_MAGIC_NOW_MAX=%d\n"
    .balign 4

glabel D_8013E550
    .asciz "\x1B[m"
    .balign 4

.late_rodata
glabel jtbl_8013E6BC
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804
    .word L8008D804

glabel jtbl_8013E6F0
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C
    .word L8008D93C

glabel D_8013E740
    .float 31400.0

glabel D_8013E744
    .float 15700.0

glabel D_8013E748
    .float -15700.0

glabel D_8013E74C
    .float 31400.0

glabel D_8013E750
    .float 31400.0

glabel D_8013E754
    .float 15700.0

glabel D_8013E758
    .float -15700.0

glabel D_8013E75C
    .float 31400.0

.text
glabel Interface_Update
/* B047BC 8008D61C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B047C0 8008D620 AFBF001C */  sw    $ra, 0x1c($sp)
/* B047C4 8008D624 AFA40048 */  sw    $a0, 0x48($sp)
/* B047C8 8008D628 8C8F1C44 */  lw    $t7, 0x1c44($a0)
/* B047CC 8008D62C 2401FDFF */  li    $at, -513
/* B047D0 8008D630 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B047D4 8008D634 AFAF003C */  sw    $t7, 0x3c($sp)
/* B047D8 8008D638 94980050 */  lhu   $t8, 0x50($a0)
/* B047DC 8008D63C 3C048014 */  lui   $a0, %hi(D_8013E420) # $a0, 0x8014
/* B047E0 8008D640 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B047E4 8008D644 0301C827 */  nor   $t9, $t8, $at
/* B047E8 8008D648 17200008 */  bnez  $t9, .L8008D66C
/* B047EC 8008D64C 2484E420 */   addiu $a0, %lo(D_8013E420) # addiu $a0, $a0, -0x1be0
/* B047F0 8008D650 3C068016 */  lui   $a2, %hi(gSaveContext+0x1409) # $a2, 0x8016
/* B047F4 8008D654 A1001409 */  sb    $zero, 0x1409($t0)
/* B047F8 8008D658 24C6FA69 */  addiu $a2, %lo(gSaveContext+0x1409) # addiu $a2, $a2, -0x597
/* B047FC 8008D65C 0C00084C */  jal   osSyncPrintf
/* B04800 8008D660 300500FF */   andi  $a1, $zero, 0xff
/* B04804 8008D664 10000020 */  b     .L8008D6E8
/* B04808 8008D668 8FB80048 */   lw    $t8, 0x48($sp)
.L8008D66C:
/* B0480C 8008D66C 8FAB0048 */  lw    $t3, 0x48($sp)
/* B04810 8008D670 2401F7FF */  li    $at, -2049
/* B04814 8008D674 95620050 */  lhu   $v0, 0x50($t3)
/* B04818 8008D678 00416027 */  nor   $t4, $v0, $at
/* B0481C 8008D67C 1580000C */  bnez  $t4, .L8008D6B0
/* B04820 8008D680 3C088016 */   lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04824 8008D684 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04828 8008D688 240D0001 */  li    $t5, 1
/* B0482C 8008D68C 3C048014 */  lui   $a0, %hi(D_8013E430) # $a0, 0x8014
/* B04830 8008D690 3C068016 */  lui   $a2, %hi(gSaveContext+0x1409) # $a2, 0x8016
/* B04834 8008D694 A10D1409 */  sb    $t5, 0x1409($t0)
/* B04838 8008D698 24C6FA69 */  addiu $a2, %lo(gSaveContext+0x1409) # addiu $a2, $a2, -0x597
/* B0483C 8008D69C 2484E430 */  addiu $a0, %lo(D_8013E430) # addiu $a0, $a0, -0x1bd0
/* B04840 8008D6A0 0C00084C */  jal   osSyncPrintf
/* B04844 8008D6A4 31A500FF */   andi  $a1, $t5, 0xff
/* B04848 8008D6A8 1000000F */  b     .L8008D6E8
/* B0484C 8008D6AC 8FB80048 */   lw    $t8, 0x48($sp)
.L8008D6B0:
/* B04850 8008D6B0 2401FEFF */  li    $at, -257
/* B04854 8008D6B4 00417827 */  nor   $t7, $v0, $at
/* B04858 8008D6B8 15E0000A */  bnez  $t7, .L8008D6E4
/* B0485C 8008D6BC 3C088016 */   lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04860 8008D6C0 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04864 8008D6C4 240E0002 */  li    $t6, 2
/* B04868 8008D6C8 3C048014 */  lui   $a0, %hi(D_8013E440) # $a0, 0x8014
/* B0486C 8008D6CC 3C068016 */  lui   $a2, %hi(gSaveContext+0x1409) # $a2, 0x8016
/* B04870 8008D6D0 A10E1409 */  sb    $t6, 0x1409($t0)
/* B04874 8008D6D4 24C6FA69 */  addiu $a2, %lo(gSaveContext+0x1409) # addiu $a2, $a2, -0x597
/* B04878 8008D6D8 2484E440 */  addiu $a0, %lo(D_8013E440) # addiu $a0, $a0, -0x1bc0
/* B0487C 8008D6DC 0C00084C */  jal   osSyncPrintf
/* B04880 8008D6E0 31C500FF */   andi  $a1, $t6, 0xff
.L8008D6E4:
/* B04884 8008D6E4 8FB80048 */  lw    $t8, 0x48($sp)
.L8008D6E8:
/* B04888 8008D6E8 3C010001 */  lui   $at, 1
/* B0488C 8008D6EC 3C0B0001 */  lui   $t3, 1
/* B04890 8008D6F0 0301C821 */  addu  $t9, $t8, $at
/* B04894 8008D6F4 AFB90024 */  sw    $t9, 0x24($sp)
/* B04898 8008D6F8 01785821 */  addu  $t3, $t3, $t8
/* B0489C 8008D6FC 956B0934 */  lhu   $t3, 0x934($t3)
/* B048A0 8008D700 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B048A4 8008D704 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B048A8 8008D708 15600026 */  bnez  $t3, .L8008D7A4
/* B048AC 8008D70C 3C0C0001 */   lui   $t4, 1
/* B048B0 8008D710 01986021 */  addu  $t4, $t4, $t8
/* B048B4 8008D714 958C0936 */  lhu   $t4, 0x936($t4)
/* B048B8 8008D718 55800023 */  bnezl $t4, .L8008D7A8
/* B048BC 8008D71C 950213E8 */   lhu   $v0, 0x13e8($t0)
/* B048C0 8008D720 950D1404 */  lhu   $t5, 0x1404($t0)
/* B048C4 8008D724 24010001 */  li    $at, 1
/* B048C8 8008D728 8FAE0048 */  lw    $t6, 0x48($sp)
/* B048CC 8008D72C 51A1000B */  beql  $t5, $at, .L8008D75C
/* B048D0 8008D730 3C020001 */   lui   $v0, 1
/* B048D4 8008D734 8D021360 */  lw    $v0, 0x1360($t0)
/* B048D8 8008D738 28410004 */  slti  $at, $v0, 4
/* B048DC 8008D73C 54200007 */  bnezl $at, .L8008D75C
/* B048E0 8008D740 3C020001 */   lui   $v0, 1
/* B048E4 8008D744 870F00A4 */  lh    $t7, 0xa4($t8)
/* B048E8 8008D748 24010063 */  li    $at, 99
/* B048EC 8008D74C 15E10015 */  bne   $t7, $at, .L8008D7A4
/* B048F0 8008D750 24010004 */   li    $at, 4
/* B048F4 8008D754 14410013 */  bne   $v0, $at, .L8008D7A4
/* B048F8 8008D758 3C020001 */   lui   $v0, 1
.L8008D75C:
/* B048FC 8008D75C 004E1021 */  addu  $v0, $v0, $t6
/* B04900 8008D760 904203DC */  lbu   $v0, 0x3dc($v0)
/* B04904 8008D764 8FAB0024 */  lw    $t3, 0x24($sp)
/* B04908 8008D768 50400008 */  beql  $v0, $zero, .L8008D78C
/* B0490C 8008D76C 956C0A20 */   lhu   $t4, 0xa20($t3)
/* B04910 8008D770 5040000D */  beql  $v0, $zero, .L8008D7A8
/* B04914 8008D774 950213E8 */   lhu   $v0, 0x13e8($t0)
/* B04918 8008D778 85D900A4 */  lh    $t9, 0xa4($t6)
/* B0491C 8008D77C 2401004B */  li    $at, 75
/* B04920 8008D780 57210009 */  bnel  $t9, $at, .L8008D7A8
/* B04924 8008D784 950213E8 */   lhu   $v0, 0x13e8($t0)
/* B04928 8008D788 956C0A20 */  lhu   $t4, 0xa20($t3)
.L8008D78C:
/* B0492C 8008D78C 55800006 */  bnezl $t4, .L8008D7A8
/* B04930 8008D790 950213E8 */   lhu   $v0, 0x13e8($t0)
/* B04934 8008D794 0C020C42 */  jal   func_80083108
/* B04938 8008D798 8FA40048 */   lw    $a0, 0x48($sp)
/* B0493C 8008D79C 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04940 8008D7A0 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
.L8008D7A4:
/* B04944 8008D7A4 950213E8 */  lhu   $v0, 0x13e8($t0)
.L8008D7A8:
/* B04948 8008D7A8 28410033 */  slti  $at, $v0, 0x33
/* B0494C 8008D7AC 14200005 */  bnez  $at, .L8008D7C4
/* B04950 8008D7B0 24010034 */   li    $at, 52
/* B04954 8008D7B4 10410075 */  beq   $v0, $at, .L8008D98C
/* B04958 8008D7B8 240D0001 */   li    $t5, 1
/* B0495C 8008D7BC 1000007B */  b     .L8008D9AC
/* B04960 8008D7C0 8FB80048 */   lw    $t8, 0x48($sp)
.L8008D7C4:
/* B04964 8008D7C4 2841000E */  slti  $at, $v0, 0xe
/* B04968 8008D7C8 14200006 */  bnez  $at, .L8008D7E4
/* B0496C 8008D7CC 244DFFFF */   addiu $t5, $v0, -1
/* B04970 8008D7D0 24010032 */  li    $at, 50
/* B04974 8008D7D4 10410025 */  beq   $v0, $at, .L8008D86C
/* B04978 8008D7D8 3C048014 */   lui   $a0, %hi(D_8013E450)
/* B0497C 8008D7DC 10000073 */  b     .L8008D9AC
/* B04980 8008D7E0 8FB80048 */   lw    $t8, 0x48($sp)
.L8008D7E4:
/* B04984 8008D7E4 2DA1000D */  sltiu $at, $t5, 0xd
/* B04988 8008D7E8 1020006F */  beqz  $at, .L8008D9A8
/* B0498C 8008D7EC 000D6880 */   sll   $t5, $t5, 2
/* B04990 8008D7F0 3C018014 */  lui   $at, %hi(jtbl_8013E6BC)
/* B04994 8008D7F4 002D0821 */  addu  $at, $at, $t5
/* B04998 8008D7F8 8C2DE6BC */  lw    $t5, %lo(jtbl_8013E6BC)($at)
/* B0499C 8008D7FC 01A00008 */  jr    $t5
/* B049A0 8008D800 00000000 */   nop   
glabel L8008D804
/* B049A4 8008D804 951813EC */  lhu   $t8, 0x13ec($t0)
/* B049A8 8008D808 240300FF */  li    $v1, 255
/* B049AC 8008D80C 8FA40048 */  lw    $a0, 0x48($sp)
/* B049B0 8008D810 00187940 */  sll   $t7, $t8, 5
/* B049B4 8008D814 006F2823 */  subu  $a1, $v1, $t7
/* B049B8 8008D818 00052C00 */  sll   $a1, $a1, 0x10
/* B049BC 8008D81C 00052C03 */  sra   $a1, $a1, 0x10
/* B049C0 8008D820 04A10002 */  bgez  $a1, .L8008D82C
/* B049C4 8008D824 00000000 */   nop   
/* B049C8 8008D828 00002825 */  move  $a1, $zero
.L8008D82C:
/* B049CC 8008D82C 0C020A14 */  jal   func_80082850
/* B049D0 8008D830 A7A5003A */   sh    $a1, 0x3a($sp)
/* B049D4 8008D834 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B049D8 8008D838 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B049DC 8008D83C 950E13EC */  lhu   $t6, 0x13ec($t0)
/* B049E0 8008D840 87A5003A */  lh    $a1, 0x3a($sp)
/* B049E4 8008D844 25D90001 */  addiu $t9, $t6, 1
/* B049E8 8008D848 14A00002 */  bnez  $a1, .L8008D854
/* B049EC 8008D84C A51913EC */   sh    $t9, 0x13ec($t0)
/* B049F0 8008D850 A50013E8 */  sh    $zero, 0x13e8($t0)
.L8008D854:
/* B049F4 8008D854 8FAB0048 */  lw    $t3, 0x48($sp)
/* B049F8 8008D858 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* B049FC 8008D85C 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* B04A00 8008D860 01616021 */  addu  $t4, $t3, $at
/* B04A04 8008D864 10000055 */  b     .L8008D9BC
/* B04A08 8008D868 AFAC0028 */   sw    $t4, 0x28($sp)
.L8008D86C:
/* B04A0C 8008D86C 950D13EC */  lhu   $t5, 0x13ec($t0)
/* B04A10 8008D870 240300FF */  li    $v1, 255
/* B04A14 8008D874 2484E450 */  addiu $a0, %lo(D_8013E450)
/* B04A18 8008D878 000DC140 */  sll   $t8, $t5, 5
/* B04A1C 8008D87C 00782823 */  subu  $a1, $v1, $t8
/* B04A20 8008D880 00052C00 */  sll   $a1, $a1, 0x10
/* B04A24 8008D884 00052C03 */  sra   $a1, $a1, 0x10
/* B04A28 8008D888 04A30003 */  bgezl $a1, .L8008D898
/* B04A2C 8008D88C 00651023 */   subu  $v0, $v1, $a1
/* B04A30 8008D890 00002825 */  move  $a1, $zero
/* B04A34 8008D894 00651023 */  subu  $v0, $v1, $a1
.L8008D898:
/* B04A38 8008D898 00027C00 */  sll   $t7, $v0, 0x10
/* B04A3C 8008D89C 000F7403 */  sra   $t6, $t7, 0x10
/* B04A40 8008D8A0 00023400 */  sll   $a2, $v0, 0x10
/* B04A44 8008D8A4 29C100FF */  slti  $at, $t6, 0xff
/* B04A48 8008D8A8 14200003 */  bnez  $at, .L8008D8B8
/* B04A4C 8008D8AC 00063403 */   sra   $a2, $a2, 0x10
/* B04A50 8008D8B0 00033400 */  sll   $a2, $v1, 0x10
/* B04A54 8008D8B4 00063403 */  sra   $a2, $a2, 0x10
.L8008D8B8:
/* B04A58 8008D8B8 0C00084C */  jal   osSyncPrintf
/* B04A5C 8008D8BC A7A60038 */   sh    $a2, 0x38($sp)
/* B04A60 8008D8C0 87A60038 */  lh    $a2, 0x38($sp)
/* B04A64 8008D8C4 8FA40048 */  lw    $a0, 0x48($sp)
/* B04A68 8008D8C8 00062C00 */  sll   $a1, $a2, 0x10
/* B04A6C 8008D8CC 0C020991 */  jal   func_80082644
/* B04A70 8008D8D0 00052C03 */   sra   $a1, $a1, 0x10
/* B04A74 8008D8D4 8FA20048 */  lw    $v0, 0x48($sp)
/* B04A78 8008D8D8 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* B04A7C 8008D8DC 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* B04A80 8008D8E0 00411021 */  addu  $v0, $v0, $at
/* B04A84 8008D8E4 94590250 */  lhu   $t9, 0x250($v0)
/* B04A88 8008D8E8 240300FF */  li    $v1, 255
/* B04A8C 8008D8EC 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04A90 8008D8F0 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04A94 8008D8F4 10790002 */  beq   $v1, $t9, .L8008D900
/* B04A98 8008D8F8 87A60038 */   lh    $a2, 0x38($sp)
/* B04A9C 8008D8FC A4460250 */  sh    $a2, 0x250($v0)
.L8008D900:
/* B04AA0 8008D900 944B0252 */  lhu   $t3, 0x252($v0)
/* B04AA4 8008D904 506B0003 */  beql  $v1, $t3, .L8008D914
/* B04AA8 8008D908 8FAC0048 */   lw    $t4, 0x48($sp)
/* B04AAC 8008D90C A4460252 */  sh    $a2, 0x252($v0)
/* B04AB0 8008D910 8FAC0048 */  lw    $t4, 0x48($sp)
.L8008D914:
/* B04AB4 8008D914 858D00A4 */  lh    $t5, 0xa4($t4)
/* B04AB8 8008D918 25B8FFAF */  addiu $t8, $t5, -0x51
/* B04ABC 8008D91C 2F010014 */  sltiu $at, $t8, 0x14
/* B04AC0 8008D920 1020000F */  beqz  $at, .L8008D960
/* B04AC4 8008D924 0018C080 */   sll   $t8, $t8, 2
/* B04AC8 8008D928 3C018014 */  lui   $at, %hi(jtbl_8013E6F0)
/* B04ACC 8008D92C 00380821 */  addu  $at, $at, $t8
/* B04AD0 8008D930 8C38E6F0 */  lw    $t8, %lo(jtbl_8013E6F0)($at)
/* B04AD4 8008D934 03000008 */  jr    $t8
/* B04AD8 8008D938 00000000 */   nop   
glabel L8008D93C
/* B04ADC 8008D93C 944F0254 */  lhu   $t7, 0x254($v0)
/* B04AE0 8008D940 240E00AA */  li    $t6, 170
/* B04AE4 8008D944 29E100AA */  slti  $at, $t7, 0xaa
/* B04AE8 8008D948 10200003 */  beqz  $at, .L8008D958
/* B04AEC 8008D94C 00000000 */   nop   
/* B04AF0 8008D950 10000007 */  b     .L8008D970
/* B04AF4 8008D954 A4460254 */   sh    $a2, 0x254($v0)
.L8008D958:
/* B04AF8 8008D958 10000005 */  b     .L8008D970
/* B04AFC 8008D95C A44E0254 */   sh    $t6, 0x254($v0)
.L8008D960:
/* B04B00 8008D960 94590254 */  lhu   $t9, 0x254($v0)
/* B04B04 8008D964 50790003 */  beql  $v1, $t9, .L8008D974
/* B04B08 8008D968 950B13EC */   lhu   $t3, 0x13ec($t0)
/* B04B0C 8008D96C A4460254 */  sh    $a2, 0x254($v0)
.L8008D970:
/* B04B10 8008D970 950B13EC */  lhu   $t3, 0x13ec($t0)
.L8008D974:
/* B04B14 8008D974 256C0001 */  addiu $t4, $t3, 1
/* B04B18 8008D978 14C30002 */  bne   $a2, $v1, .L8008D984
/* B04B1C 8008D97C A50C13EC */   sh    $t4, 0x13ec($t0)
/* B04B20 8008D980 A50013E8 */  sh    $zero, 0x13e8($t0)
.L8008D984:
/* B04B24 8008D984 1000000D */  b     .L8008D9BC
/* B04B28 8008D988 AFA20028 */   sw    $v0, 0x28($sp)
.L8008D98C:
/* B04B2C 8008D98C A50D13E8 */  sh    $t5, 0x13e8($t0)
/* B04B30 8008D990 8FA40048 */  lw    $a0, 0x48($sp)
/* B04B34 8008D994 0C020A14 */  jal   func_80082850
/* B04B38 8008D998 00002825 */   move  $a1, $zero
/* B04B3C 8008D99C 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04B40 8008D9A0 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04B44 8008D9A4 A50013E8 */  sh    $zero, 0x13e8($t0)
.L8008D9A8:
/* B04B48 8008D9A8 8FB80048 */  lw    $t8, 0x48($sp)
.L8008D9AC:
/* B04B4C 8008D9AC 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* B04B50 8008D9B0 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* B04B54 8008D9B4 03017821 */  addu  $t7, $t8, $at
/* B04B58 8008D9B8 AFAF0028 */  sw    $t7, 0x28($sp)
.L8008D9BC:
/* B04B5C 8008D9BC 0C02089B */  jal   Map_Update
/* B04B60 8008D9C0 8FA40048 */   lw    $a0, 0x48($sp)
/* B04B64 8008D9C4 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04B68 8008D9C8 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04B6C 8008D9CC 85021424 */  lh    $v0, 0x1424($t0)
/* B04B70 8008D9D0 1040002B */  beqz  $v0, .L8008DA80
/* B04B74 8008D9D4 00000000 */   nop   
/* B04B78 8008D9D8 85190030 */  lh    $t9, 0x30($t0)
/* B04B7C 8008D9DC 244EFFFC */  addiu $t6, $v0, -4
/* B04B80 8008D9E0 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B04B84 8008D9E4 272B0004 */  addiu $t3, $t9, 4
/* B04B88 8008D9E8 A50B0030 */  sh    $t3, 0x30($t0)
/* B04B8C 8008D9EC 85050030 */  lh    $a1, 0x30($t0)
/* B04B90 8008D9F0 A50E1424 */  sh    $t6, 0x1424($t0)
/* B04B94 8008D9F4 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B04B98 8008D9F8 30AC000F */  andi  $t4, $a1, 0xf
/* B04B9C 8008D9FC 29810004 */  slti  $at, $t4, 4
/* B04BA0 8008DA00 1020000C */  beqz  $at, .L8008DA34
/* B04BA4 8008DA04 2404480B */   li    $a0, 18443
/* B04BA8 8008DA08 3C0D8013 */  lui   $t5, %hi(D_801333E8) # $t5, 0x8013
/* B04BAC 8008DA0C 25AD33E8 */  addiu $t5, %lo(D_801333E8) # addiu $t5, $t5, 0x33e8
/* B04BB0 8008DA10 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B04BB4 8008DA14 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B04BB8 8008DA18 AFAD0014 */  sw    $t5, 0x14($sp)
/* B04BBC 8008DA1C 24060004 */  li    $a2, 4
/* B04BC0 8008DA20 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B04BC4 8008DA24 AFA70010 */   sw    $a3, 0x10($sp)
/* B04BC8 8008DA28 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04BCC 8008DA2C 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04BD0 8008DA30 85050030 */  lh    $a1, 0x30($t0)
.L8008DA34:
/* B04BD4 8008DA34 3C048014 */  lui   $a0, %hi(D_8013E470) # $a0, 0x8014
/* B04BD8 8008DA38 2484E470 */  addiu $a0, %lo(D_8013E470) # addiu $a0, $a0, -0x1b90
/* B04BDC 8008DA3C 0C00084C */  jal   osSyncPrintf
/* B04BE0 8008DA40 8506002E */   lh    $a2, 0x2e($t0)
/* B04BE4 8008DA44 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04BE8 8008DA48 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04BEC 8008DA4C 8506002E */  lh    $a2, 0x2e($t0)
/* B04BF0 8008DA50 85180030 */  lh    $t8, 0x30($t0)
/* B04BF4 8008DA54 3C048014 */  lui   $a0, %hi(D_8013E48C) # $a0, 0x8014
/* B04BF8 8008DA58 2484E48C */  addiu $a0, %lo(D_8013E48C) # addiu $a0, $a0, -0x1b74
/* B04BFC 8008DA5C 0306082A */  slt   $at, $t8, $a2
/* B04C00 8008DA60 14200007 */  bnez  $at, .L8008DA80
/* B04C04 8008DA64 00000000 */   nop   
/* B04C08 8008DA68 A5060030 */  sh    $a2, 0x30($t0)
/* B04C0C 8008DA6C 0C00084C */  jal   osSyncPrintf
/* B04C10 8008DA70 85050030 */   lh    $a1, 0x30($t0)
/* B04C14 8008DA74 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04C18 8008DA78 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04C1C 8008DA7C A5001424 */  sh    $zero, 0x1424($t0)
.L8008DA80:
/* B04C20 8008DA80 0C01E6F2 */  jal   Health_HandleCriticalAlarm
/* B04C24 8008DA84 8FA40048 */   lw    $a0, 0x48($sp)
/* B04C28 8008DA88 0C023CBE */  jal   func_8008F2F8
/* B04C2C 8008DA8C 8FA40048 */   lw    $a0, 0x48($sp)
/* B04C30 8008DA90 3C038012 */  lui   $v1, %hi(D_80125A58) # $v1, 0x8012
/* B04C34 8008DA94 24635A58 */  addiu $v1, %lo(D_80125A58) # addiu $v1, $v1, 0x5a58
/* B04C38 8008DA98 A4620000 */  sh    $v0, ($v1)
/* B04C3C 8008DA9C 846F0000 */  lh    $t7, ($v1)
/* B04C40 8008DAA0 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04C44 8008DAA4 24010001 */  li    $at, 1
/* B04C48 8008DAA8 15E1000D */  bne   $t7, $at, .L8008DAE0
/* B04C4C 8008DAAC 2508E660 */   addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04C50 8008DAB0 3C198012 */  lui   $t9, %hi(gEquipMasks+4) # $t9, 0x8012
/* B04C54 8008DAB4 973971A4 */  lhu   $t9, %lo(gEquipMasks+4)($t9)
/* B04C58 8008DAB8 950E0070 */  lhu   $t6, 0x70($t0)
/* B04C5C 8008DABC 3C0C8012 */  lui   $t4, %hi(gEquipShifts+2) # $t4, 0x8012
/* B04C60 8008DAC0 918C71F2 */  lbu   $t4, %lo(gEquipShifts+2)($t4)
/* B04C64 8008DAC4 01D95824 */  and   $t3, $t6, $t9
/* B04C68 8008DAC8 24010002 */  li    $at, 2
/* B04C6C 8008DACC 018B6807 */  srav  $t5, $t3, $t4
/* B04C70 8008DAD0 15A10019 */  bne   $t5, $at, .L8008DB38
/* B04C74 8008DAD4 00000000 */   nop   
/* B04C78 8008DAD8 10000017 */  b     .L8008DB38
/* B04C7C 8008DADC A4600000 */   sh    $zero, ($v1)
.L8008DAE0:
/* B04C80 8008DAE0 0C023CBE */  jal   func_8008F2F8
/* B04C84 8008DAE4 8FA40048 */   lw    $a0, 0x48($sp)
/* B04C88 8008DAE8 28410002 */  slti  $at, $v0, 2
/* B04C8C 8008DAEC 14200012 */  bnez  $at, .L8008DB38
/* B04C90 8008DAF0 00000000 */   nop   
/* B04C94 8008DAF4 0C023CBE */  jal   func_8008F2F8
/* B04C98 8008DAF8 8FA40048 */   lw    $a0, 0x48($sp)
/* B04C9C 8008DAFC 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04CA0 8008DB00 28410005 */  slti  $at, $v0, 5
/* B04CA4 8008DB04 1020000C */  beqz  $at, .L8008DB38
/* B04CA8 8008DB08 2508E660 */   addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04CAC 8008DB0C 3C0F8012 */  lui   $t7, %hi(gEquipMasks+4) # $t7, 0x8012
/* B04CB0 8008DB10 95EF71A4 */  lhu   $t7, %lo(gEquipMasks+4)($t7)
/* B04CB4 8008DB14 95180070 */  lhu   $t8, 0x70($t0)
/* B04CB8 8008DB18 3C198012 */  lui   $t9, %hi(gEquipShifts+2) # $t9, 0x8012
/* B04CBC 8008DB1C 933971F2 */  lbu   $t9, %lo(gEquipShifts+2)($t9)
/* B04CC0 8008DB20 030F7024 */  and   $t6, $t8, $t7
/* B04CC4 8008DB24 24010003 */  li    $at, 3
/* B04CC8 8008DB28 032E5807 */  srav  $t3, $t6, $t9
/* B04CCC 8008DB2C 15610002 */  bne   $t3, $at, .L8008DB38
/* B04CD0 8008DB30 3C018012 */   lui   $at, %hi(D_80125A58) # $at, 0x8012
/* B04CD4 8008DB34 A4205A58 */  sh    $zero, %lo(D_80125A58)($at)
.L8008DB38:
/* B04CD8 8008DB38 0C01E28E */  jal   Health_UpdateData
/* B04CDC 8008DB3C 8FA40048 */   lw    $a0, 0x48($sp)
/* B04CE0 8008DB40 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04CE4 8008DB44 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04CE8 8008DB48 850C13CE */  lh    $t4, 0x13ce($t0)
/* B04CEC 8008DB4C 29810003 */  slti  $at, $t4, 3
/* B04CF0 8008DB50 5420001D */  bnezl $at, .L8008DBC8
/* B04CF4 8008DB54 850213CC */   lh    $v0, 0x13cc($t0)
/* B04CF8 8008DB58 8FA90024 */  lw    $t1, 0x24($sp)
/* B04CFC 8008DB5C 952D0934 */  lhu   $t5, 0x934($t1)
/* B04D00 8008DB60 55A00019 */  bnezl $t5, .L8008DBC8
/* B04D04 8008DB64 850213CC */   lh    $v0, 0x13cc($t0)
/* B04D08 8008DB68 95380936 */  lhu   $t8, 0x936($t1)
/* B04D0C 8008DB6C 8FAF0048 */  lw    $t7, 0x48($sp)
/* B04D10 8008DB70 3C0E0001 */  lui   $t6, 1
/* B04D14 8008DB74 17000013 */  bnez  $t8, .L8008DBC4
/* B04D18 8008DB78 01CF7021 */   addu  $t6, $t6, $t7
/* B04D1C 8008DB7C 91CE03DC */  lbu   $t6, 0x3dc($t6)
/* B04D20 8008DB80 8FB9003C */  lw    $t9, 0x3c($sp)
/* B04D24 8008DB84 55C00010 */  bnezl $t6, .L8008DBC8
/* B04D28 8008DB88 850213CC */   lh    $v0, 0x13cc($t0)
/* B04D2C 8008DB8C 8F2B0680 */  lw    $t3, 0x680($t9)
/* B04D30 8008DB90 000B61C0 */  sll   $t4, $t3, 7
/* B04D34 8008DB94 0582000C */  bltzl $t4, .L8008DBC8
/* B04D38 8008DB98 850213CC */   lh    $v0, 0x13cc($t0)
/* B04D3C 8008DB9C 812D1E15 */  lb    $t5, 0x1e15($t1)
/* B04D40 8008DBA0 55A00009 */  bnezl $t5, .L8008DBC8
/* B04D44 8008DBA4 850213CC */   lh    $v0, 0x13cc($t0)
/* B04D48 8008DBA8 9138241B */  lbu   $t8, 0x241b($t1)
/* B04D4C 8008DBAC 57000006 */  bnezl $t8, .L8008DBC8
/* B04D50 8008DBB0 850213CC */   lh    $v0, 0x13cc($t0)
/* B04D54 8008DBB4 0C02FF21 */  jal   Gameplay_InCsMode
/* B04D58 8008DBB8 01E02025 */   move  $a0, $t7
/* B04D5C 8008DBBC 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04D60 8008DBC0 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
.L8008DBC4:
/* B04D64 8008DBC4 850213CC */  lh    $v0, 0x13cc($t0)
.L8008DBC8:
/* B04D68 8008DBC8 8FA90024 */  lw    $t1, 0x24($sp)
/* B04D6C 8008DBCC 50400065 */  beql  $v0, $zero, .L8008DD64
/* B04D70 8008DBD0 8FA70028 */   lw    $a3, 0x28($sp)
/* B04D74 8008DBD4 18400034 */  blez  $v0, .L8008DCA8
/* B04D78 8008DBD8 3C198012 */   lui   $t9, %hi(gUpgradeMasks+0x10) # $t9, 0x8012
/* B04D7C 8008DBDC 8D0E00A0 */  lw    $t6, 0xa0($t0)
/* B04D80 8008DBE0 8F3971C0 */  lw    $t9, %lo(gUpgradeMasks+0x10)($t9)
/* B04D84 8008DBE4 3C0C8012 */  lui   $t4, %hi(gUpgradeShifts+4) # $t4, 0x8012
/* B04D88 8008DBE8 918C71F8 */  lbu   $t4, %lo(gUpgradeShifts+4)($t4)
/* B04D8C 8008DBEC 01D95824 */  and   $t3, $t6, $t9
/* B04D90 8008DBF0 3C058012 */  lui   $a1, %hi(gUpgradeCapacities+0x20)
/* B04D94 8008DBF4 018B6807 */  srav  $t5, $t3, $t4
/* B04D98 8008DBF8 000DC040 */  sll   $t8, $t5, 1
/* B04D9C 8008DBFC 00B82821 */  addu  $a1, $a1, $t8
/* B04DA0 8008DC00 94A5721C */  lhu   $a1, %lo(gUpgradeCapacities+0x20)($a1)
/* B04DA4 8008DC04 85030034 */  lh    $v1, 0x34($t0)
/* B04DA8 8008DC08 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B04DAC 8008DC0C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B04DB0 8008DC10 0065082A */  slt   $at, $v1, $a1
/* B04DB4 8008DC14 10200011 */  beqz  $at, .L8008DC5C
/* B04DB8 8008DC18 3C048014 */   lui   $a0, %hi(D_8013E4BC) # $a0, 0x8014
/* B04DBC 8008DC1C 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B04DC0 8008DC20 244FFFFF */  addiu $t7, $v0, -1
/* B04DC4 8008DC24 246E0001 */  addiu $t6, $v1, 1
/* B04DC8 8008DC28 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B04DCC 8008DC2C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B04DD0 8008DC30 A50F13CC */  sh    $t7, 0x13cc($t0)
/* B04DD4 8008DC34 A50E0034 */  sh    $t6, 0x34($t0)
/* B04DD8 8008DC38 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B04DDC 8008DC3C AFB90014 */  sw    $t9, 0x14($sp)
/* B04DE0 8008DC40 2404482F */  li    $a0, 18479
/* B04DE4 8008DC44 24060004 */  li    $a2, 4
/* B04DE8 8008DC48 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B04DEC 8008DC4C AFA70010 */   sw    $a3, 0x10($sp)
/* B04DF0 8008DC50 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04DF4 8008DC54 10000012 */  b     .L8008DCA0
/* B04DF8 8008DC58 2508E660 */   addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
.L8008DC5C:
/* B04DFC 8008DC5C 0C00084C */  jal   osSyncPrintf
/* B04E00 8008DC60 2484E4BC */   addiu $a0, %lo(D_8013E4BC) # addiu $a0, $a0, -0x1b44
/* B04E04 8008DC64 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04E08 8008DC68 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B04E0C 8008DC6C 3C0C8012 */  lui   $t4, %hi(gUpgradeMasks+0x10) # $t4, 0x8012
/* B04E10 8008DC70 8D8C71C0 */  lw    $t4, %lo(gUpgradeMasks+0x10)($t4)
/* B04E14 8008DC74 8D0B00A0 */  lw    $t3, 0xa0($t0)
/* B04E18 8008DC78 3C188012 */  lui   $t8, %hi(gUpgradeShifts+4) # $t8, 0x8012
/* B04E1C 8008DC7C 931871F8 */  lbu   $t8, %lo(gUpgradeShifts+4)($t8)
/* B04E20 8008DC80 016C6824 */  and   $t5, $t3, $t4
/* B04E24 8008DC84 3C198012 */  lui   $t9, %hi(gUpgradeCapacities+0x20)
/* B04E28 8008DC88 030D7807 */  srav  $t7, $t5, $t8
/* B04E2C 8008DC8C 000F7040 */  sll   $t6, $t7, 1
/* B04E30 8008DC90 032EC821 */  addu  $t9, $t9, $t6
/* B04E34 8008DC94 9739721C */  lhu   $t9, %lo(gUpgradeCapacities+0x20)($t9)
/* B04E38 8008DC98 A50013CC */  sh    $zero, 0x13cc($t0)
/* B04E3C 8008DC9C A5190034 */  sh    $t9, 0x34($t0)
.L8008DCA0:
/* B04E40 8008DCA0 1000002F */  b     .L8008DD60
/* B04E44 8008DCA4 8FA90024 */   lw    $t1, 0x24($sp)
.L8008DCA8:
/* B04E48 8008DCA8 85030034 */  lh    $v1, 0x34($t0)
/* B04E4C 8008DCAC 2841FFCF */  slti  $at, $v0, -0x31
/* B04E50 8008DCB0 5060002B */  beql  $v1, $zero, .L8008DD60
/* B04E54 8008DCB4 A50013CC */   sh    $zero, 0x13cc($t0)
/* B04E58 8008DCB8 10200016 */  beqz  $at, .L8008DD14
/* B04E5C 8008DCBC 244F0001 */   addiu $t7, $v0, 1
/* B04E60 8008DCC0 246CFFF6 */  addiu $t4, $v1, -0xa
/* B04E64 8008DCC4 A50C0034 */  sh    $t4, 0x34($t0)
/* B04E68 8008DCC8 850D0034 */  lh    $t5, 0x34($t0)
/* B04E6C 8008DCCC 244B000A */  addiu $t3, $v0, 0xa
/* B04E70 8008DCD0 A50B13CC */  sh    $t3, 0x13cc($t0)
/* B04E74 8008DCD4 05A10002 */  bgez  $t5, .L8008DCE0
/* B04E78 8008DCD8 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B04E7C 8008DCDC A5000034 */  sh    $zero, 0x34($t0)
.L8008DCE0:
/* B04E80 8008DCE0 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B04E84 8008DCE4 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B04E88 8008DCE8 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B04E8C 8008DCEC 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B04E90 8008DCF0 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B04E94 8008DCF4 AFB80014 */  sw    $t8, 0x14($sp)
/* B04E98 8008DCF8 AFA70010 */  sw    $a3, 0x10($sp)
/* B04E9C 8008DCFC 2404482F */  li    $a0, 18479
/* B04EA0 8008DD00 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B04EA4 8008DD04 24060004 */   li    $a2, 4
/* B04EA8 8008DD08 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04EAC 8008DD0C 10000011 */  b     .L8008DD54
/* B04EB0 8008DD10 2508E660 */   addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
.L8008DD14:
/* B04EB4 8008DD14 3C198013 */  lui   $t9, %hi(D_801333E0)
/* B04EB8 8008DD18 3C0B8013 */  lui   $t3, %hi(D_801333E8) # $t3, 0x8013
/* B04EBC 8008DD1C 246EFFFF */  addiu $t6, $v1, -1
/* B04EC0 8008DD20 256B33E8 */  addiu $t3, %lo(D_801333E8) # addiu $t3, $t3, 0x33e8
/* B04EC4 8008DD24 272733E0 */  addiu $a3, $t9, %lo(D_801333E0)
/* B04EC8 8008DD28 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B04ECC 8008DD2C A50F13CC */  sh    $t7, 0x13cc($t0)
/* B04ED0 8008DD30 A50E0034 */  sh    $t6, 0x34($t0)
/* B04ED4 8008DD34 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B04ED8 8008DD38 AFA70010 */  sw    $a3, 0x10($sp)
/* B04EDC 8008DD3C AFAB0014 */  sw    $t3, 0x14($sp)
/* B04EE0 8008DD40 2404482F */  li    $a0, 18479
/* B04EE4 8008DD44 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B04EE8 8008DD48 24060004 */   li    $a2, 4
/* B04EEC 8008DD4C 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B04EF0 8008DD50 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
.L8008DD54:
/* B04EF4 8008DD54 10000002 */  b     .L8008DD60
/* B04EF8 8008DD58 8FA90024 */   lw    $t1, 0x24($sp)
/* B04EFC 8008DD5C A50013CC */  sh    $zero, 0x13cc($t0)
.L8008DD60:
/* B04F00 8008DD60 8FA70028 */  lw    $a3, 0x28($sp)
.L8008DD64:
/* B04F04 8008DD64 240A0001 */  li    $t2, 1
/* B04F08 8008DD68 84E201EC */  lh    $v0, 0x1ec($a3)
/* B04F0C 8008DD6C 104A000B */  beq   $v0, $t2, .L8008DD9C
/* B04F10 8008DD70 24010002 */   li    $at, 2
/* B04F14 8008DD74 10410023 */  beq   $v0, $at, .L8008DE04
/* B04F18 8008DD78 3C0F8016 */   lui   $t7, %hi(gGameInfo)
/* B04F1C 8008DD7C 24010003 */  li    $at, 3
/* B04F20 8008DD80 10410044 */  beq   $v0, $at, .L8008DE94
/* B04F24 8008DD84 3C0C8016 */   lui   $t4, %hi(gGameInfo)
/* B04F28 8008DD88 24010004 */  li    $at, 4
/* B04F2C 8008DD8C 1041005A */  beq   $v0, $at, .L8008DEF8
/* B04F30 8008DD90 3C0F8016 */   lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* B04F34 8008DD94 1000007B */  b     .L8008DF84
/* B04F38 8008DD98 C4E001F4 */   lwc1  $f0, 0x1f4($a3)
.L8008DD9C:
/* B04F3C 8008DD9C 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* B04F40 8008DDA0 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* B04F44 8008DDA4 3C018014 */  lui   $at, %hi(D_8013E740)
/* B04F48 8008DDA8 C424E740 */  lwc1  $f4, %lo(D_8013E740)($at)
/* B04F4C 8008DDAC 858D0D9E */  lh    $t5, 0xd9e($t4)
/* B04F50 8008DDB0 C4F001F4 */  lwc1  $f16, 0x1f4($a3)
/* B04F54 8008DDB4 3C018014 */  lui   $at, %hi(D_8013E744)
/* B04F58 8008DDB8 448D3000 */  mtc1  $t5, $f6
/* B04F5C 8008DDBC 00000000 */  nop   
/* B04F60 8008DDC0 46803220 */  cvt.s.w $f8, $f6
/* B04F64 8008DDC4 46082283 */  div.s $f10, $f4, $f8
/* B04F68 8008DDC8 460A8480 */  add.s $f18, $f16, $f10
/* B04F6C 8008DDCC E4F201F4 */  swc1  $f18, 0x1f4($a3)
/* B04F70 8008DDD0 C426E744 */  lwc1  $f6, %lo(D_8013E744)($at)
/* B04F74 8008DDD4 C4E001F4 */  lwc1  $f0, 0x1f4($a3)
/* B04F78 8008DDD8 3C018014 */  lui   $at, %hi(D_8013E748)
/* B04F7C 8008DDDC 4600303E */  c.le.s $f6, $f0
/* B04F80 8008DDE0 00000000 */  nop   
/* B04F84 8008DDE4 45020068 */  bc1fl .L8008DF88
/* B04F88 8008DDE8 4600048D */   trunc.w.s $f18, $f0
/* B04F8C 8008DDEC C424E748 */  lwc1  $f4, %lo(D_8013E748)($at)
/* B04F90 8008DDF0 24180002 */  li    $t8, 2
/* B04F94 8008DDF4 A4F801EC */  sh    $t8, 0x1ec($a3)
/* B04F98 8008DDF8 E4E401F4 */  swc1  $f4, 0x1f4($a3)
/* B04F9C 8008DDFC 10000061 */  b     .L8008DF84
/* B04FA0 8008DE00 C4E001F4 */   lwc1  $f0, 0x1f4($a3)
.L8008DE04:
/* B04FA4 8008DE04 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* B04FA8 8008DE08 3C018014 */  lui   $at, %hi(D_8013E74C)
/* B04FAC 8008DE0C C428E74C */  lwc1  $f8, %lo(D_8013E74C)($at)
/* B04FB0 8008DE10 85EE0D9E */  lh    $t6, 0xd9e($t7)
/* B04FB4 8008DE14 C4E601F4 */  lwc1  $f6, 0x1f4($a3)
/* B04FB8 8008DE18 44801000 */  mtc1  $zero, $f2
/* B04FBC 8008DE1C 448E8000 */  mtc1  $t6, $f16
/* B04FC0 8008DE20 2401001D */  li    $at, 29
/* B04FC4 8008DE24 00E02025 */  move  $a0, $a3
/* B04FC8 8008DE28 468082A0 */  cvt.s.w $f10, $f16
/* B04FCC 8008DE2C 460A4483 */  div.s $f18, $f8, $f10
/* B04FD0 8008DE30 46123100 */  add.s $f4, $f6, $f18
/* B04FD4 8008DE34 E4E401F4 */  swc1  $f4, 0x1f4($a3)
/* B04FD8 8008DE38 C4E001F4 */  lwc1  $f0, 0x1f4($a3)
/* B04FDC 8008DE3C 4600103E */  c.le.s $f2, $f0
/* B04FE0 8008DE40 00000000 */  nop   
/* B04FE4 8008DE44 45020050 */  bc1fl .L8008DF88
/* B04FE8 8008DE48 4600048D */   trunc.w.s $f18, $f0
/* B04FEC 8008DE4C 94F901F0 */  lhu   $t9, 0x1f0($a3)
/* B04FF0 8008DE50 E4E201F4 */  swc1  $f2, 0x1f4($a3)
/* B04FF4 8008DE54 A4E001EC */  sh    $zero, 0x1ec($a3)
/* B04FF8 8008DE58 3325FFFF */  andi  $a1, $t9, 0xffff
/* B04FFC 8008DE5C 10A10004 */  beq   $a1, $at, .L8008DE70
/* B05000 8008DE60 A4F901EE */   sh    $t9, 0x1ee($a3)
/* B05004 8008DE64 2401001E */  li    $at, 30
/* B05008 8008DE68 14A10002 */  bne   $a1, $at, .L8008DE74
/* B0500C 8008DE6C 00000000 */   nop   
.L8008DE70:
/* B05010 8008DE70 2405000A */  li    $a1, 10
.L8008DE74:
/* B05014 8008DE74 0C021B64 */  jal   Interface_LoadActionLabel
/* B05018 8008DE78 00003025 */   move  $a2, $zero
/* B0501C 8008DE7C 8FAB0028 */  lw    $t3, 0x28($sp)
/* B05020 8008DE80 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B05024 8008DE84 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B05028 8008DE88 8FA90024 */  lw    $t1, 0x24($sp)
/* B0502C 8008DE8C 1000003D */  b     .L8008DF84
/* B05030 8008DE90 C56001F4 */   lwc1  $f0, 0x1f4($t3)
.L8008DE94:
/* B05034 8008DE94 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* B05038 8008DE98 3C018014 */  lui   $at, %hi(D_8013E750)
/* B0503C 8008DE9C C430E750 */  lwc1  $f16, %lo(D_8013E750)($at)
/* B05040 8008DEA0 858D0D9E */  lh    $t5, 0xd9e($t4)
/* B05044 8008DEA4 C4F201F4 */  lwc1  $f18, 0x1f4($a3)
/* B05048 8008DEA8 3C018014 */  lui   $at, %hi(D_8013E754)
/* B0504C 8008DEAC 448D4000 */  mtc1  $t5, $f8
/* B05050 8008DEB0 00000000 */  nop   
/* B05054 8008DEB4 468042A0 */  cvt.s.w $f10, $f8
/* B05058 8008DEB8 460A8183 */  div.s $f6, $f16, $f10
/* B0505C 8008DEBC 46069100 */  add.s $f4, $f18, $f6
/* B05060 8008DEC0 E4E401F4 */  swc1  $f4, 0x1f4($a3)
/* B05064 8008DEC4 C428E754 */  lwc1  $f8, %lo(D_8013E754)($at)
/* B05068 8008DEC8 C4E001F4 */  lwc1  $f0, 0x1f4($a3)
/* B0506C 8008DECC 3C018014 */  lui   $at, %hi(D_8013E758)
/* B05070 8008DED0 4600403E */  c.le.s $f8, $f0
/* B05074 8008DED4 00000000 */  nop   
/* B05078 8008DED8 4502002B */  bc1fl .L8008DF88
/* B0507C 8008DEDC 4600048D */   trunc.w.s $f18, $f0
/* B05080 8008DEE0 C430E758 */  lwc1  $f16, %lo(D_8013E758)($at)
/* B05084 8008DEE4 24180002 */  li    $t8, 2
/* B05088 8008DEE8 A4F801EC */  sh    $t8, 0x1ec($a3)
/* B0508C 8008DEEC E4F001F4 */  swc1  $f16, 0x1f4($a3)
/* B05090 8008DEF0 10000024 */  b     .L8008DF84
/* B05094 8008DEF4 C4E001F4 */   lwc1  $f0, 0x1f4($a3)
.L8008DEF8:
/* B05098 8008DEF8 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* B0509C 8008DEFC 3C018014 */  lui   $at, %hi(D_8013E75C)
/* B050A0 8008DF00 C42AE75C */  lwc1  $f10, %lo(D_8013E75C)($at)
/* B050A4 8008DF04 85EE0D9E */  lh    $t6, 0xd9e($t7)
/* B050A8 8008DF08 C4E801F4 */  lwc1  $f8, 0x1f4($a3)
/* B050AC 8008DF0C 44801000 */  mtc1  $zero, $f2
/* B050B0 8008DF10 448E9000 */  mtc1  $t6, $f18
/* B050B4 8008DF14 2401001D */  li    $at, 29
/* B050B8 8008DF18 00E02025 */  move  $a0, $a3
/* B050BC 8008DF1C 468091A0 */  cvt.s.w $f6, $f18
/* B050C0 8008DF20 46065103 */  div.s $f4, $f10, $f6
/* B050C4 8008DF24 46044400 */  add.s $f16, $f8, $f4
/* B050C8 8008DF28 E4F001F4 */  swc1  $f16, 0x1f4($a3)
/* B050CC 8008DF2C C4E001F4 */  lwc1  $f0, 0x1f4($a3)
/* B050D0 8008DF30 4600103E */  c.le.s $f2, $f0
/* B050D4 8008DF34 00000000 */  nop   
/* B050D8 8008DF38 45020013 */  bc1fl .L8008DF88
/* B050DC 8008DF3C 4600048D */   trunc.w.s $f18, $f0
/* B050E0 8008DF40 94F901F0 */  lhu   $t9, 0x1f0($a3)
/* B050E4 8008DF44 E4E201F4 */  swc1  $f2, 0x1f4($a3)
/* B050E8 8008DF48 A4E001EC */  sh    $zero, 0x1ec($a3)
/* B050EC 8008DF4C 3325FFFF */  andi  $a1, $t9, 0xffff
/* B050F0 8008DF50 10A10004 */  beq   $a1, $at, .L8008DF64
/* B050F4 8008DF54 A4F901EE */   sh    $t9, 0x1ee($a3)
/* B050F8 8008DF58 2401001E */  li    $at, 30
/* B050FC 8008DF5C 14A10002 */  bne   $a1, $at, .L8008DF68
/* B05100 8008DF60 00000000 */   nop   
.L8008DF64:
/* B05104 8008DF64 2405000A */  li    $a1, 10
.L8008DF68:
/* B05108 8008DF68 0C021B64 */  jal   Interface_LoadActionLabel
/* B0510C 8008DF6C 00003025 */   move  $a2, $zero
/* B05110 8008DF70 8FAB0028 */  lw    $t3, 0x28($sp)
/* B05114 8008DF74 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B05118 8008DF78 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B0511C 8008DF7C 8FA90024 */  lw    $t1, 0x24($sp)
/* B05120 8008DF80 C56001F4 */  lwc1  $f0, 0x1f4($t3)
.L8008DF84:
/* B05124 8008DF84 4600048D */  trunc.w.s $f18, $f0
.L8008DF88:
/* B05128 8008DF88 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* B0512C 8008DF8C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* B05130 8008DF90 440D9000 */  mfc1  $t5, $f18
/* B05134 8008DF94 00000000 */  nop   
/* B05138 8008DF98 A70D0DA2 */  sh    $t5, 0xda2($t8)
/* B0513C 8008DF9C 952F0934 */  lhu   $t7, 0x934($t1)
/* B05140 8008DFA0 55E0004B */  bnezl $t7, .L8008E0D0
/* B05144 8008DFA4 850313CE */   lh    $v1, 0x13ce($t0)
/* B05148 8008DFA8 952E0936 */  lhu   $t6, 0x936($t1)
/* B0514C 8008DFAC 8FB90048 */  lw    $t9, 0x48($sp)
/* B05150 8008DFB0 3C0B0001 */  lui   $t3, 1
/* B05154 8008DFB4 15C00045 */  bnez  $t6, .L8008E0CC
/* B05158 8008DFB8 01795821 */   addu  $t3, $t3, $t9
/* B0515C 8008DFBC 916B03DC */  lbu   $t3, 0x3dc($t3)
/* B05160 8008DFC0 55600043 */  bnezl $t3, .L8008E0D0
/* B05164 8008DFC4 850313CE */   lh    $v1, 0x13ce($t0)
/* B05168 8008DFC8 812C1E15 */  lb    $t4, 0x1e15($t1)
/* B0516C 8008DFCC 55800040 */  bnezl $t4, .L8008E0D0
/* B05170 8008DFD0 850313CE */   lh    $v1, 0x13ce($t0)
/* B05174 8008DFD4 952D0A20 */  lhu   $t5, 0xa20($t1)
/* B05178 8008DFD8 55A0003D */  bnezl $t5, .L8008E0D0
/* B0517C 8008DFDC 850313CE */   lh    $v1, 0x13ce($t0)
/* B05180 8008DFE0 9138241B */  lbu   $t8, 0x241b($t1)
/* B05184 8008DFE4 5700003A */  bnezl $t8, .L8008E0D0
/* B05188 8008DFE8 850313CE */   lh    $v1, 0x13ce($t0)
/* B0518C 8008DFEC 932F1D6C */  lbu   $t7, 0x1d6c($t9)
/* B05190 8008DFF0 51E00007 */  beql  $t7, $zero, .L8008E010
/* B05194 8008DFF4 910E003A */   lbu   $t6, 0x3a($t0)
/* B05198 8008DFF8 0C023A62 */  jal   func_8008E988
/* B0519C 8008DFFC 03202025 */   move  $a0, $t9
/* B051A0 8008E000 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B051A4 8008E004 14400031 */  bnez  $v0, .L8008E0CC
/* B051A8 8008E008 2508E660 */   addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B051AC 8008E00C 910E003A */  lbu   $t6, 0x3a($t0)
.L8008E010:
/* B051B0 8008E010 11C0002A */  beqz  $t6, .L8008E0BC
/* B051B4 8008E014 00000000 */   nop   
/* B051B8 8008E018 810B0032 */  lb    $t3, 0x32($t0)
/* B051BC 8008E01C 24180008 */  li    $t8, 8
/* B051C0 8008E020 3C048014 */  lui   $a0, %hi(D_8013E4D4) # $a0, 0x8014
/* B051C4 8008E024 15600025 */  bnez  $t3, .L8008E0BC
/* B051C8 8008E028 00000000 */   nop   
/* B051CC 8008E02C 910C003C */  lbu   $t4, 0x3c($t0)
/* B051D0 8008E030 A51813F0 */  sh    $t8, 0x13f0($t0)
/* B051D4 8008E034 2484E4D4 */  addiu $a0, %lo(D_8013E4D4) # addiu $a0, $a0, -0x1b2c
/* B051D8 8008E038 258D0001 */  addiu $t5, $t4, 1
/* B051DC 8008E03C 0C00084C */  jal   osSyncPrintf
/* B051E0 8008E040 A10D0032 */   sb    $t5, 0x32($t0)
/* B051E4 8008E044 3C048014 */  lui   $a0, %hi(D_8013E4DC) # $a0, 0x8014
/* B051E8 8008E048 0C00084C */  jal   osSyncPrintf
/* B051EC 8008E04C 2484E4DC */   addiu $a0, %lo(D_8013E4DC) # addiu $a0, $a0, -0x1b24
/* B051F0 8008E050 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B051F4 8008E054 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B051F8 8008E058 3C048014 */  lui   $a0, %hi(D_8013E508) # $a0, 0x8014
/* B051FC 8008E05C 2484E508 */  addiu $a0, %lo(D_8013E508) # addiu $a0, $a0, -0x1af8
/* B05200 8008E060 0C00084C */  jal   osSyncPrintf
/* B05204 8008E064 81050032 */   lb    $a1, 0x32($t0)
/* B05208 8008E068 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B0520C 8008E06C 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B05210 8008E070 3C048014 */  lui   $a0, %hi(D_8013E518) # $a0, 0x8014
/* B05214 8008E074 2484E518 */  addiu $a0, %lo(D_8013E518) # addiu $a0, $a0, -0x1ae8
/* B05218 8008E078 0C00084C */  jal   osSyncPrintf
/* B0521C 8008E07C 81050033 */   lb    $a1, 0x33($t0)
/* B05220 8008E080 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B05224 8008E084 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B05228 8008E088 3C048014 */  lui   $a0, %hi(D_8013E528) # $a0, 0x8014
/* B0522C 8008E08C 2484E528 */  addiu $a0, %lo(D_8013E528) # addiu $a0, $a0, -0x1ad8
/* B05230 8008E090 0C00084C */  jal   osSyncPrintf
/* B05234 8008E094 850513F6 */   lh    $a1, 0x13f6($t0)
/* B05238 8008E098 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B0523C 8008E09C 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B05240 8008E0A0 3C048014 */  lui   $a0, %hi(D_8013E53C) # $a0, 0x8014
/* B05244 8008E0A4 2484E53C */  addiu $a0, %lo(D_8013E53C) # addiu $a0, $a0, -0x1ac4
/* B05248 8008E0A8 0C00084C */  jal   osSyncPrintf
/* B0524C 8008E0AC 850513F4 */   lh    $a1, 0x13f4($t0)
/* B05250 8008E0B0 3C048014 */  lui   $a0, %hi(D_8013E550) # $a0, 0x8014
/* B05254 8008E0B4 0C00084C */  jal   osSyncPrintf
/* B05258 8008E0B8 2484E550 */   addiu $a0, %lo(D_8013E550) # addiu $a0, $a0, -0x1ab0
.L8008E0BC:
/* B0525C 8008E0BC 0C021E6F */  jal   Interface_UpdateMagicBar
/* B05260 8008E0C0 8FA40048 */   lw    $a0, 0x48($sp)
/* B05264 8008E0C4 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B05268 8008E0C8 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
.L8008E0CC:
/* B0526C 8008E0CC 850313CE */  lh    $v1, 0x13ce($t0)
.L8008E0D0:
/* B05270 8008E0D0 8FA70028 */  lw    $a3, 0x28($sp)
/* B05274 8008E0D4 8FA90024 */  lw    $t1, 0x24($sp)
/* B05278 8008E0D8 14600015 */  bnez  $v1, .L8008E130
/* B0527C 8008E0DC 240A0001 */   li    $t2, 1
/* B05280 8008E0E0 3C028012 */  lui   $v0, %hi(D_80125A58) # $v0, 0x8012
/* B05284 8008E0E4 84425A58 */  lh    $v0, %lo(D_80125A58)($v0)
/* B05288 8008E0E8 24010002 */  li    $at, 2
/* B0528C 8008E0EC 51420006 */  beql  $t2, $v0, .L8008E108
/* B05290 8008E0F0 850F0030 */   lh    $t7, 0x30($t0)
/* B05294 8008E0F4 10410003 */  beq   $v0, $at, .L8008E104
/* B05298 8008E0F8 24010004 */   li    $at, 4
/* B0529C 8008E0FC 54410017 */  bnel  $v0, $at, .L8008E15C
/* B052A0 8008E100 950C1404 */   lhu   $t4, 0x1404($t0)
.L8008E104:
/* B052A4 8008E104 850F0030 */  lh    $t7, 0x30($t0)
.L8008E108:
/* B052A8 8008E108 240E008C */  li    $t6, 140
/* B052AC 8008E10C 240B0050 */  li    $t3, 80
/* B052B0 8008E110 000FC843 */  sra   $t9, $t7, 1
/* B052B4 8008E114 13200010 */  beqz  $t9, .L8008E158
/* B052B8 8008E118 3C018012 */   lui   $at, %hi(D_80125A5C) # $at, 0x8012
/* B052BC 8008E11C A50A13CE */  sh    $t2, 0x13ce($t0)
/* B052C0 8008E120 A50E13D6 */  sh    $t6, 0x13d6($t0)
/* B052C4 8008E124 A50B13DA */  sh    $t3, 0x13da($t0)
/* B052C8 8008E128 1000000B */  b     .L8008E158
/* B052CC 8008E12C A42A5A5C */   sh    $t2, %lo(D_80125A5C)($at)
.L8008E130:
/* B052D0 8008E130 3C028012 */  lui   $v0, %hi(D_80125A58) # $v0, 0x8012
/* B052D4 8008E134 84425A58 */  lh    $v0, %lo(D_80125A58)($v0)
/* B052D8 8008E138 24010003 */  li    $at, 3
/* B052DC 8008E13C 50400003 */  beql  $v0, $zero, .L8008E14C
/* B052E0 8008E140 28610005 */   slti  $at, $v1, 5
/* B052E4 8008E144 14410004 */  bne   $v0, $at, .L8008E158
/* B052E8 8008E148 28610005 */   slti  $at, $v1, 5
.L8008E14C:
/* B052EC 8008E14C 50200003 */  beql  $at, $zero, .L8008E15C
/* B052F0 8008E150 950C1404 */   lhu   $t4, 0x1404($t0)
/* B052F4 8008E154 A50013CE */  sh    $zero, 0x13ce($t0)
.L8008E158:
/* B052F8 8008E158 950C1404 */  lhu   $t4, 0x1404($t0)
.L8008E15C:
/* B052FC 8008E15C 554C0044 */  bnel  $t2, $t4, .L8008E270
/* B05300 8008E160 85021422 */   lh    $v0, 0x1422($t0)
/* B05304 8008E164 950D1406 */  lhu   $t5, 0x1406($t0)
/* B05308 8008E168 94F8023C */  lhu   $t8, 0x23c($a3)
/* B0530C 8008E16C 3C018016 */  lui   $at, %hi(gSaveContext+0x1406) # $at, 0x8016
/* B05310 8008E170 3C038012 */  lui   $v1, %hi(sHBAScoreTier) # $v1, 0x8012
/* B05314 8008E174 01B87821 */  addu  $t7, $t5, $t8
/* B05318 8008E178 A42FFA66 */  sh    $t7, %lo(gSaveContext+0x1406)($at)
/* B0531C 8008E17C 24635A04 */  addiu $v1, %lo(sHBAScoreTier) # addiu $v1, $v1, 0x5a04
/* B05320 8008E180 A4E0023C */  sh    $zero, 0x23c($a3)
/* B05324 8008E184 84620000 */  lh    $v0, ($v1)
/* B05328 8008E188 14400008 */  bnez  $v0, .L8008E1AC
/* B0532C 8008E18C 00000000 */   nop   
/* B05330 8008E190 95191406 */  lhu   $t9, 0x1406($t0)
/* B05334 8008E194 244E0001 */  addiu $t6, $v0, 1
/* B05338 8008E198 2B2103E8 */  slti  $at, $t9, 0x3e8
/* B0533C 8008E19C 5420000C */  bnezl $at, .L8008E1D0
/* B05340 8008E1A0 95181406 */   lhu   $t8, 0x1406($t0)
/* B05344 8008E1A4 10000009 */  b     .L8008E1CC
/* B05348 8008E1A8 A46E0000 */   sh    $t6, ($v1)
.L8008E1AC:
/* B0534C 8008E1AC 55420008 */  bnel  $t2, $v0, .L8008E1D0
/* B05350 8008E1B0 95181406 */   lhu   $t8, 0x1406($t0)
/* B05354 8008E1B4 950B1406 */  lhu   $t3, 0x1406($t0)
/* B05358 8008E1B8 244C0001 */  addiu $t4, $v0, 1
/* B0535C 8008E1BC 296105DC */  slti  $at, $t3, 0x5dc
/* B05360 8008E1C0 54200003 */  bnezl $at, .L8008E1D0
/* B05364 8008E1C4 95181406 */   lhu   $t8, 0x1406($t0)
/* B05368 8008E1C8 A46C0000 */  sh    $t4, ($v1)
.L8008E1CC:
/* B0536C 8008E1CC 95181406 */  lhu   $t8, 0x1406($t0)
.L8008E1D0:
/* B05370 8008E1D0 3C028012 */  lui   $v0, %hi(sHBAScoreDigits) # $v0, 0x8012
/* B05374 8008E1D4 24425A08 */  addiu $v0, %lo(sHBAScoreDigits) # addiu $v0, $v0, 0x5a08
/* B05378 8008E1D8 3303FFFF */  andi  $v1, $t8, 0xffff
/* B0537C 8008E1DC 286103E8 */  slti  $at, $v1, 0x3e8
/* B05380 8008E1E0 A4400002 */  sh    $zero, 2($v0)
/* B05384 8008E1E4 A4400000 */  sh    $zero, ($v0)
/* B05388 8008E1E8 A4400004 */  sh    $zero, 4($v0)
/* B0538C 8008E1EC 14200009 */  bnez  $at, .L8008E214
/* B05390 8008E1F0 A4580006 */   sh    $t8, 6($v0)
.L8008E1F4:
/* B05394 8008E1F4 944F0000 */  lhu   $t7, ($v0)
/* B05398 8008E1F8 246EFC18 */  addiu $t6, $v1, -0x3e8
/* B0539C 8008E1FC 31C3FFFF */  andi  $v1, $t6, 0xffff
/* B053A0 8008E200 286103E8 */  slti  $at, $v1, 0x3e8
/* B053A4 8008E204 25F90001 */  addiu $t9, $t7, 1
/* B053A8 8008E208 A4590000 */  sh    $t9, ($v0)
/* B053AC 8008E20C 1020FFF9 */  beqz  $at, .L8008E1F4
/* B053B0 8008E210 A44E0006 */   sh    $t6, 6($v0)
.L8008E214:
/* B053B4 8008E214 28610064 */  slti  $at, $v1, 0x64
/* B053B8 8008E218 5420000A */  bnezl $at, .L8008E244
/* B053BC 8008E21C 2861000A */   slti  $at, $v1, 0xa
.L8008E220:
/* B053C0 8008E220 944B0002 */  lhu   $t3, 2($v0)
/* B053C4 8008E224 246DFF9C */  addiu $t5, $v1, -0x64
/* B053C8 8008E228 31A3FFFF */  andi  $v1, $t5, 0xffff
/* B053CC 8008E22C 28610064 */  slti  $at, $v1, 0x64
/* B053D0 8008E230 256C0001 */  addiu $t4, $t3, 1
/* B053D4 8008E234 A44C0002 */  sh    $t4, 2($v0)
/* B053D8 8008E238 1020FFF9 */  beqz  $at, .L8008E220
/* B053DC 8008E23C A44D0006 */   sh    $t5, 6($v0)
/* B053E0 8008E240 2861000A */  slti  $at, $v1, 0xa
.L8008E244:
/* B053E4 8008E244 5420000A */  bnezl $at, .L8008E270
/* B053E8 8008E248 85021422 */   lh    $v0, 0x1422($t0)
.L8008E24C:
/* B053EC 8008E24C 94580004 */  lhu   $t8, 4($v0)
/* B053F0 8008E250 2479FFF6 */  addiu $t9, $v1, -0xa
/* B053F4 8008E254 3323FFFF */  andi  $v1, $t9, 0xffff
/* B053F8 8008E258 2861000A */  slti  $at, $v1, 0xa
/* B053FC 8008E25C 270F0001 */  addiu $t7, $t8, 1
/* B05400 8008E260 A44F0004 */  sh    $t7, 4($v0)
/* B05404 8008E264 1020FFF9 */  beqz  $at, .L8008E24C
/* B05408 8008E268 A4590006 */   sh    $t9, 6($v0)
/* B0540C 8008E26C 85021422 */  lh    $v0, 0x1422($t0)
.L8008E270:
/* B05410 8008E270 50400096 */  beql  $v0, $zero, .L8008E4CC
/* B05414 8008E274 8FBF001C */   lw    $ra, 0x1c($sp)
/* B05418 8008E278 8FAE0048 */  lw    $t6, 0x48($sp)
/* B0541C 8008E27C 3C0B0001 */  lui   $t3, 1
/* B05420 8008E280 24010031 */  li    $at, 49
/* B05424 8008E284 016E5821 */  addu  $t3, $t3, $t6
/* B05428 8008E288 956B04C8 */  lhu   $t3, 0x4c8($t3)
/* B0542C 8008E28C 51610007 */  beql  $t3, $at, .L8008E2AC
/* B05430 8008E290 952C0A26 */   lhu   $t4, 0xa26($t1)
/* B05434 8008E294 15420004 */  bne   $t2, $v0, .L8008E2A8
/* B05438 8008E298 24030004 */   li    $v1, 4
/* B0543C 8008E29C 3C010001 */  lui   $at, 1
/* B05440 8008E2A0 002E0821 */  addu  $at, $at, $t6
/* B05444 8008E2A4 A42304C6 */  sh    $v1, 0x4c6($at)
.L8008E2A8:
/* B05448 8008E2A8 952C0A26 */  lhu   $t4, 0xa26($t1)
.L8008E2AC:
/* B0544C 8008E2AC 24030004 */  li    $v1, 4
/* B05450 8008E2B0 5180003E */  beql  $t4, $zero, .L8008E3AC
/* B05454 8008E2B4 912B1CBF */   lbu   $t3, 0x1cbf($t1)
/* B05458 8008E2B8 850D1422 */  lh    $t5, 0x1422($t0)
/* B0545C 8008E2BC 24010002 */  li    $at, 2
/* B05460 8008E2C0 240F0002 */  li    $t7, 2
/* B05464 8008E2C4 11A10014 */  beq   $t5, $at, .L8008E318
/* B05468 8008E2C8 240B0190 */   li    $t3, 400
/* B0546C 8008E2CC 3C018012 */  lui   $at, %hi(D_80125B60) # $at, 0x8012
/* B05470 8008E2D0 A0205B60 */  sb    $zero, %lo(D_80125B60)($at)
/* B05474 8008E2D4 9502000C */  lhu   $v0, 0xc($t0)
/* B05478 8008E2D8 28414555 */  slti  $at, $v0, 0x4555
/* B0547C 8008E2DC 14200006 */  bnez  $at, .L8008E2F8
/* B05480 8008E2E0 3401C002 */   li    $at, 49154
/* B05484 8008E2E4 0041082A */  slt   $at, $v0, $at
/* B05488 8008E2E8 10200003 */  beqz  $at, .L8008E2F8
/* B0548C 8008E2EC 24180001 */   li    $t8, 1
/* B05490 8008E2F0 3C018012 */  lui   $at, %hi(D_80125B60) # $at, 0x8012
/* B05494 8008E2F4 A0385B60 */  sb    $t8, %lo(D_80125B60)($at)
.L8008E2F8:
/* B05498 8008E2F8 3C028012 */  lui   $v0, %hi(D_8011FB40) # $v0, 0x8012
/* B0549C 8008E2FC 2442FB40 */  addiu $v0, %lo(D_8011FB40) # addiu $v0, $v0, -0x4c0
/* B054A0 8008E300 94590000 */  lhu   $t9, ($v0)
/* B054A4 8008E304 A50F1422 */  sh    $t7, 0x1422($t0)
/* B054A8 8008E308 3C018012 */  lui   $at, %hi(D_80125B64) # $at, 0x8012
/* B054AC 8008E30C A4395B64 */  sh    $t9, %lo(D_80125B64)($at)
/* B054B0 8008E310 1000006D */  b     .L8008E4C8
/* B054B4 8008E314 A44B0000 */   sh    $t3, ($v0)
.L8008E318:
/* B054B8 8008E318 3C0E8012 */  lui   $t6, %hi(D_80125B60) # $t6, 0x8012
/* B054BC 8008E31C 91CE5B60 */  lbu   $t6, %lo(D_80125B60)($t6)
/* B054C0 8008E320 55C00013 */  bnezl $t6, .L8008E370
/* B054C4 8008E324 9518000C */   lhu   $t8, 0xc($t0)
/* B054C8 8008E328 9502000C */  lhu   $v0, 0xc($t0)
/* B054CC 8008E32C 28414555 */  slti  $at, $v0, 0x4555
/* B054D0 8008E330 14200065 */  bnez  $at, .L8008E4C8
/* B054D4 8008E334 3401C002 */   li    $at, 49154
/* B054D8 8008E338 0041082A */  slt   $at, $v0, $at
/* B054DC 8008E33C 10200062 */  beqz  $at, .L8008E4C8
/* B054E0 8008E340 3C028012 */   lui   $v0, %hi(D_8011FB40) # $v0, 0x8012
/* B054E4 8008E344 A5001422 */  sh    $zero, 0x1422($t0)
/* B054E8 8008E348 3C0C8012 */  lui   $t4, %hi(D_80125B64) # $t4, 0x8012
/* B054EC 8008E34C 858C5B64 */  lh    $t4, %lo(D_80125B64)($t4)
/* B054F0 8008E350 8FAD0048 */  lw    $t5, 0x48($sp)
/* B054F4 8008E354 2442FB40 */  addiu $v0, %lo(D_8011FB40) # addiu $v0, $v0, -0x4c0
/* B054F8 8008E358 3C010001 */  lui   $at, 1
/* B054FC 8008E35C A44C0000 */  sh    $t4, ($v0)
/* B05500 8008E360 002D0821 */  addu  $at, $at, $t5
/* B05504 8008E364 10000058 */  b     .L8008E4C8
/* B05508 8008E368 A42304C6 */   sh    $v1, 0x4c6($at)
/* B0550C 8008E36C 9518000C */  lhu   $t8, 0xc($t0)
.L8008E370:
/* B05510 8008E370 3401C002 */  li    $at, 49154
/* B05514 8008E374 3C028012 */  lui   $v0, %hi(D_8011FB40) # $v0, 0x8012
/* B05518 8008E378 0301082A */  slt   $at, $t8, $at
/* B0551C 8008E37C 14200052 */  bnez  $at, .L8008E4C8
/* B05520 8008E380 2442FB40 */   addiu $v0, %lo(D_8011FB40) # addiu $v0, $v0, -0x4c0
/* B05524 8008E384 A5001422 */  sh    $zero, 0x1422($t0)
/* B05528 8008E388 3C0F8012 */  lui   $t7, %hi(D_80125B64) # $t7, 0x8012
/* B0552C 8008E38C 85EF5B64 */  lh    $t7, %lo(D_80125B64)($t7)
/* B05530 8008E390 8FB90048 */  lw    $t9, 0x48($sp)
/* B05534 8008E394 3C010001 */  lui   $at, 1
/* B05538 8008E398 A44F0000 */  sh    $t7, ($v0)
/* B0553C 8008E39C 00390821 */  addu  $at, $at, $t9
/* B05540 8008E3A0 10000049 */  b     .L8008E4C8
/* B05544 8008E3A4 A42304C6 */   sh    $v1, 0x4c6($at)
/* B05548 8008E3A8 912B1CBF */  lbu   $t3, 0x1cbf($t1)
.L8008E3AC:
/* B0554C 8008E3AC 24190003 */  li    $t9, 3
/* B05550 8008E3B0 514B0045 */  beql  $t2, $t3, .L8008E4C8
/* B05554 8008E3B4 A5191422 */   sh    $t9, 0x1422($t0)
/* B05558 8008E3B8 90EE026A */  lbu   $t6, 0x26a($a3)
/* B0555C 8008E3BC 24010003 */  li    $at, 3
/* B05560 8008E3C0 2404001E */  li    $a0, 30
/* B05564 8008E3C4 51C10040 */  beql  $t6, $at, .L8008E4C8
/* B05568 8008E3C8 A5191422 */   sh    $t9, 0x1422($t0)
/* B0556C 8008E3CC 9502000C */  lhu   $v0, 0xc($t0)
/* B05570 8008E3D0 34198001 */  li    $t9, 32769
/* B05574 8008E3D4 240B0005 */  li    $t3, 5
/* B05578 8008E3D8 28414555 */  slti  $at, $v0, 0x4555
/* B0557C 8008E3DC 14200011 */  bnez  $at, .L8008E424
/* B05580 8008E3E0 240C0003 */   li    $t4, 3
/* B05584 8008E3E4 3401C001 */  li    $at, 49153
/* B05588 8008E3E8 0041082A */  slt   $at, $v0, $at
/* B0558C 8008E3EC 1020000D */  beqz  $at, .L8008E424
/* B05590 8008E3F0 240D0002 */   li    $t5, 2
/* B05594 8008E3F4 8FAC0048 */  lw    $t4, 0x48($sp)
/* B05598 8008E3F8 3C010001 */  lui   $at, 1
/* B0559C 8008E3FC A5001416 */  sh    $zero, 0x1416($t0)
/* B055A0 8008E400 002C0821 */  addu  $at, $at, $t4
/* B055A4 8008E404 A0231E5E */  sb    $v1, 0x1e5e($at)
/* B055A8 8008E408 8FAF0048 */  lw    $t7, 0x48($sp)
/* B055AC 8008E40C 3C010001 */  lui   $at, 1
/* B055B0 8008E410 A10D141D */  sb    $t5, 0x141d($t0)
/* B055B4 8008E414 24180001 */  li    $t8, 1
/* B055B8 8008E418 002F0821 */  addu  $at, $at, $t7
/* B055BC 8008E41C 1000000C */  b     .L8008E450
/* B055C0 8008E420 A0381DE9 */   sb    $t8, 0x1de9($at)
.L8008E424:
/* B055C4 8008E424 8FAE0048 */  lw    $t6, 0x48($sp)
/* B055C8 8008E428 3C010001 */  lui   $at, 1
/* B055CC 8008E42C A5191416 */  sh    $t9, 0x1416($t0)
/* B055D0 8008E430 002E0821 */  addu  $at, $at, $t6
/* B055D4 8008E434 A02B1E5E */  sb    $t3, 0x1e5e($at)
/* B055D8 8008E438 8FB80048 */  lw    $t8, 0x48($sp)
/* B055DC 8008E43C 3C010001 */  lui   $at, 1
/* B055E0 8008E440 A10C141D */  sb    $t4, 0x141d($t0)
/* B055E4 8008E444 240D0001 */  li    $t5, 1
/* B055E8 8008E448 00380821 */  addu  $at, $at, $t8
/* B055EC 8008E44C A02D1DE9 */  sb    $t5, 0x1de9($at)
.L8008E450:
/* B055F0 8008E450 8FAF0048 */  lw    $t7, 0x48($sp)
/* B055F4 8008E454 2401005E */  li    $at, 94
/* B055F8 8008E458 2402000E */  li    $v0, 14
/* B055FC 8008E45C 85F900A4 */  lh    $t9, 0xa4($t7)
/* B05600 8008E460 240BFFFE */  li    $t3, -2
/* B05604 8008E464 17210004 */  bne   $t9, $at, .L8008E478
/* B05608 8008E468 3C010001 */   lui   $at, 1
/* B0560C 8008E46C 002F0821 */  addu  $at, $at, $t7
/* B05610 8008E470 A0221E5E */  sb    $v0, 0x1e5e($at)
/* B05614 8008E474 A102141D */  sb    $v0, 0x141d($t0)
.L8008E478:
/* B05618 8008E478 8FAC0048 */  lw    $t4, 0x48($sp)
/* B0561C 8008E47C 8D0E0000 */  lw    $t6, ($t0)
/* B05620 8008E480 3C010001 */  lui   $at, 1
/* B05624 8008E484 AD0B1364 */  sw    $t3, 0x1364($t0)
/* B05628 8008E488 002C0821 */  addu  $at, $at, $t4
/* B0562C 8008E48C A42E1E1A */  sh    $t6, 0x1e1a($at)
/* B05630 8008E490 8FB80048 */  lw    $t8, 0x48($sp)
/* B05634 8008E494 3C010001 */  lui   $at, 1
/* B05638 8008E498 240D0014 */  li    $t5, 20
/* B0563C 8008E49C 00380821 */  addu  $at, $at, $t8
/* B05640 8008E4A0 A02D1E15 */  sb    $t5, 0x1e15($at)
/* B05644 8008E4A4 0C03DA59 */  jal   func_800F6964
/* B05648 8008E4A8 A5001422 */   sh    $zero, 0x1422($t0)
/* B0564C 8008E4AC 3C088016 */  lui   $t0, %hi(gSaveContext) # $t0, 0x8016
/* B05650 8008E4B0 2508E660 */  addiu $t0, %lo(gSaveContext) # addiu $t0, $t0, -0x19a0
/* B05654 8008E4B4 240200FF */  li    $v0, 255
/* B05658 8008E4B8 A10213E0 */  sb    $v0, 0x13e0($t0)
/* B0565C 8008E4BC 10000002 */  b     .L8008E4C8
/* B05660 8008E4C0 A10213E1 */   sb    $v0, 0x13e1($t0)
/* B05664 8008E4C4 A5191422 */  sh    $t9, 0x1422($t0)
.L8008E4C8:
/* B05668 8008E4C8 8FBF001C */  lw    $ra, 0x1c($sp)
.L8008E4CC:
/* B0566C 8008E4CC 27BD0048 */  addiu $sp, $sp, 0x48
/* B05670 8008E4D0 03E00008 */  jr    $ra
/* B05674 8008E4D4 00000000 */   nop   
