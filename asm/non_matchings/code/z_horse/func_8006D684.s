.rdata
glabel D_8013BC40
    .asciz "player->ride.actor != NULL"
    .balign 4

glabel D_8013BC5C
    .asciz "../z_horse.c"
    .balign 4

glabel D_8013BC6C
    .asciz "player->ride.actor != NULL"
    .balign 4

glabel D_8013BC88
    .asciz "../z_horse.c"
    .balign 4

glabel D_8013BC98
    .asciz "player->ride.actor != NULL"
    .balign 4

glabel D_8013BCB4
    .asciz "../z_horse.c"
    .balign 4

glabel D_8013BCC4
    .asciz "player->ride.actor != NULL"
    .balign 4

glabel D_8013BCE0
    .asciz "../z_horse.c"
    .balign 4

.late_rodata
glabel D_8013BD38
    .float -2084.0

.text
glabel func_8006D684
/* AE4824 8006D684 3C098016 */  lui   $t1, %hi(gSaveContext) # $t1, 0x8016
/* AE4828 8006D688 2529E660 */  addiu $t1, %lo(gSaveContext) # addiu $t1, $t1, -0x19a0
/* AE482C 8006D68C 8D220000 */  lw    $v0, ($t1)
/* AE4830 8006D690 27BDFF78 */  addiu $sp, $sp, -0x88
/* AE4834 8006D694 AFB10030 */  sw    $s1, 0x30($sp)
/* AE4838 8006D698 AFB0002C */  sw    $s0, 0x2c($sp)
/* AE483C 8006D69C 2406028A */  li    $a2, 650
/* AE4840 8006D6A0 00A08025 */  move  $s0, $a1
/* AE4844 8006D6A4 00808825 */  move  $s1, $a0
/* AE4848 8006D6A8 10C20008 */  beq   $a2, $v0, .L8006D6CC
/* AE484C 8006D6AC AFBF0034 */   sw    $ra, 0x34($sp)
/* AE4850 8006D6B0 2401028E */  li    $at, 654
/* AE4854 8006D6B4 10410005 */  beq   $v0, $at, .L8006D6CC
/* AE4858 8006D6B8 24010292 */   li    $at, 658
/* AE485C 8006D6BC 10410003 */  beq   $v0, $at, .L8006D6CC
/* AE4860 8006D6C0 24010476 */   li    $at, 1142
/* AE4864 8006D6C4 54410062 */  bnel  $v0, $at, .L8006D850
/* AE4868 8006D6C8 862F00A4 */   lh    $t7, 0xa4($s1)
.L8006D6CC:
/* AE486C 8006D6CC 8D2E1364 */  lw    $t6, 0x1364($t1)
/* AE4870 8006D6D0 3C0F8012 */  lui   $t7, %hi(D_8011F9A0) # $t7, 0x8012
/* AE4874 8006D6D4 25EFF9A0 */  addiu $t7, %lo(D_8011F9A0) # addiu $t7, $t7, -0x660
/* AE4878 8006D6D8 55C0005D */  bnezl $t6, .L8006D850
/* AE487C 8006D6DC 862F00A4 */   lh    $t7, 0xa4($s1)
/* AE4880 8006D6E0 8DF90000 */  lw    $t9, ($t7)
/* AE4884 8006D6E4 27A30060 */  addiu $v1, $sp, 0x60
/* AE4888 8006D6E8 AC790000 */  sw    $t9, ($v1)
/* AE488C 8006D6EC 8DF80004 */  lw    $t8, 4($t7)
/* AE4890 8006D6F0 AC780004 */  sw    $t8, 4($v1)
/* AE4894 8006D6F4 8DF90008 */  lw    $t9, 8($t7)
/* AE4898 8006D6F8 AC790008 */  sw    $t9, 8($v1)
/* AE489C 8006D6FC 8DF8000C */  lw    $t8, 0xc($t7)
/* AE48A0 8006D700 AC78000C */  sw    $t8, 0xc($v1)
/* AE48A4 8006D704 8DF90010 */  lw    $t9, 0x10($t7)
/* AE48A8 8006D708 AC790010 */  sw    $t9, 0x10($v1)
/* AE48AC 8006D70C 8DF80014 */  lw    $t8, 0x14($t7)
/* AE48B0 8006D710 14C20008 */  bne   $a2, $v0, .L8006D734
/* AE48B4 8006D714 AC780014 */   sw    $t8, 0x14($v1)
/* AE48B8 8006D718 886C0000 */  lwl   $t4, ($v1)
/* AE48BC 8006D71C 986C0003 */  lwr   $t4, 3($v1)
/* AE48C0 8006D720 27AA0078 */  addiu $t2, $sp, 0x78
/* AE48C4 8006D724 AD4C0000 */  sw    $t4, ($t2)
/* AE48C8 8006D728 946C0004 */  lhu   $t4, 4($v1)
/* AE48CC 8006D72C 1000001C */  b     .L8006D7A0
/* AE48D0 8006D730 A54C0004 */   sh    $t4, 4($t2)
.L8006D734:
/* AE48D4 8006D734 2401028E */  li    $at, 654
/* AE48D8 8006D738 14410008 */  bne   $v0, $at, .L8006D75C
/* AE48DC 8006D73C 27AE0066 */   addiu $t6, $sp, 0x66
/* AE48E0 8006D740 89D80000 */  lwl   $t8, ($t6)
/* AE48E4 8006D744 99D80003 */  lwr   $t8, 3($t6)
/* AE48E8 8006D748 27AD0078 */  addiu $t5, $sp, 0x78
/* AE48EC 8006D74C ADB80000 */  sw    $t8, ($t5)
/* AE48F0 8006D750 95D80004 */  lhu   $t8, 4($t6)
/* AE48F4 8006D754 10000012 */  b     .L8006D7A0
/* AE48F8 8006D758 A5B80004 */   sh    $t8, 4($t5)
.L8006D75C:
/* AE48FC 8006D75C 24010292 */  li    $at, 658
/* AE4900 8006D760 14410009 */  bne   $v0, $at, .L8006D788
/* AE4904 8006D764 27AE0072 */   addiu $t6, $sp, 0x72
/* AE4908 8006D768 27AA006C */  addiu $t2, $sp, 0x6c
/* AE490C 8006D76C 894C0000 */  lwl   $t4, ($t2)
/* AE4910 8006D770 994C0003 */  lwr   $t4, 3($t2)
/* AE4914 8006D774 27B90078 */  addiu $t9, $sp, 0x78
/* AE4918 8006D778 AF2C0000 */  sw    $t4, ($t9)
/* AE491C 8006D77C 954C0004 */  lhu   $t4, 4($t2)
/* AE4920 8006D780 10000007 */  b     .L8006D7A0
/* AE4924 8006D784 A72C0004 */   sh    $t4, 4($t9)
.L8006D788:
/* AE4928 8006D788 89D80000 */  lwl   $t8, ($t6)
/* AE492C 8006D78C 99D80003 */  lwr   $t8, 3($t6)
/* AE4930 8006D790 27AD0078 */  addiu $t5, $sp, 0x78
/* AE4934 8006D794 ADB80000 */  sw    $t8, ($t5)
/* AE4938 8006D798 95D80004 */  lhu   $t8, 4($t6)
/* AE493C 8006D79C A5B80004 */  sh    $t8, 4($t5)
.L8006D7A0:
/* AE4940 8006D7A0 87AA007A */  lh    $t2, 0x7a($sp)
/* AE4944 8006D7A4 87AB007C */  lh    $t3, 0x7c($sp)
/* AE4948 8006D7A8 87B90078 */  lh    $t9, 0x78($sp)
/* AE494C 8006D7AC 448A3000 */  mtc1  $t2, $f6
/* AE4950 8006D7B0 448B5000 */  mtc1  $t3, $f10
/* AE4954 8006D7B4 44992000 */  mtc1  $t9, $f4
/* AE4958 8006D7B8 46803220 */  cvt.s.w $f8, $f6
/* AE495C 8006D7BC AFA00018 */  sw    $zero, 0x18($sp)
/* AE4960 8006D7C0 240D0007 */  li    $t5, 7
/* AE4964 8006D7C4 26241C24 */  addiu $a0, $s1, 0x1c24
/* AE4968 8006D7C8 02202825 */  move  $a1, $s1
/* AE496C 8006D7CC 46805420 */  cvt.s.w $f16, $f10
/* AE4970 8006D7D0 E7A80010 */  swc1  $f8, 0x10($sp)
/* AE4974 8006D7D4 24060014 */  li    $a2, 20
/* AE4978 8006D7D8 46802120 */  cvt.s.w $f4, $f4
/* AE497C 8006D7DC E7B00014 */  swc1  $f16, 0x14($sp)
/* AE4980 8006D7E0 860C0032 */  lh    $t4, 0x32($s0)
/* AE4984 8006D7E4 AFAD0024 */  sw    $t5, 0x24($sp)
/* AE4988 8006D7E8 AFA00020 */  sw    $zero, 0x20($sp)
/* AE498C 8006D7EC AFAC001C */  sw    $t4, 0x1c($sp)
/* AE4990 8006D7F0 44072000 */  mfc1  $a3, $f4
/* AE4994 8006D7F4 0C00C7D4 */  jal   Actor_Spawn
/* AE4998 8006D7F8 00000000 */   nop   
/* AE499C 8006D7FC 14400007 */  bnez  $v0, .L8006D81C
/* AE49A0 8006D800 AE020440 */   sw    $v0, 0x440($s0)
/* AE49A4 8006D804 3C048014 */  lui   $a0, %hi(D_8013BC40) # $a0, 0x8014
/* AE49A8 8006D808 3C058014 */  lui   $a1, %hi(D_8013BC5C) # $a1, 0x8014
/* AE49AC 8006D80C 24A5BC5C */  addiu $a1, %lo(D_8013BC5C) # addiu $a1, $a1, -0x43a4
/* AE49B0 8006D810 2484BC40 */  addiu $a0, %lo(D_8013BC40) # addiu $a0, $a0, -0x43c0
/* AE49B4 8006D814 0C0007FC */  jal   __assert
/* AE49B8 8006D818 24060231 */   li    $a2, 561
.L8006D81C:
/* AE49BC 8006D81C 02202025 */  move  $a0, $s1
/* AE49C0 8006D820 02002825 */  move  $a1, $s0
/* AE49C4 8006D824 0C00B7B3 */  jal   func_8002DECC
/* AE49C8 8006D828 8E060440 */   lw    $a2, 0x440($s0)
/* AE49CC 8006D82C 02202025 */  move  $a0, $s1
/* AE49D0 8006D830 0C00B79D */  jal   func_8002DE74
/* AE49D4 8006D834 02002825 */   move  $a1, $s0
/* AE49D8 8006D838 862E00A4 */  lh    $t6, 0xa4($s1)
/* AE49DC 8006D83C 3C098016 */  lui   $t1, %hi(gSaveContext) # $t1, 0x8016
/* AE49E0 8006D840 2529E660 */  addiu $t1, %lo(gSaveContext) # addiu $t1, $t1, -0x19a0
/* AE49E4 8006D844 10000103 */  b     .L8006DC54
/* AE49E8 8006D848 A52E1348 */   sh    $t6, 0x1348($t1)
/* AE49EC 8006D84C 862F00A4 */  lh    $t7, 0xa4($s1)
.L8006D850:
/* AE49F0 8006D850 24010063 */  li    $at, 99
/* AE49F4 8006D854 15E1003B */  bne   $t7, $at, .L8006D944
/* AE49F8 8006D858 00000000 */   nop   
/* AE49FC 8006D85C 953813FA */  lhu   $t8, 0x13fa($t1)
/* AE4A00 8006D860 24060006 */  li    $a2, 6
/* AE4A04 8006D864 3319000F */  andi  $t9, $t8, 0xf
/* AE4A08 8006D868 14D90036 */  bne   $a2, $t9, .L8006D944
/* AE4A0C 8006D86C 00000000 */   nop   
/* AE4A10 8006D870 0C00D6D3 */  jal   Flags_GetEventChkInf
/* AE4A14 8006D874 24040018 */   li    $a0, 24
/* AE4A18 8006D878 3C098016 */  lui   $t1, %hi(gSaveContext) # $t1, 0x8016
/* AE4A1C 8006D87C 14400031 */  bnez  $v0, .L8006D944
/* AE4A20 8006D880 2529E660 */   addiu $t1, %lo(gSaveContext) # addiu $t1, $t1, -0x19a0
/* AE4A24 8006D884 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AE4A28 8006D888 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AE4A2C 8006D88C 3C07445F */  lui   $a3, (0x445F8000 >> 16) # lui $a3, 0x445f
/* AE4A30 8006D890 34E78000 */  ori   $a3, (0x445F8000 & 0xFFFF) # ori $a3, $a3, 0x8000
/* AE4A34 8006D894 854B0556 */  lh    $t3, 0x556($t2)
/* AE4A38 8006D898 26241C24 */  addiu $a0, $s1, 0x1c24
/* AE4A3C 8006D89C 02202825 */  move  $a1, $s1
/* AE4A40 8006D8A0 15600028 */  bnez  $t3, .L8006D944
/* AE4A44 8006D8A4 24060014 */   li    $a2, 20
/* AE4A48 8006D8A8 3C018014 */  lui   $at, %hi(D_8013BD38)
/* AE4A4C 8006D8AC C424BD38 */  lwc1  $f4, %lo(D_8013BD38)($at)
/* AE4A50 8006D8B0 44809000 */  mtc1  $zero, $f18
/* AE4A54 8006D8B4 240C8001 */  li    $t4, -32767
/* AE4A58 8006D8B8 240D0005 */  li    $t5, 5
/* AE4A5C 8006D8BC AFAD0024 */  sw    $t5, 0x24($sp)
/* AE4A60 8006D8C0 AFAC001C */  sw    $t4, 0x1c($sp)
/* AE4A64 8006D8C4 AFA00018 */  sw    $zero, 0x18($sp)
/* AE4A68 8006D8C8 AFA00020 */  sw    $zero, 0x20($sp)
/* AE4A6C 8006D8CC E7A40014 */  swc1  $f4, 0x14($sp)
/* AE4A70 8006D8D0 0C00C7D4 */  jal   Actor_Spawn
/* AE4A74 8006D8D4 E7B20010 */   swc1  $f18, 0x10($sp)
/* AE4A78 8006D8D8 14400007 */  bnez  $v0, .L8006D8F8
/* AE4A7C 8006D8DC AE020440 */   sw    $v0, 0x440($s0)
/* AE4A80 8006D8E0 3C048014 */  lui   $a0, %hi(D_8013BC6C) # $a0, 0x8014
/* AE4A84 8006D8E4 3C058014 */  lui   $a1, %hi(D_8013BC88) # $a1, 0x8014
/* AE4A88 8006D8E8 24A5BC88 */  addiu $a1, %lo(D_8013BC88) # addiu $a1, $a1, -0x4378
/* AE4A8C 8006D8EC 2484BC6C */  addiu $a0, %lo(D_8013BC6C) # addiu $a0, $a0, -0x4394
/* AE4A90 8006D8F0 0C0007FC */  jal   __assert
/* AE4A94 8006D8F4 24060246 */   li    $a2, 582
.L8006D8F8:
/* AE4A98 8006D8F8 02202025 */  move  $a0, $s1
/* AE4A9C 8006D8FC 02002825 */  move  $a1, $s0
/* AE4AA0 8006D900 0C00B7B3 */  jal   func_8002DECC
/* AE4AA4 8006D904 8E060440 */   lw    $a2, 0x440($s0)
/* AE4AA8 8006D908 02202025 */  move  $a0, $s1
/* AE4AAC 8006D90C 0C00B79D */  jal   func_8002DE74
/* AE4AB0 8006D910 02002825 */   move  $a1, $s0
/* AE4AB4 8006D914 862E00A4 */  lh    $t6, 0xa4($s1)
/* AE4AB8 8006D918 3C098016 */  lui   $t1, %hi(gSaveContext) # $t1, 0x8016
/* AE4ABC 8006D91C 2529E660 */  addiu $t1, %lo(gSaveContext) # addiu $t1, $t1, -0x19a0
/* AE4AC0 8006D920 A52E1348 */  sh    $t6, 0x1348($t1)
/* AE4AC4 8006D924 862F00A4 */  lh    $t7, 0xa4($s1)
/* AE4AC8 8006D928 2401005D */  li    $at, 93
/* AE4ACC 8006D92C 55E100CA */  bnel  $t7, $at, .L8006DC58
/* AE4AD0 8006D930 8FBF0034 */   lw    $ra, 0x34($sp)
/* AE4AD4 8006D934 8E190440 */  lw    $t9, 0x440($s0)
/* AE4AD8 8006D938 2418FFFF */  li    $t8, -1
/* AE4ADC 8006D93C 100000C5 */  b     .L8006DC54
/* AE4AE0 8006D940 A3380003 */   sb    $t8, 3($t9)
.L8006D944:
/* AE4AE4 8006D944 3C088012 */  lui   $t0, %hi(D_8011F9B8) # $t0, 0x8012
/* AE4AE8 8006D948 3C048012 */  lui   $a0, %hi(D_8011F9B8+0xa0) # $a0, 0x8012
/* AE4AEC 8006D94C 24060006 */  li    $a2, 6
/* AE4AF0 8006D950 2484FA58 */  addiu $a0, %lo(D_8011F9B8+0xa0) # addiu $a0, $a0, -0x5a8
/* AE4AF4 8006D954 2508F9B8 */  addiu $t0, %lo(D_8011F9B8) # addiu $t0, $t0, -0x648
/* AE4AF8 8006D958 862500A4 */  lh    $a1, 0xa4($s1)
/* AE4AFC 8006D95C 850A0000 */  lh    $t2, ($t0)
.L8006D960:
/* AE4B00 8006D960 54AA00BA */  bnel  $a1, $t2, .L8006DC4C
/* AE4B04 8006D964 25080014 */   addiu $t0, $t0, 0x14
/* AE4B08 8006D968 8D230008 */  lw    $v1, 8($t1)
/* AE4B0C 8006D96C 8D0B0004 */  lw    $t3, 4($t0)
/* AE4B10 8006D970 546B00B6 */  bnel  $v1, $t3, .L8006DC4C
/* AE4B14 8006D974 25080014 */   addiu $t0, $t0, 0x14
/* AE4B18 8006D978 85020010 */  lh    $v0, 0x10($t0)
/* AE4B1C 8006D97C 24010007 */  li    $at, 7
/* AE4B20 8006D980 1441003C */  bne   $v0, $at, .L8006DA74
/* AE4B24 8006D984 24010063 */   li    $at, 99
/* AE4B28 8006D988 14A10013 */  bne   $a1, $at, .L8006D9D8
/* AE4B2C 8006D98C 3401FFF1 */   li    $at, 65521
/* AE4B30 8006D990 54610012 */  bnel  $v1, $at, .L8006D9DC
/* AE4B34 8006D994 850B000A */   lh    $t3, 0xa($t0)
/* AE4B38 8006D998 C6060024 */  lwc1  $f6, 0x24($s0)
/* AE4B3C 8006D99C 85020010 */  lh    $v0, 0x10($t0)
/* AE4B40 8006D9A0 4600320D */  trunc.w.s $f8, $f6
/* AE4B44 8006D9A4 440D4000 */  mfc1  $t5, $f8
/* AE4B48 8006D9A8 00000000 */  nop   
/* AE4B4C 8006D9AC A50D0008 */  sh    $t5, 8($t0)
/* AE4B50 8006D9B0 C60A0028 */  lwc1  $f10, 0x28($s0)
/* AE4B54 8006D9B4 4600540D */  trunc.w.s $f16, $f10
/* AE4B58 8006D9B8 440F8000 */  mfc1  $t7, $f16
/* AE4B5C 8006D9BC 00000000 */  nop   
/* AE4B60 8006D9C0 A50F000A */  sh    $t7, 0xa($t0)
/* AE4B64 8006D9C4 C612002C */  lwc1  $f18, 0x2c($s0)
/* AE4B68 8006D9C8 4600910D */  trunc.w.s $f4, $f18
/* AE4B6C 8006D9CC 44192000 */  mfc1  $t9, $f4
/* AE4B70 8006D9D0 00000000 */  nop   
/* AE4B74 8006D9D4 A519000C */  sh    $t9, 0xc($t0)
.L8006D9D8:
/* AE4B78 8006D9D8 850B000A */  lh    $t3, 0xa($t0)
.L8006D9DC:
/* AE4B7C 8006D9DC 850C000C */  lh    $t4, 0xc($t0)
/* AE4B80 8006D9E0 850A0008 */  lh    $t2, 8($t0)
/* AE4B84 8006D9E4 448B4000 */  mtc1  $t3, $f8
/* AE4B88 8006D9E8 448C8000 */  mtc1  $t4, $f16
/* AE4B8C 8006D9EC 448A3000 */  mtc1  $t2, $f6
/* AE4B90 8006D9F0 468042A0 */  cvt.s.w $f10, $f8
/* AE4B94 8006D9F4 AFA00018 */  sw    $zero, 0x18($sp)
/* AE4B98 8006D9F8 26241C24 */  addiu $a0, $s1, 0x1c24
/* AE4B9C 8006D9FC 02202825 */  move  $a1, $s1
/* AE4BA0 8006DA00 24060014 */  li    $a2, 20
/* AE4BA4 8006DA04 468084A0 */  cvt.s.w $f18, $f16
/* AE4BA8 8006DA08 E7AA0010 */  swc1  $f10, 0x10($sp)
/* AE4BAC 8006DA0C 468031A0 */  cvt.s.w $f6, $f6
/* AE4BB0 8006DA10 E7B20014 */  swc1  $f18, 0x14($sp)
/* AE4BB4 8006DA14 860D0032 */  lh    $t5, 0x32($s0)
/* AE4BB8 8006DA18 AFA20024 */  sw    $v0, 0x24($sp)
/* AE4BBC 8006DA1C AFA00020 */  sw    $zero, 0x20($sp)
/* AE4BC0 8006DA20 AFAD001C */  sw    $t5, 0x1c($sp)
/* AE4BC4 8006DA24 44073000 */  mfc1  $a3, $f6
/* AE4BC8 8006DA28 0C00C7D4 */  jal   Actor_Spawn
/* AE4BCC 8006DA2C 00000000 */   nop   
/* AE4BD0 8006DA30 14400007 */  bnez  $v0, .L8006DA50
/* AE4BD4 8006DA34 AE020440 */   sw    $v0, 0x440($s0)
/* AE4BD8 8006DA38 3C048014 */  lui   $a0, %hi(D_8013BC98) # $a0, 0x8014
/* AE4BDC 8006DA3C 3C058014 */  lui   $a1, %hi(D_8013BCB4) # $a1, 0x8014
/* AE4BE0 8006DA40 24A5BCB4 */  addiu $a1, %lo(D_8013BCB4) # addiu $a1, $a1, -0x434c
/* AE4BE4 8006DA44 2484BC98 */  addiu $a0, %lo(D_8013BC98) # addiu $a0, $a0, -0x4368
/* AE4BE8 8006DA48 0C0007FC */  jal   __assert
/* AE4BEC 8006DA4C 24060274 */   li    $a2, 628
.L8006DA50:
/* AE4BF0 8006DA50 02202025 */  move  $a0, $s1
/* AE4BF4 8006DA54 02002825 */  move  $a1, $s0
/* AE4BF8 8006DA58 0C00B7B3 */  jal   func_8002DECC
/* AE4BFC 8006DA5C 8E060440 */   lw    $a2, 0x440($s0)
/* AE4C00 8006DA60 02202025 */  move  $a0, $s1
/* AE4C04 8006DA64 0C00B79D */  jal   func_8002DE74
/* AE4C08 8006DA68 02002825 */   move  $a1, $s0
/* AE4C0C 8006DA6C 1000007A */  b     .L8006DC58
/* AE4C10 8006DA70 8FBF0034 */   lw    $ra, 0x34($sp)
.L8006DA74:
/* AE4C14 8006DA74 24010005 */  li    $at, 5
/* AE4C18 8006DA78 50410006 */  beql  $v0, $at, .L8006DA94
/* AE4C1C 8006DA7C 952E13FA */   lhu   $t6, 0x13fa($t1)
/* AE4C20 8006DA80 10C20003 */  beq   $a2, $v0, .L8006DA90
/* AE4C24 8006DA84 24010008 */   li    $at, 8
/* AE4C28 8006DA88 54410059 */  bnel  $v0, $at, .L8006DBF0
/* AE4C2C 8006DA8C 850B0008 */   lh    $t3, 8($t0)
.L8006DA90:
/* AE4C30 8006DA90 952E13FA */  lhu   $t6, 0x13fa($t1)
.L8006DA94:
/* AE4C34 8006DA94 00001825 */  move  $v1, $zero
/* AE4C38 8006DA98 31CF0010 */  andi  $t7, $t6, 0x10
/* AE4C3C 8006DA9C 000FC103 */  sra   $t8, $t7, 4
/* AE4C40 8006DAA0 53000005 */  beql  $t8, $zero, .L8006DAB8
/* AE4C44 8006DAA4 85190008 */   lh    $t9, 8($t0)
/* AE4C48 8006DAA8 54C20003 */  bnel  $a2, $v0, .L8006DAB8
/* AE4C4C 8006DAAC 85190008 */   lh    $t9, 8($t0)
/* AE4C50 8006DAB0 34038000 */  li    $v1, 32768
/* AE4C54 8006DAB4 85190008 */  lh    $t9, 8($t0)
.L8006DAB8:
/* AE4C58 8006DAB8 850A000A */  lh    $t2, 0xa($t0)
/* AE4C5C 8006DABC 850B000C */  lh    $t3, 0xc($t0)
/* AE4C60 8006DAC0 44992000 */  mtc1  $t9, $f4
/* AE4C64 8006DAC4 448A3000 */  mtc1  $t2, $f6
/* AE4C68 8006DAC8 448B5000 */  mtc1  $t3, $f10
/* AE4C6C 8006DACC 46802120 */  cvt.s.w $f4, $f4
/* AE4C70 8006DAD0 850C000E */  lh    $t4, 0xe($t0)
/* AE4C74 8006DAD4 00436825 */  or    $t5, $v0, $v1
/* AE4C78 8006DAD8 AFAD0024 */  sw    $t5, 0x24($sp)
/* AE4C7C 8006DADC 26241C24 */  addiu $a0, $s1, 0x1c24
/* AE4C80 8006DAE0 46803220 */  cvt.s.w $f8, $f6
/* AE4C84 8006DAE4 44072000 */  mfc1  $a3, $f4
/* AE4C88 8006DAE8 02202825 */  move  $a1, $s1
/* AE4C8C 8006DAEC 24060014 */  li    $a2, 20
/* AE4C90 8006DAF0 AFA00018 */  sw    $zero, 0x18($sp)
/* AE4C94 8006DAF4 46805420 */  cvt.s.w $f16, $f10
/* AE4C98 8006DAF8 E7A80010 */  swc1  $f8, 0x10($sp)
/* AE4C9C 8006DAFC AFA00020 */  sw    $zero, 0x20($sp)
/* AE4CA0 8006DB00 AFA80044 */  sw    $t0, 0x44($sp)
/* AE4CA4 8006DB04 AFAC001C */  sw    $t4, 0x1c($sp)
/* AE4CA8 8006DB08 0C00C7D4 */  jal   Actor_Spawn
/* AE4CAC 8006DB0C E7B00014 */   swc1  $f16, 0x14($sp)
/* AE4CB0 8006DB10 8FA80044 */  lw    $t0, 0x44($sp)
/* AE4CB4 8006DB14 14400009 */  bnez  $v0, .L8006DB3C
/* AE4CB8 8006DB18 AE020440 */   sw    $v0, 0x440($s0)
/* AE4CBC 8006DB1C 3C048014 */  lui   $a0, %hi(D_8013BCC4) # $a0, 0x8014
/* AE4CC0 8006DB20 3C058014 */  lui   $a1, %hi(D_8013BCE0) # $a1, 0x8014
/* AE4CC4 8006DB24 24A5BCE0 */  addiu $a1, %lo(D_8013BCE0) # addiu $a1, $a1, -0x4320
/* AE4CC8 8006DB28 2484BCC4 */  addiu $a0, %lo(D_8013BCC4) # addiu $a0, $a0, -0x433c
/* AE4CCC 8006DB2C 2406029B */  li    $a2, 667
/* AE4CD0 8006DB30 0C0007FC */  jal   __assert
/* AE4CD4 8006DB34 AFA80044 */   sw    $t0, 0x44($sp)
/* AE4CD8 8006DB38 8FA80044 */  lw    $t0, 0x44($sp)
.L8006DB3C:
/* AE4CDC 8006DB3C 850E0008 */  lh    $t6, 8($t0)
/* AE4CE0 8006DB40 02202025 */  move  $a0, $s1
/* AE4CE4 8006DB44 02002825 */  move  $a1, $s0
/* AE4CE8 8006DB48 448E9000 */  mtc1  $t6, $f18
/* AE4CEC 8006DB4C 8E060440 */  lw    $a2, 0x440($s0)
/* AE4CF0 8006DB50 46809120 */  cvt.s.w $f4, $f18
/* AE4CF4 8006DB54 E6040024 */  swc1  $f4, 0x24($s0)
/* AE4CF8 8006DB58 850F000A */  lh    $t7, 0xa($t0)
/* AE4CFC 8006DB5C 448F3000 */  mtc1  $t7, $f6
/* AE4D00 8006DB60 00000000 */  nop   
/* AE4D04 8006DB64 46803220 */  cvt.s.w $f8, $f6
/* AE4D08 8006DB68 E6080028 */  swc1  $f8, 0x28($s0)
/* AE4D0C 8006DB6C 8518000C */  lh    $t8, 0xc($t0)
/* AE4D10 8006DB70 A60000B8 */  sh    $zero, 0xb8($s0)
/* AE4D14 8006DB74 861900B8 */  lh    $t9, 0xb8($s0)
/* AE4D18 8006DB78 44985000 */  mtc1  $t8, $f10
/* AE4D1C 8006DB7C A61900B4 */  sh    $t9, 0xb4($s0)
/* AE4D20 8006DB80 46805420 */  cvt.s.w $f16, $f10
/* AE4D24 8006DB84 E610002C */  swc1  $f16, 0x2c($s0)
/* AE4D28 8006DB88 850A000E */  lh    $t2, 0xe($t0)
/* AE4D2C 8006DB8C 0C00B7B3 */  jal   func_8002DECC
/* AE4D30 8006DB90 A60A00B6 */   sh    $t2, 0xb6($s0)
/* AE4D34 8006DB94 02202025 */  move  $a0, $s1
/* AE4D38 8006DB98 0C00B79D */  jal   func_8002DE74
/* AE4D3C 8006DB9C 02002825 */   move  $a1, $s0
/* AE4D40 8006DBA0 3C014348 */  li    $at, 0x43480000 # 0.000000
/* AE4D44 8006DBA4 44812000 */  mtc1  $at, $f4
/* AE4D48 8006DBA8 C6120024 */  lwc1  $f18, 0x24($s0)
/* AE4D4C 8006DBAC 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AE4D50 8006DBB0 44815000 */  mtc1  $at, $f10
/* AE4D54 8006DBB4 46049181 */  sub.s $f6, $f18, $f4
/* AE4D58 8006DBB8 02202025 */  move  $a0, $s1
/* AE4D5C 8006DBBC 26060024 */  addiu $a2, $s0, 0x24
/* AE4D60 8006DBC0 27A70054 */  addiu $a3, $sp, 0x54
/* AE4D64 8006DBC4 E7A60054 */  swc1  $f6, 0x54($sp)
/* AE4D68 8006DBC8 C6080028 */  lwc1  $f8, 0x28($s0)
/* AE4D6C 8006DBCC 460A4400 */  add.s $f16, $f8, $f10
/* AE4D70 8006DBD0 E7B00058 */  swc1  $f16, 0x58($sp)
/* AE4D74 8006DBD4 C612002C */  lwc1  $f18, 0x2c($s0)
/* AE4D78 8006DBD8 E7B2005C */  swc1  $f18, 0x5c($sp)
/* AE4D7C 8006DBDC 0C030136 */  jal   func_800C04D8
/* AE4D80 8006DBE0 862507A0 */   lh    $a1, 0x7a0($s1)
/* AE4D84 8006DBE4 1000001C */  b     .L8006DC58
/* AE4D88 8006DBE8 8FBF0034 */   lw    $ra, 0x34($sp)
/* AE4D8C 8006DBEC 850B0008 */  lh    $t3, 8($t0)
.L8006DBF0:
/* AE4D90 8006DBF0 850C000A */  lh    $t4, 0xa($t0)
/* AE4D94 8006DBF4 850D000C */  lh    $t5, 0xc($t0)
/* AE4D98 8006DBF8 448B2000 */  mtc1  $t3, $f4
/* AE4D9C 8006DBFC 448C3000 */  mtc1  $t4, $f6
/* AE4DA0 8006DC00 448D5000 */  mtc1  $t5, $f10
/* AE4DA4 8006DC04 46802120 */  cvt.s.w $f4, $f4
/* AE4DA8 8006DC08 850E000E */  lh    $t6, 0xe($t0)
/* AE4DAC 8006DC0C 26241C24 */  addiu $a0, $s1, 0x1c24
/* AE4DB0 8006DC10 02202825 */  move  $a1, $s1
/* AE4DB4 8006DC14 24060014 */  li    $a2, 20
/* AE4DB8 8006DC18 46803220 */  cvt.s.w $f8, $f6
/* AE4DBC 8006DC1C 44072000 */  mfc1  $a3, $f4
/* AE4DC0 8006DC20 AFA00018 */  sw    $zero, 0x18($sp)
/* AE4DC4 8006DC24 AFA00020 */  sw    $zero, 0x20($sp)
/* AE4DC8 8006DC28 AFA20024 */  sw    $v0, 0x24($sp)
/* AE4DCC 8006DC2C 46805420 */  cvt.s.w $f16, $f10
/* AE4DD0 8006DC30 E7A80010 */  swc1  $f8, 0x10($sp)
/* AE4DD4 8006DC34 AFAE001C */  sw    $t6, 0x1c($sp)
/* AE4DD8 8006DC38 0C00C7D4 */  jal   Actor_Spawn
/* AE4DDC 8006DC3C E7B00014 */   swc1  $f16, 0x14($sp)
/* AE4DE0 8006DC40 10000005 */  b     .L8006DC58
/* AE4DE4 8006DC44 8FBF0034 */   lw    $ra, 0x34($sp)
/* AE4DE8 8006DC48 25080014 */  addiu $t0, $t0, 0x14
.L8006DC4C:
/* AE4DEC 8006DC4C 5504FF44 */  bnel  $t0, $a0, .L8006D960
/* AE4DF0 8006DC50 850A0000 */   lh    $t2, ($t0)
.L8006DC54:
/* AE4DF4 8006DC54 8FBF0034 */  lw    $ra, 0x34($sp)
.L8006DC58:
/* AE4DF8 8006DC58 8FB0002C */  lw    $s0, 0x2c($sp)
/* AE4DFC 8006DC5C 8FB10030 */  lw    $s1, 0x30($sp)
/* AE4E00 8006DC60 03E00008 */  jr    $ra
/* AE4E04 8006DC64 27BD0088 */   addiu $sp, $sp, 0x88

