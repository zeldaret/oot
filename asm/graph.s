.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800C5850
/* B3C9F0 800C5850 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3C9F4 800C5854 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3C9F8 800C5858 0C0011D0 */  jal   osViGetNextFramebuffer
/* B3C9FC 800C585C 00000000 */   nop   
/* B3CA00 800C5860 AFA2001C */  sw    $v0, 0x1c($sp)
/* B3CA04 800C5864 0C032942 */  jal   SysCfb_GetFbPtr
/* B3CA08 800C5868 00002025 */   move  $a0, $zero
/* B3CA0C 800C586C 8FAE001C */  lw    $t6, 0x1c($sp)
/* B3CA10 800C5870 104E0005 */  beq   $v0, $t6, .L800C5888
/* B3CA14 800C5874 00000000 */   nop   
/* B3CA18 800C5878 0C032942 */  jal   SysCfb_GetFbPtr
/* B3CA1C 800C587C 00002025 */   move  $a0, $zero
/* B3CA20 800C5880 10000004 */  b     .L800C5894
/* B3CA24 800C5884 00402025 */   move  $a0, $v0
.L800C5888:
/* B3CA28 800C5888 0C032942 */  jal   SysCfb_GetFbPtr
/* B3CA2C 800C588C 24040001 */   li    $a0, 1
/* B3CA30 800C5890 00402025 */  move  $a0, $v0
.L800C5894:
/* B3CA34 800C5894 0C0019A4 */  jal   osViSwapBuffer
/* B3CA38 800C5898 00000000 */   nop   
/* B3CA3C 800C589C 0C035213 */  jal   Fault_WaitForInput
/* B3CA40 800C58A0 00000000 */   nop   
/* B3CA44 800C58A4 0C0019A4 */  jal   osViSwapBuffer
/* B3CA48 800C58A8 8FA4001C */   lw    $a0, 0x1c($sp)
/* B3CA4C 800C58AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3CA50 800C58B0 27BD0020 */  addiu $sp, $sp, 0x20
/* B3CA54 800C58B4 03E00008 */  jr    $ra
/* B3CA58 800C58B8 00000000 */   nop   

glabel func_800C58BC
/* B3CA5C 800C58BC 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3CA60 800C58C0 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B3CA64 800C58C4 8C430000 */  lw    $v1, ($v0)
/* B3CA68 800C58C8 27BDFF08 */  addiu $sp, $sp, -0xf8
/* B3CA6C 800C58CC AFBF0014 */  sw    $ra, 0x14($sp)
/* B3CA70 800C58D0 AFA400F8 */  sw    $a0, 0xf8($sp)
/* B3CA74 800C58D4 846E1074 */  lh    $t6, 0x1074($v1)
/* B3CA78 800C58D8 24010007 */  li    $at, 7
/* B3CA7C 800C58DC 55C10071 */  bnel  $t6, $at, .L800C5AA4
/* B3CA80 800C58E0 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3CA84 800C58E4 846F1076 */  lh    $t7, 0x1076($v1)
/* B3CA88 800C58E8 51E0006E */  beql  $t7, $zero, .L800C5AA4
/* B3CA8C 800C58EC 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3CA90 800C58F0 0C035FD7 */  jal   func_800D7F5C
/* B3CA94 800C58F4 27A40020 */   addiu $a0, $sp, 0x20
/* B3CA98 800C58F8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3CA9C 800C58FC 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B3CAA0 800C5900 8C580000 */  lw    $t8, ($v0)
/* B3CAA4 800C5904 3C068013 */  lui   $a2, %hi(D_8012D230) # $a2, 0x8013
/* B3CAA8 800C5908 24C6D230 */  addiu $a2, %lo(D_8012D230) # addiu $a2, $a2, -0x2dd0
/* B3CAAC 800C590C 8719107A */  lh    $t9, 0x107a($t8)
/* B3CAB0 800C5910 27A40020 */  addiu $a0, $sp, 0x20
/* B3CAB4 800C5914 24050003 */  li    $a1, 3
/* B3CAB8 800C5918 0C036B20 */  jal   func_800DAC80
/* B3CABC 800C591C AFB900DC */   sw    $t9, 0xdc($sp)
/* B3CAC0 800C5920 3C058015 */  lui   $a1, %hi(D_80155F50) # $a1, 0x8015
/* B3CAC4 800C5924 24A55F50 */  addiu $a1, %lo(D_80155F50) # addiu $a1, $a1, 0x5f50
/* B3CAC8 800C5928 0C036B24 */  jal   func_800DAC90
/* B3CACC 800C592C 27A40020 */   addiu $a0, $sp, 0x20
/* B3CAD0 800C5930 27A40020 */  addiu $a0, $sp, 0x20
/* B3CAD4 800C5934 0C036100 */  jal   func_800D8400
/* B3CAD8 800C5938 8FA500F8 */   lw    $a1, 0xf8($sp)
/* B3CADC 800C593C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3CAE0 800C5940 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B3CAE4 800C5944 8C490000 */  lw    $t1, ($v0)
/* B3CAE8 800C5948 8FA800AC */  lw    $t0, 0xac($sp)
/* B3CAEC 800C594C 24010001 */  li    $at, 1
/* B3CAF0 800C5950 3C048014 */  lui   $a0, %hi(D_80145180) # $a0, 0x8014
/* B3CAF4 800C5954 A528108E */  sh    $t0, 0x108e($t1)
/* B3CAF8 800C5958 8FAA00BC */  lw    $t2, 0xbc($sp)
/* B3CAFC 800C595C 8FAE00C0 */  lw    $t6, 0xc0($sp)
/* B3CB00 800C5960 8FAC00B8 */  lw    $t4, 0xb8($sp)
/* B3CB04 800C5964 8FB900C4 */  lw    $t9, 0xc4($sp)
/* B3CB08 800C5968 000A5840 */  sll   $t3, $t2, 1
/* B3CB0C 800C596C 8C490000 */  lw    $t1, ($v0)
/* B3CB10 800C5970 000E7840 */  sll   $t7, $t6, 1
/* B3CB14 800C5974 016C6821 */  addu  $t5, $t3, $t4
/* B3CB18 800C5978 01AFC021 */  addu  $t8, $t5, $t7
/* B3CB1C 800C597C 03194021 */  addu  $t0, $t8, $t9
/* B3CB20 800C5980 A528107C */  sh    $t0, 0x107c($t1)
/* B3CB24 800C5984 8C4B0000 */  lw    $t3, ($v0)
/* B3CB28 800C5988 8FAA00B0 */  lw    $t2, 0xb0($sp)
/* B3CB2C 800C598C 24845180 */  addiu $a0, %lo(D_80145180) # addiu $a0, $a0, 0x5180
/* B3CB30 800C5990 A56A107E */  sh    $t2, 0x107e($t3)
/* B3CB34 800C5994 8C4E0000 */  lw    $t6, ($v0)
/* B3CB38 800C5998 8FAC00B4 */  lw    $t4, 0xb4($sp)
/* B3CB3C 800C599C A5CC1080 */  sh    $t4, 0x1080($t6)
/* B3CB40 800C59A0 8C4F0000 */  lw    $t7, ($v0)
/* B3CB44 800C59A4 8FAD00B8 */  lw    $t5, 0xb8($sp)
/* B3CB48 800C59A8 A5ED1082 */  sh    $t5, 0x1082($t7)
/* B3CB4C 800C59AC 8C590000 */  lw    $t9, ($v0)
/* B3CB50 800C59B0 8FB800BC */  lw    $t8, 0xbc($sp)
/* B3CB54 800C59B4 A7381084 */  sh    $t8, 0x1084($t9)
/* B3CB58 800C59B8 8C490000 */  lw    $t1, ($v0)
/* B3CB5C 800C59BC 8FA800C0 */  lw    $t0, 0xc0($sp)
/* B3CB60 800C59C0 A5281086 */  sh    $t0, 0x1086($t1)
/* B3CB64 800C59C4 8C4B0000 */  lw    $t3, ($v0)
/* B3CB68 800C59C8 8FAA00C4 */  lw    $t2, 0xc4($sp)
/* B3CB6C 800C59CC A56A1088 */  sh    $t2, 0x1088($t3)
/* B3CB70 800C59D0 8C4E0000 */  lw    $t6, ($v0)
/* B3CB74 800C59D4 8FAC00D8 */  lw    $t4, 0xd8($sp)
/* B3CB78 800C59D8 A5CC108A */  sh    $t4, 0x108a($t6)
/* B3CB7C 800C59DC 8C4F0000 */  lw    $t7, ($v0)
/* B3CB80 800C59E0 8FAD00C8 */  lw    $t5, 0xc8($sp)
/* B3CB84 800C59E4 A5ED108C */  sh    $t5, 0x108c($t7)
/* B3CB88 800C59E8 8C580000 */  lw    $t8, ($v0)
/* B3CB8C 800C59EC 87031078 */  lh    $v1, 0x1078($t8)
/* B3CB90 800C59F0 10610003 */  beq   $v1, $at, .L800C5A00
/* B3CB94 800C59F4 24010002 */   li    $at, 2
/* B3CB98 800C59F8 14610027 */  bne   $v1, $at, .L800C5A98
/* B3CB9C 800C59FC 00000000 */   nop   
.L800C5A00:
/* B3CBA0 800C5A00 0C00084C */  jal   osSyncPrintf
/* B3CBA4 800C5A04 8FA500B0 */   lw    $a1, 0xb0($sp)
/* B3CBA8 800C5A08 3C048014 */  lui   $a0, %hi(D_8014518C) # $a0, 0x8014
/* B3CBAC 800C5A0C 2484518C */  addiu $a0, %lo(D_8014518C) # addiu $a0, $a0, 0x518c
/* B3CBB0 800C5A10 0C00084C */  jal   osSyncPrintf
/* B3CBB4 800C5A14 8FA500B4 */   lw    $a1, 0xb4($sp)
/* B3CBB8 800C5A18 3C048014 */  lui   $a0, %hi(D_8014519C) # $a0, 0x8014
/* B3CBBC 800C5A1C 2484519C */  addiu $a0, %lo(D_8014519C) # addiu $a0, $a0, 0x519c
/* B3CBC0 800C5A20 0C00084C */  jal   osSyncPrintf
/* B3CBC4 800C5A24 8FA500B8 */   lw    $a1, 0xb8($sp)
/* B3CBC8 800C5A28 3C048014 */  lui   $a0, %hi(D_801451AC) # $a0, 0x8014
/* B3CBCC 800C5A2C 248451AC */  addiu $a0, %lo(D_801451AC) # addiu $a0, $a0, 0x51ac
/* B3CBD0 800C5A30 0C00084C */  jal   osSyncPrintf
/* B3CBD4 800C5A34 8FA500BC */   lw    $a1, 0xbc($sp)
/* B3CBD8 800C5A38 3C048014 */  lui   $a0, %hi(D_801451BC) # $a0, 0x8014
/* B3CBDC 800C5A3C 248451BC */  addiu $a0, %lo(D_801451BC) # addiu $a0, $a0, 0x51bc
/* B3CBE0 800C5A40 0C00084C */  jal   osSyncPrintf
/* B3CBE4 800C5A44 8FA500C0 */   lw    $a1, 0xc0($sp)
/* B3CBE8 800C5A48 3C048014 */  lui   $a0, %hi(D_801451CC) # $a0, 0x8014
/* B3CBEC 800C5A4C 248451CC */  addiu $a0, %lo(D_801451CC) # addiu $a0, $a0, 0x51cc
/* B3CBF0 800C5A50 0C00084C */  jal   osSyncPrintf
/* B3CBF4 800C5A54 8FA500C4 */   lw    $a1, 0xc4($sp)
/* B3CBF8 800C5A58 3C048014 */  lui   $a0, %hi(D_801451DC) # $a0, 0x8014
/* B3CBFC 800C5A5C 248451DC */  addiu $a0, %lo(D_801451DC) # addiu $a0, $a0, 0x51dc
/* B3CC00 800C5A60 0C00084C */  jal   osSyncPrintf
/* B3CC04 800C5A64 8FA500D8 */   lw    $a1, 0xd8($sp)
/* B3CC08 800C5A68 3C048014 */  lui   $a0, %hi(D_801451EC) # $a0, 0x8014
/* B3CC0C 800C5A6C 248451EC */  addiu $a0, %lo(D_801451EC) # addiu $a0, $a0, 0x51ec
/* B3CC10 800C5A70 0C00084C */  jal   osSyncPrintf
/* B3CC14 800C5A74 8FA500C8 */   lw    $a1, 0xc8($sp)
/* B3CC18 800C5A78 3C048014 */  lui   $a0, %hi(D_80145200) # $a0, 0x8014
/* B3CC1C 800C5A7C 24845200 */  addiu $a0, %lo(D_80145200) # addiu $a0, $a0, 0x5200
/* B3CC20 800C5A80 0C00084C */  jal   osSyncPrintf
/* B3CC24 800C5A84 8FA500A8 */   lw    $a1, 0xa8($sp)
/* B3CC28 800C5A88 3C048014 */  lui   $a0, %hi(D_80145210) # $a0, 0x8014
/* B3CC2C 800C5A8C 24845210 */  addiu $a0, %lo(D_80145210) # addiu $a0, $a0, 0x5210
/* B3CC30 800C5A90 0C00084C */  jal   osSyncPrintf
/* B3CC34 800C5A94 8FA500AC */   lw    $a1, 0xac($sp)
.L800C5A98:
/* B3CC38 800C5A98 0C035FF1 */  jal   func_800D7FC4
/* B3CC3C 800C5A9C 27A40020 */   addiu $a0, $sp, 0x20
/* B3CC40 800C5AA0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C5AA4:
/* B3CC44 800C5AA4 27BD00F8 */  addiu $sp, $sp, 0xf8
/* B3CC48 800C5AA8 03E00008 */  jr    $ra
/* B3CC4C 800C5AAC 00000000 */   nop   

glabel func_800C5AB0
/* B3CC50 800C5AB0 27BDFF10 */  addiu $sp, $sp, -0xf0
/* B3CC54 800C5AB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3CC58 800C5AB8 AFA400F0 */  sw    $a0, 0xf0($sp)
/* B3CC5C 800C5ABC 0C035FD7 */  jal   func_800D7F5C
/* B3CC60 800C5AC0 27A40018 */   addiu $a0, $sp, 0x18
/* B3CC64 800C5AC4 240E0001 */  li    $t6, 1
/* B3CC68 800C5AC8 3C068013 */  lui   $a2, %hi(D_8012D248) # $a2, 0x8013
/* B3CC6C 800C5ACC AFAE00D4 */  sw    $t6, 0xd4($sp)
/* B3CC70 800C5AD0 24C6D248 */  addiu $a2, %lo(D_8012D248) # addiu $a2, $a2, -0x2db8
/* B3CC74 800C5AD4 27A40018 */  addiu $a0, $sp, 0x18
/* B3CC78 800C5AD8 0C036B20 */  jal   func_800DAC80
/* B3CC7C 800C5ADC 24050003 */   li    $a1, 3
/* B3CC80 800C5AE0 3C058015 */  lui   $a1, %hi(D_80155F50) # $a1, 0x8015
/* B3CC84 800C5AE4 24A55F50 */  addiu $a1, %lo(D_80155F50) # addiu $a1, $a1, 0x5f50
/* B3CC88 800C5AE8 0C036B24 */  jal   func_800DAC90
/* B3CC8C 800C5AEC 27A40018 */   addiu $a0, $sp, 0x18
/* B3CC90 800C5AF0 27A40018 */  addiu $a0, $sp, 0x18
/* B3CC94 800C5AF4 0C036100 */  jal   func_800D8400
/* B3CC98 800C5AF8 8FA500F0 */   lw    $a1, 0xf0($sp)
/* B3CC9C 800C5AFC 0C035FF1 */  jal   func_800D7FC4
/* B3CCA0 800C5B00 27A40018 */   addiu $a0, $sp, 0x18
/* B3CCA4 800C5B04 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3CCA8 800C5B08 27BD00F0 */  addiu $sp, $sp, 0xf0
/* B3CCAC 800C5B0C 03E00008 */  jr    $ra
/* B3CCB0 800C5B10 00000000 */   nop   

glabel func_800C5B14
/* B3CCB4 800C5B14 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B3CCB8 800C5B18 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3CCBC 800C5B1C AFB10018 */  sw    $s1, 0x18($sp)
/* B3CCC0 800C5B20 AFB00014 */  sw    $s0, 0x14($sp)
/* B3CCC4 800C5B24 8C8E02D8 */  lw    $t6, 0x2d8($a0)
/* B3CCC8 800C5B28 3C19801B */  lui   $t9, %hi(gGfxPools) # $t9, 0x801b
/* B3CCCC 800C5B2C 273941C0 */  addiu $t9, %lo(gGfxPools) # addiu $t9, $t9, 0x41c0
/* B3CCD0 800C5B30 31CF0001 */  andi  $t7, $t6, 1
/* B3CCD4 800C5B34 000FC0C0 */  sll   $t8, $t7, 3
/* B3CCD8 800C5B38 030FC021 */  addu  $t8, $t8, $t7
/* B3CCDC 800C5B3C 0018C0C0 */  sll   $t8, $t8, 3
/* B3CCE0 800C5B40 030FC021 */  addu  $t8, $t8, $t7
/* B3CCE4 800C5B44 0018C180 */  sll   $t8, $t8, 6
/* B3CCE8 800C5B48 030FC021 */  addu  $t8, $t8, $t7
/* B3CCEC 800C5B4C 0018C100 */  sll   $t8, $t8, 4
/* B3CCF0 800C5B50 03198821 */  addu  $s1, $t8, $t9
/* B3CCF4 800C5B54 24081234 */  li    $t0, 4660
/* B3CCF8 800C5B58 3C010001 */  lui   $at, 1
/* B3CCFC 800C5B5C A6280000 */  sh    $t0, ($s1)
/* B3CD00 800C5B60 00310821 */  addu  $at, $at, $s1
/* B3CD04 800C5B64 24095678 */  li    $t1, 22136
/* B3CD08 800C5B68 00808025 */  move  $s0, $a0
/* B3CD0C 800C5B6C A4292408 */  sh    $t1, 0x2408($at)
/* B3CD10 800C5B70 26250008 */  addiu $a1, $s1, 8
/* B3CD14 800C5B74 AFA50030 */  sw    $a1, 0x30($sp)
/* B3CD18 800C5B78 248402B8 */  addiu $a0, $a0, 0x2b8
/* B3CD1C 800C5B7C 0C030E20 */  jal   THGA_Ct
/* B3CD20 800C5B80 3406BF00 */   li    $a2, 48896
/* B3CD24 800C5B84 3401BF08 */  li    $at, 48904
/* B3CD28 800C5B88 02212821 */  addu  $a1, $s1, $at
/* B3CD2C 800C5B8C AFA5002C */  sw    $a1, 0x2c($sp)
/* B3CD30 800C5B90 260402C8 */  addiu $a0, $s0, 0x2c8
/* B3CD34 800C5B94 0C030E20 */  jal   THGA_Ct
/* B3CD38 800C5B98 24064000 */   li    $a2, 16384
/* B3CD3C 800C5B9C 3401FF08 */  li    $at, 65288
/* B3CD40 800C5BA0 02212821 */  addu  $a1, $s1, $at
/* B3CD44 800C5BA4 AFA50028 */  sw    $a1, 0x28($sp)
/* B3CD48 800C5BA8 260402A8 */  addiu $a0, $s0, 0x2a8
/* B3CD4C 800C5BAC 0C030E20 */  jal   THGA_Ct
/* B3CD50 800C5BB0 24062000 */   li    $a2, 8192
/* B3CD54 800C5BB4 3C010001 */  lui   $at, (0x00011F08 >> 16) # lui $at, 1
/* B3CD58 800C5BB8 34211F08 */  ori   $at, (0x00011F08 & 0xFFFF) # ori $at, $at, 0x1f08
/* B3CD5C 800C5BBC 02212821 */  addu  $a1, $s1, $at
/* B3CD60 800C5BC0 AFA50024 */  sw    $a1, 0x24($sp)
/* B3CD64 800C5BC4 260401B4 */  addiu $a0, $s0, 0x1b4
/* B3CD68 800C5BC8 0C030E20 */  jal   THGA_Ct
/* B3CD6C 800C5BCC 24060400 */   li    $a2, 1024
/* B3CD70 800C5BD0 8FAA0030 */  lw    $t2, 0x30($sp)
/* B3CD74 800C5BD4 8FA50024 */  lw    $a1, 0x24($sp)
/* B3CD78 800C5BD8 8E0402E8 */  lw    $a0, 0x2e8($s0)
/* B3CD7C 800C5BDC AE0A0000 */  sw    $t2, ($s0)
/* B3CD80 800C5BE0 8FAB002C */  lw    $t3, 0x2c($sp)
/* B3CD84 800C5BE4 AE0B0004 */  sw    $t3, 4($s0)
/* B3CD88 800C5BE8 8FAC0028 */  lw    $t4, 0x28($sp)
/* B3CD8C 800C5BEC AE0501B0 */  sw    $a1, 0x1b0($s0)
/* B3CD90 800C5BF0 AE0C0010 */  sw    $t4, 0x10($s0)
/* B3CD94 800C5BF4 04810004 */  bgez  $a0, .L800C5C08
/* B3CD98 800C5BF8 30840001 */   andi  $a0, $a0, 1
/* B3CD9C 800C5BFC 10800002 */  beqz  $a0, .L800C5C08
/* B3CDA0 800C5C00 00000000 */   nop   
/* B3CDA4 800C5C04 2484FFFE */  addiu $a0, $a0, -2
.L800C5C08:
/* B3CDA8 800C5C08 0C032942 */  jal   SysCfb_GetFbPtr
/* B3CDAC 800C5C0C 00000000 */   nop   
/* B3CDB0 800C5C10 AE0202DC */  sw    $v0, 0x2dc($s0)
/* B3CDB4 800C5C14 AE000014 */  sw    $zero, 0x14($s0)
/* B3CDB8 800C5C18 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3CDBC 800C5C1C 8FB10018 */  lw    $s1, 0x18($sp)
/* B3CDC0 800C5C20 8FB00014 */  lw    $s0, 0x14($sp)
/* B3CDC4 800C5C24 03E00008 */  jr    $ra
/* B3CDC8 800C5C28 27BD0038 */   addiu $sp, $sp, 0x38

glabel func_800C5C2C
/* B3CDCC 800C5C2C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3CDD0 800C5C30 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3CDD4 800C5C34 0C03151B */  jal   func_800C546C
/* B3CDD8 800C5C38 00000000 */   nop   
/* B3CDDC 800C5C3C 3C0E800C */  lui   $t6, %hi(TitleSetup_Init) # $t6, 0x800c
/* B3CDE0 800C5C40 25CE4104 */  addiu $t6, %lo(TitleSetup_Init) # addiu $t6, $t6, 0x4104
/* B3CDE4 800C5C44 144E0004 */  bne   $v0, $t6, .L800C5C58
/* B3CDE8 800C5C48 00403025 */   move  $a2, $v0
/* B3CDEC 800C5C4C 3C028012 */  lui   $v0, %hi(D_8011F830) # $v0, 0x8012
/* B3CDF0 800C5C50 10000029 */  b     .L800C5CF8
/* B3CDF4 800C5C54 2442F830 */   addiu $v0, %lo(D_8011F830) # addiu $v0, $v0, -0x7d0
.L800C5C58:
/* B3CDF8 800C5C58 3C0F8080 */  lui   $t7, %hi(func_80801E44) # $t7, 0x8080
/* B3CDFC 800C5C5C 25EF1E44 */  addiu $t7, %lo(func_80801E44) # addiu $t7, $t7, 0x1e44
/* B3CE00 800C5C60 144F0004 */  bne   $v0, $t7, .L800C5C74
/* B3CE04 800C5C64 3C188080 */   lui   $t8, %hi(Title_Init) # $t8, 0x8080
/* B3CE08 800C5C68 3C028012 */  lui   $v0, %hi(D_8011F860) # $v0, 0x8012
/* B3CE0C 800C5C6C 10000022 */  b     .L800C5CF8
/* B3CE10 800C5C70 2442F860 */   addiu $v0, %lo(D_8011F860) # addiu $v0, $v0, -0x7a0
.L800C5C74:
/* B3CE14 800C5C74 27180878 */  addiu $t8, %lo(Title_Init) # addiu $t8, $t8, 0x878
/* B3CE18 800C5C78 14580004 */  bne   $v0, $t8, .L800C5C8C
/* B3CE1C 800C5C7C 3C19800C */   lui   $t9, %hi(func_800BCA64) # $t9, 0x800c
/* B3CE20 800C5C80 3C028012 */  lui   $v0, %hi(D_8011F890) # $v0, 0x8012
/* B3CE24 800C5C84 1000001C */  b     .L800C5CF8
/* B3CE28 800C5C88 2442F890 */   addiu $v0, %lo(D_8011F890) # addiu $v0, $v0, -0x770
.L800C5C8C:
/* B3CE2C 800C5C8C 2739CA64 */  addiu $t9, %lo(func_800BCA64) # addiu $t9, $t9, -0x359c
/* B3CE30 800C5C90 14590004 */  bne   $v0, $t9, .L800C5CA4
/* B3CE34 800C5C94 3C088080 */   lui   $t0, %hi(Opening_Init) # $t0, 0x8080
/* B3CE38 800C5C98 3C028012 */  lui   $v0, %hi(D_8011F8C0) # $v0, 0x8012
/* B3CE3C 800C5C9C 10000016 */  b     .L800C5CF8
/* B3CE40 800C5CA0 2442F8C0 */   addiu $v0, %lo(D_8011F8C0) # addiu $v0, $v0, -0x740
.L800C5CA4:
/* B3CE44 800C5CA4 25083CAC */  addiu $t0, %lo(Opening_Init) # addiu $t0, $t0, 0x3cac
/* B3CE48 800C5CA8 14480004 */  bne   $v0, $t0, .L800C5CBC
/* B3CE4C 800C5CAC 3C098081 */   lui   $t1, %hi(func_80811A20) # $t1, 0x8081
/* B3CE50 800C5CB0 3C028012 */  lui   $v0, %hi(D_8011F8F0) # $v0, 0x8012
/* B3CE54 800C5CB4 10000010 */  b     .L800C5CF8
/* B3CE58 800C5CB8 2442F8F0 */   addiu $v0, %lo(D_8011F8F0) # addiu $v0, $v0, -0x710
.L800C5CBC:
/* B3CE5C 800C5CBC 25291A20 */  addiu $t1, %lo(func_80811A20) # addiu $t1, $t1, 0x1a20
/* B3CE60 800C5CC0 14490004 */  bne   $v0, $t1, .L800C5CD4
/* B3CE64 800C5CC4 3C048014 */   lui   $a0, %hi(D_8014521C) # $a0, 0x8014
/* B3CE68 800C5CC8 3C028012 */  lui   $v0, %hi(D_8011F920) # $v0, 0x8012
/* B3CE6C 800C5CCC 1000000A */  b     .L800C5CF8
/* B3CE70 800C5CD0 2442F920 */   addiu $v0, %lo(D_8011F920) # addiu $v0, $v0, -0x6e0
.L800C5CD4:
/* B3CE74 800C5CD4 2484521C */  addiu $a0, %lo(D_8014521C) # addiu $a0, $a0, 0x521c
/* B3CE78 800C5CD8 240502B8 */  li    $a1, 696
/* B3CE7C 800C5CDC 0C000B84 */  jal   LogUtils_LogThreadId
/* B3CE80 800C5CE0 AFA6001C */   sw    $a2, 0x1c($sp)
/* B3CE84 800C5CE4 3C048014 */  lui   $a0, %hi(D_80145228) # $a0, 0x8014
/* B3CE88 800C5CE8 24845228 */  addiu $a0, %lo(D_80145228) # addiu $a0, $a0, 0x5228
/* B3CE8C 800C5CEC 0C00084C */  jal   osSyncPrintf
/* B3CE90 800C5CF0 8FA5001C */   lw    $a1, 0x1c($sp)
/* B3CE94 800C5CF4 00001025 */  move  $v0, $zero
.L800C5CF8:
/* B3CE98 800C5CF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3CE9C 800C5CFC 27BD0020 */  addiu $sp, $sp, 0x20
/* B3CEA0 800C5D00 03E00008 */  jr    $ra
/* B3CEA4 800C5D04 00000000 */   nop   

glabel func_800C5D08
/* B3CEA8 800C5D08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3CEAC 800C5D0C AFBF0014 */  sw    $ra, 0x14($sp)
/* B3CEB0 800C5D10 AFA40018 */  sw    $a0, 0x18($sp)
/* B3CEB4 800C5D14 0C001114 */  jal   bzero
/* B3CEB8 800C5D18 24050300 */   li    $a1, 768
/* B3CEBC 800C5D1C 8FA70018 */  lw    $a3, 0x18($sp)
/* B3CEC0 800C5D20 3C0E8001 */  lui   $t6, %hi(gViConfigFeatures) # $t6, 0x8001
/* B3CEC4 800C5D24 3C018001 */  lui   $at, %hi(gViConfigXScale)
/* B3CEC8 800C5D28 ACE002D8 */  sw    $zero, 0x2d8($a3)
/* B3CECC 800C5D2C ACE002E8 */  sw    $zero, 0x2e8($a3)
/* B3CED0 800C5D30 ACE00284 */  sw    $zero, 0x284($a3)
/* B3CED4 800C5D34 8DCE943C */  lw    $t6, %lo(gViConfigFeatures)($t6)
/* B3CED8 800C5D38 24060008 */  li    $a2, 8
/* B3CEDC 800C5D3C 24E4005C */  addiu $a0, $a3, 0x5c
/* B3CEE0 800C5D40 ACEE02E4 */  sw    $t6, 0x2e4($a3)
/* B3CEE4 800C5D44 C4249440 */  lwc1  $f4, %lo(gViConfigXScale)($at)
/* B3CEE8 800C5D48 3C018001 */  lui   $at, %hi(gViConfigYScale)
/* B3CEEC 800C5D4C 24E50038 */  addiu $a1, $a3, 0x38
/* B3CEF0 800C5D50 E4E402F4 */  swc1  $f4, 0x2f4($a3)
/* B3CEF4 800C5D54 C4269444 */  lwc1  $f6, %lo(gViConfigYScale)($at)
/* B3CEF8 800C5D58 0C001874 */  jal   osCreateMesgQueue
/* B3CEFC 800C5D5C E4E602F8 */   swc1  $f6, 0x2f8($a3)
/* B3CF00 800C5D60 0C034C7C */  jal   func_800D31F0
/* B3CF04 800C5D64 00000000 */   nop   
/* B3CF08 800C5D68 3C048016 */  lui   $a0, %hi(D_801665E0) # $a0, 0x8016
/* B3CF0C 800C5D6C 3C05800C */  lui   $a1, %hi(func_800C5850) # $a1, 0x800c
/* B3CF10 800C5D70 24A55850 */  addiu $a1, %lo(func_800C5850) # addiu $a1, $a1, 0x5850
/* B3CF14 800C5D74 248465E0 */  addiu $a0, %lo(D_801665E0) # addiu $a0, $a0, 0x65e0
/* B3CF18 800C5D78 00003025 */  move  $a2, $zero
/* B3CF1C 800C5D7C 0C035077 */  jal   Fault_AddClient
/* B3CF20 800C5D80 00003825 */   move  $a3, $zero
/* B3CF24 800C5D84 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3CF28 800C5D88 27BD0018 */  addiu $sp, $sp, 0x18
/* B3CF2C 800C5D8C 03E00008 */  jr    $ra
/* B3CF30 800C5D90 00000000 */   nop   

glabel func_800C5D94
/* B3CF34 800C5D94 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3CF38 800C5D98 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3CF3C 800C5D9C 0C034C84 */  jal   func_800D3210
/* B3CF40 800C5DA0 AFA40018 */   sw    $a0, 0x18($sp)
/* B3CF44 800C5DA4 3C048016 */  lui   $a0, %hi(D_801665E0) # $a0, 0x8016
/* B3CF48 800C5DA8 0C0350B0 */  jal   Fault_RemoveClient
/* B3CF4C 800C5DAC 248465E0 */   addiu $a0, %lo(D_801665E0) # addiu $a0, $a0, 0x65e0
/* B3CF50 800C5DB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3CF54 800C5DB4 27BD0018 */  addiu $sp, $sp, 0x18
/* B3CF58 800C5DB8 03E00008 */  jr    $ra
/* B3CF5C 800C5DBC 00000000 */   nop   

glabel func_800C5DC0
/* B3CF60 800C5DC0 27BDFF68 */  addiu $sp, $sp, -0x98
/* B3CF64 800C5DC4 AFBF002C */  sw    $ra, 0x2c($sp)
/* B3CF68 800C5DC8 AFB10028 */  sw    $s1, 0x28($sp)
/* B3CF6C 800C5DCC 00808825 */  move  $s1, $a0
/* B3CF70 800C5DD0 0C001A78 */  jal   osGetTime
/* B3CF74 800C5DD4 AFB00024 */   sw    $s0, 0x24($sp)
/* B3CF78 800C5DD8 3C0E8016 */  lui   $t6, %hi(D_801665D8) # $t6, 0x8016
/* B3CF7C 800C5DDC 3C0F8016 */  lui   $t7, %hi(D_801665DC) # $t7, 0x8016
/* B3CF80 800C5DE0 8DEF65DC */  lw    $t7, %lo(D_801665DC)($t7)
/* B3CF84 800C5DE4 8DCE65D8 */  lw    $t6, %lo(D_801665D8)($t6)
/* B3CF88 800C5DE8 3C108017 */  lui   $s0, %hi(D_8016A558) # $s0, 0x8017
/* B3CF8C 800C5DEC 2610A558 */  addiu $s0, %lo(D_8016A558) # addiu $s0, $s0, -0x5aa8
/* B3CF90 800C5DF0 8E080000 */  lw    $t0, ($s0)
/* B3CF94 800C5DF4 8E090004 */  lw    $t1, 4($s0)
/* B3CF98 800C5DF8 006F082B */  sltu  $at, $v1, $t7
/* B3CF9C 800C5DFC 004EC023 */  subu  $t8, $v0, $t6
/* B3CFA0 800C5E00 0301C023 */  subu  $t8, $t8, $at
/* B3CFA4 800C5E04 006FC823 */  subu  $t9, $v1, $t7
/* B3CFA8 800C5E08 3C0C8017 */  lui   $t4, %hi(D_8016A528) # $t4, 0x8017
/* B3CFAC 800C5E0C 03085023 */  subu  $t2, $t8, $t0
/* B3CFB0 800C5E10 0329082B */  sltu  $at, $t9, $t1
/* B3CFB4 800C5E14 01415023 */  subu  $t2, $t2, $at
/* B3CFB8 800C5E18 258CA528 */  addiu $t4, %lo(D_8016A528) # addiu $t4, $t4, -0x5ad8
/* B3CFBC 800C5E1C AD8A0000 */  sw    $t2, ($t4)
/* B3CFC0 800C5E20 03295823 */  subu  $t3, $t9, $t1
/* B3CFC4 800C5E24 AD8B0004 */  sw    $t3, 4($t4)
/* B3CFC8 800C5E28 240F0000 */  li    $t7, 0
/* B3CFCC 800C5E2C 240E0000 */  li    $t6, 0
/* B3CFD0 800C5E30 3C070861 */  lui   $a3, (0x0861C468 >> 16) # lui $a3, 0x861
/* B3CFD4 800C5E34 2625005C */  addiu $a1, $s1, 0x5c
/* B3CFD8 800C5E38 240D029A */  li    $t5, 666
/* B3CFDC 800C5E3C AFAD001C */  sw    $t5, 0x1c($sp)
/* B3CFE0 800C5E40 AFA50018 */  sw    $a1, 0x18($sp)
/* B3CFE4 800C5E44 AFA50038 */  sw    $a1, 0x38($sp)
/* B3CFE8 800C5E48 34E7C468 */  ori   $a3, (0x0861C468 & 0xFFFF) # ori $a3, $a3, 0xc468
/* B3CFEC 800C5E4C AFAE0010 */  sw    $t6, 0x10($sp)
/* B3CFF0 800C5E50 AFAF0014 */  sw    $t7, 0x14($sp)
/* B3CFF4 800C5E54 27A40070 */  addiu $a0, $sp, 0x70
/* B3CFF8 800C5E58 0C0418B8 */  jal   osSetTimer
/* B3CFFC 800C5E5C 24060000 */   li    $a2, 0
/* B3D000 800C5E60 8FA40038 */  lw    $a0, 0x38($sp)
/* B3D004 800C5E64 27A5006C */  addiu $a1, $sp, 0x6c
/* B3D008 800C5E68 0C000CA0 */  jal   osRecvMesg
/* B3D00C 800C5E6C 24060001 */   li    $a2, 1
/* B3D010 800C5E70 0C0408CC */  jal   osStopTimer
/* B3D014 800C5E74 27A40070 */   addiu $a0, $sp, 0x70
/* B3D018 800C5E78 8FB8006C */  lw    $t8, 0x6c($sp)
/* B3D01C 800C5E7C 2401029A */  li    $at, 666
/* B3D020 800C5E80 1701002C */  bne   $t8, $at, .L800C5F34
/* B3D024 800C5E84 3C048014 */   lui   $a0, %hi(D_80145240) # $a0, 0x8014
/* B3D028 800C5E88 0C00084C */  jal   osSyncPrintf
/* B3D02C 800C5E8C 24845240 */   addiu $a0, %lo(D_80145240) # addiu $a0, $a0, 0x5240
/* B3D030 800C5E90 3C048014 */  lui   $a0, %hi(D_80145248) # $a0, 0x8014
/* B3D034 800C5E94 0C00084C */  jal   osSyncPrintf
/* B3D038 800C5E98 24845248 */   addiu $a0, %lo(D_80145248) # addiu $a0, $a0, 0x5248
/* B3D03C 800C5E9C 3C048014 */  lui   $a0, %hi(D_80145264) # $a0, 0x8014
/* B3D040 800C5EA0 0C00084C */  jal   osSyncPrintf
/* B3D044 800C5EA4 24845264 */   addiu $a0, %lo(D_80145264) # addiu $a0, $a0, 0x5264
/* B3D048 800C5EA8 3C04A404 */  lui   $a0, 0xa404
/* B3D04C 800C5EAC 0C000AC4 */  jal   LogUtils_LogHexDump
/* B3D050 800C5EB0 24050020 */   li    $a1, 32
/* B3D054 800C5EB4 3C04A410 */  lui   $a0, 0xa410
/* B3D058 800C5EB8 0C000AC4 */  jal   LogUtils_LogHexDump
/* B3D05C 800C5EBC 24050020 */   li    $a1, 32
/* B3D060 800C5EC0 3C04801B */  lui   $a0, %hi(gGfxSPTaskYieldBuffer) # $a0, 0x801b
/* B3D064 800C5EC4 248431C0 */  addiu $a0, %lo(gGfxSPTaskYieldBuffer) # addiu $a0, $a0, 0x31c0
/* B3D068 800C5EC8 0C000AC4 */  jal   LogUtils_LogHexDump
/* B3D06C 800C5ECC 24050C00 */   li    $a1, 3072
/* B3D070 800C5ED0 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3D074 800C5ED4 3C048013 */  lui   $a0, %hi(D_8012D260) # $a0, 0x8013
/* B3D078 800C5ED8 8C84D260 */  lw    $a0, %lo(D_8012D260)($a0)
/* B3D07C 800C5EDC 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B3D080 800C5EE0 8C480000 */  lw    $t0, ($v0)
/* B3D084 800C5EE4 2419FFFF */  li    $t9, -1
/* B3D088 800C5EE8 1080000D */  beqz  $a0, .L800C5F20
/* B3D08C 800C5EEC A51900E0 */   sh    $t9, 0xe0($t0)
/* B3D090 800C5EF0 8C4A0000 */  lw    $t2, ($v0)
/* B3D094 800C5EF4 24090007 */  li    $t1, 7
/* B3D098 800C5EF8 240B0001 */  li    $t3, 1
/* B3D09C 800C5EFC A5491074 */  sh    $t1, 0x1074($t2)
/* B3D0A0 800C5F00 8C4C0000 */  lw    $t4, ($v0)
/* B3D0A4 800C5F04 240E0002 */  li    $t6, 2
/* B3D0A8 800C5F08 3C018013 */  lui   $at, %hi(D_8012D260) # $at, 0x8013
/* B3D0AC 800C5F0C A58B1076 */  sh    $t3, 0x1076($t4)
/* B3D0B0 800C5F10 8C4F0000 */  lw    $t7, ($v0)
/* B3D0B4 800C5F14 A5EE107A */  sh    $t6, 0x107a($t7)
/* B3D0B8 800C5F18 0C03162F */  jal   func_800C58BC
/* B3D0BC 800C5F1C AC24D260 */   sw    $a0, %lo(D_8012D260)($at)
.L800C5F20:
/* B3D0C0 800C5F20 3C048014 */  lui   $a0, %hi(D_80145268) # $a0, 0x8014
/* B3D0C4 800C5F24 3C058014 */  lui   $a1, %hi(D_8014527C) # $a1, 0x8014
/* B3D0C8 800C5F28 24A5527C */  addiu $a1, %lo(D_8014527C) # addiu $a1, $a1, 0x527c
/* B3D0CC 800C5F2C 0C0359AD */  jal   Fault_AddHungupAndCrashImpl
/* B3D0D0 800C5F30 24845268 */   addiu $a0, %lo(D_80145268) # addiu $a0, $a0, 0x5268
.L800C5F34:
/* B3D0D4 800C5F34 8FA40038 */  lw    $a0, 0x38($sp)
/* B3D0D8 800C5F38 27A5006C */  addiu $a1, $sp, 0x6c
/* B3D0DC 800C5F3C 0C000CA0 */  jal   osRecvMesg
/* B3D0E0 800C5F40 00003025 */   move  $a2, $zero
/* B3D0E4 800C5F44 8E2602EC */  lw    $a2, 0x2ec($s1)
/* B3D0E8 800C5F48 8E2401B0 */  lw    $a0, 0x1b0($s1)
/* B3D0EC 800C5F4C 3C018013 */  lui   $at, %hi(D_8012D260) # $at, 0x8013
/* B3D0F0 800C5F50 10C00004 */  beqz  $a2, .L800C5F64
/* B3D0F4 800C5F54 AC24D260 */   sw    $a0, %lo(D_8012D260)($at)
/* B3D0F8 800C5F58 02202025 */  move  $a0, $s1
/* B3D0FC 800C5F5C 00C0F809 */  jalr  $a2
/* B3D100 800C5F60 8E2502F0 */  lw    $a1, 0x2f0($s1)
.L800C5F64:
/* B3D104 800C5F64 0C001A78 */  jal   osGetTime
/* B3D108 800C5F68 00000000 */   nop   
/* B3D10C 800C5F6C 3C048017 */  lui   $a0, %hi(D_8016A550) # $a0, 0x8017
/* B3D110 800C5F70 2484A550 */  addiu $a0, %lo(D_8016A550) # addiu $a0, $a0, -0x5ab0
/* B3D114 800C5F74 8C980000 */  lw    $t8, ($a0)
/* B3D118 800C5F78 8C990004 */  lw    $t9, 4($a0)
/* B3D11C 800C5F7C 57000004 */  bnezl $t8, .L800C5F90
/* B3D120 800C5F80 8E080000 */   lw    $t0, ($s0)
/* B3D124 800C5F84 53200012 */  beql  $t9, $zero, .L800C5FD0
/* B3D128 800C5F88 8E180000 */   lw    $t8, ($s0)
/* B3D12C 800C5F8C 8E080000 */  lw    $t0, ($s0)
.L800C5F90:
/* B3D130 800C5F90 8E090004 */  lw    $t1, 4($s0)
/* B3D134 800C5F94 8C8C0000 */  lw    $t4, ($a0)
/* B3D138 800C5F98 8C8D0004 */  lw    $t5, 4($a0)
/* B3D13C 800C5F9C 01235821 */  addu  $t3, $t1, $v1
/* B3D140 800C5FA0 0163082B */  sltu  $at, $t3, $v1
/* B3D144 800C5FA4 00285021 */  addu  $t2, $at, $t0
/* B3D148 800C5FA8 01425021 */  addu  $t2, $t2, $v0
/* B3D14C 800C5FAC 014C7023 */  subu  $t6, $t2, $t4
/* B3D150 800C5FB0 016D082B */  sltu  $at, $t3, $t5
/* B3D154 800C5FB4 01C17023 */  subu  $t6, $t6, $at
/* B3D158 800C5FB8 AE0E0000 */  sw    $t6, ($s0)
/* B3D15C 800C5FBC 016D7823 */  subu  $t7, $t3, $t5
/* B3D160 800C5FC0 AE0F0004 */  sw    $t7, 4($s0)
/* B3D164 800C5FC4 AC820000 */  sw    $v0, ($a0)
/* B3D168 800C5FC8 AC830004 */  sw    $v1, 4($a0)
/* B3D16C 800C5FCC 8E180000 */  lw    $t8, ($s0)
.L800C5FD0:
/* B3D170 800C5FD0 8E190004 */  lw    $t9, 4($s0)
/* B3D174 800C5FD4 3C088017 */  lui   $t0, %hi(D_8016A520) # $t0, 0x8017
/* B3D178 800C5FD8 2508A520 */  addiu $t0, %lo(D_8016A520) # addiu $t0, $t0, -0x5ae0
/* B3D17C 800C5FDC AD180000 */  sw    $t8, ($t0)
/* B3D180 800C5FE0 240A0000 */  li    $t2, 0
/* B3D184 800C5FE4 AD190004 */  sw    $t9, 4($t0)
/* B3D188 800C5FE8 AE0A0000 */  sw    $t2, ($s0)
/* B3D18C 800C5FEC 240B0000 */  li    $t3, 0
/* B3D190 800C5FF0 0C001A78 */  jal   osGetTime
/* B3D194 800C5FF4 AE0B0004 */   sw    $t3, 4($s0)
/* B3D198 800C5FF8 3C018016 */  lui   $at, %hi(D_801665DC) # $at, 0x8016
/* B3D19C 800C5FFC AC2265D8 */  sw    $v0, %lo(D_801665D8)($at)
/* B3D1A0 800C6000 AC2365DC */  sw    $v1, %lo(D_801665DC)($at)
/* B3D1A4 800C6004 26300088 */  addiu $s0, $s1, 0x88
/* B3D1A8 800C6008 24090001 */  li    $t1, 1
/* B3D1AC 800C600C 240C0004 */  li    $t4, 4
/* B3D1B0 800C6010 AE090000 */  sw    $t1, ($s0)
/* B3D1B4 800C6014 0C034B7C */  jal   SysUcode_GetUCodeBoot
/* B3D1B8 800C6018 AE0C0004 */   sw    $t4, 4($s0)
/* B3D1BC 800C601C 0C034B7F */  jal   SysUcode_GetUcodeBootSize
/* B3D1C0 800C6020 AE020008 */   sw    $v0, 8($s0)
/* B3D1C4 800C6024 0C034B85 */  jal   SysUcode_GetUcode
/* B3D1C8 800C6028 AE02000C */   sw    $v0, 0xc($s0)
/* B3D1CC 800C602C 0C034B88 */  jal   SysUcode_GetUcodeData
/* B3D1D0 800C6030 AE020010 */   sw    $v0, 0x10($s0)
/* B3D1D4 800C6034 3C0F801B */  lui   $t7, %hi(gGfxSPTaskStack) # $t7, 0x801b
/* B3D1D8 800C6038 3C19801A */  lui   $t9, %hi(gGfxSPTaskOutputBuffer) # $t9, 0x801a
/* B3D1DC 800C603C 3C08801B */  lui   $t0, %hi(gGfxSPTaskYieldBuffer) # $t0, 0x801b
/* B3D1E0 800C6040 240D1000 */  li    $t5, 4096
/* B3D1E4 800C6044 240E0800 */  li    $t6, 2048
/* B3D1E8 800C6048 25EF3DC0 */  addiu $t7, %lo(gGfxSPTaskStack) # addiu $t7, $t7, 0x3dc0
/* B3D1EC 800C604C 24180400 */  li    $t8, 1024
/* B3D1F0 800C6050 2739B1C0 */  addiu $t9, %lo(gGfxSPTaskOutputBuffer) # addiu $t9, $t9, -0x4e40
/* B3D1F4 800C6054 250831C0 */  addiu $t0, %lo(gGfxSPTaskYieldBuffer) # addiu $t0, $t0, 0x31c0
/* B3D1F8 800C6058 AE020018 */  sw    $v0, 0x18($s0)
/* B3D1FC 800C605C AE0D0014 */  sw    $t5, 0x14($s0)
/* B3D200 800C6060 AE0E001C */  sw    $t6, 0x1c($s0)
/* B3D204 800C6064 AE0F0020 */  sw    $t7, 0x20($s0)
/* B3D208 800C6068 AE180024 */  sw    $t8, 0x24($s0)
/* B3D20C 800C606C AE190028 */  sw    $t9, 0x28($s0)
/* B3D210 800C6070 AE08002C */  sw    $t0, 0x2c($s0)
/* B3D214 800C6074 8E2A01B0 */  lw    $t2, 0x1b0($s1)
/* B3D218 800C6078 3C068014 */  lui   $a2, %hi(D_8014528C) # $a2, 0x8014
/* B3D21C 800C607C 24C6528C */  addiu $a2, %lo(D_8014528C) # addiu $a2, $a2, 0x528c
/* B3D220 800C6080 27A40048 */  addiu $a0, $sp, 0x48
/* B3D224 800C6084 02202825 */  move  $a1, $s1
/* B3D228 800C6088 2407033C */  li    $a3, 828
/* B3D22C 800C608C 0C031AB1 */  jal   func_800C6AC4
/* B3D230 800C6090 AE0A0030 */   sw    $t2, 0x30($s0)
/* B3D234 800C6094 8E2B01BC */  lw    $t3, 0x1bc($s1)
/* B3D238 800C6098 8E2901B0 */  lw    $t1, 0x1b0($s1)
/* B3D23C 800C609C 3C068014 */  lui   $a2, %hi(D_80145298) # $a2, 0x8014
/* B3D240 800C60A0 24C65298 */  addiu $a2, %lo(D_80145298) # addiu $a2, $a2, 0x5298
/* B3D244 800C60A4 01696023 */  subu  $t4, $t3, $t1
/* B3D248 800C60A8 AE0C0034 */  sw    $t4, 0x34($s0)
/* B3D24C 800C60AC 27A40048 */  addiu $a0, $sp, 0x48
/* B3D250 800C60B0 02202825 */  move  $a1, $s1
/* B3D254 800C60B4 0C031AD5 */  jal   func_800C6B54
/* B3D258 800C60B8 2407033E */   li    $a3, 830
/* B3D25C 800C60BC 3C0D801B */  lui   $t5, %hi(gGfxSPTaskYieldBuffer) # $t5, 0x801b
/* B3D260 800C60C0 25AD31C0 */  addiu $t5, %lo(gGfxSPTaskYieldBuffer) # addiu $t5, $t5, 0x31c0
/* B3D264 800C60C4 240E0C00 */  li    $t6, 3072
/* B3D268 800C60C8 AE0D0038 */  sw    $t5, 0x38($s0)
/* B3D26C 800C60CC AE0E003C */  sw    $t6, 0x3c($s0)
/* B3D270 800C60D0 26250078 */  addiu $a1, $s1, 0x78
/* B3D274 800C60D4 240F0063 */  li    $t7, 99
/* B3D278 800C60D8 ACA00000 */  sw    $zero, ($a1)
/* B3D27C 800C60DC ACAF0008 */  sw    $t7, 8($a1)
/* B3D280 800C60E0 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3D284 800C60E4 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3D288 800C60E8 3C0E8016 */  lui   $t6, %hi(D_801665F0) # $t6, 0x8016
/* B3D28C 800C60EC 25CE65F0 */  addiu $t6, %lo(D_801665F0) # addiu $t6, $t6, 0x65f0
/* B3D290 800C60F0 84430116 */  lh    $v1, 0x116($v0)
/* B3D294 800C60F4 30780001 */  andi  $t8, $v1, 1
/* B3D298 800C60F8 13000009 */  beqz  $t8, .L800C6120
/* B3D29C 800C60FC 3079FFFE */   andi  $t9, $v1, 0xfffe
/* B3D2A0 800C6100 A4590116 */  sh    $t9, 0x116($v0)
/* B3D2A4 800C6104 8CA80008 */  lw    $t0, 8($a1)
/* B3D2A8 800C6108 2401FFBF */  li    $at, -65
/* B3D2AC 800C610C 01015024 */  and   $t2, $t0, $at
/* B3D2B0 800C6110 ACAA0008 */  sw    $t2, 8($a1)
/* B3D2B4 800C6114 8E2B02E8 */  lw    $t3, 0x2e8($s1)
/* B3D2B8 800C6118 2569FFFF */  addiu $t1, $t3, -1
/* B3D2BC 800C611C AE2902E8 */  sw    $t1, 0x2e8($s1)
.L800C6120:
/* B3D2C0 800C6120 3C038013 */  lui   $v1, %hi(D_8012D264) # $v1, 0x8013
/* B3D2C4 800C6124 8C63D264 */  lw    $v1, %lo(D_8012D264)($v1)
/* B3D2C8 800C6128 24010003 */  li    $at, 3
/* B3D2CC 800C612C 8FAC0038 */  lw    $t4, 0x38($sp)
/* B3D2D0 800C6130 000368C0 */  sll   $t5, $v1, 3
/* B3D2D4 800C6134 01A36823 */  subu  $t5, $t5, $v1
/* B3D2D8 800C6138 24630001 */  addiu $v1, $v1, 1
/* B3D2DC 800C613C 0061001A */  div   $zero, $v1, $at
/* B3D2E0 800C6140 ACA00054 */  sw    $zero, 0x54($a1)
/* B3D2E4 800C6144 ACAC0050 */  sw    $t4, 0x50($a1)
/* B3D2E8 800C6148 8E2F02DC */  lw    $t7, 0x2dc($s1)
/* B3D2EC 800C614C 000D6880 */  sll   $t5, $t5, 2
/* B3D2F0 800C6150 01AE1021 */  addu  $v0, $t5, $t6
/* B3D2F4 800C6154 AC4F0000 */  sw    $t7, ($v0)
/* B3D2F8 800C6158 8E3802DC */  lw    $t8, 0x2dc($s1)
/* B3D2FC 800C615C 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* B3D300 800C6160 00001810 */  mfhi  $v1
/* B3D304 800C6164 AC580004 */  sw    $t8, 4($v0)
/* B3D308 800C6168 8E390284 */  lw    $t9, 0x284($s1)
/* B3D30C 800C616C 3C018013 */  lui   $at, %hi(D_8012D264) # $at, 0x8013
/* B3D310 800C6170 3C048016 */  lui   $a0, %hi(gSchedContext+0x38) # $a0, 0x8016
/* B3D314 800C6174 AC590008 */  sw    $t9, 8($v0)
/* B3D318 800C6178 8E2802E4 */  lw    $t0, 0x2e4($s1)
/* B3D31C 800C617C 248466A0 */  addiu $a0, %lo(gSchedContext+0x38) # addiu $a0, $a0, 0x66a0
/* B3D320 800C6180 24060001 */  li    $a2, 1
/* B3D324 800C6184 AC48000C */  sw    $t0, 0xc($v0)
/* B3D328 800C6188 C62402F4 */  lwc1  $f4, 0x2f4($s1)
/* B3D32C 800C618C E4440014 */  swc1  $f4, 0x14($v0)
/* B3D330 800C6190 C62602F8 */  lwc1  $f6, 0x2f8($s1)
/* B3D334 800C6194 A0400010 */  sb    $zero, 0x10($v0)
/* B3D338 800C6198 E4460018 */  swc1  $f6, 0x18($v0)
/* B3D33C 800C619C 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* B3D340 800C61A0 854B0110 */  lh    $t3, 0x110($t2)
/* B3D344 800C61A4 A04B0011 */  sb    $t3, 0x11($v0)
/* B3D348 800C61A8 ACA2000C */  sw    $v0, 0xc($a1)
/* B3D34C 800C61AC AC23D264 */  sw    $v1, %lo(D_8012D264)($at)
/* B3D350 800C61B0 0C000C18 */  jal   osSendMesg
/* B3D354 800C61B4 AE240058 */   sw    $a0, 0x58($s1)
/* B3D358 800C61B8 3C048016 */  lui   $a0, %hi(gSchedContext) # $a0, 0x8016
/* B3D35C 800C61BC 0C03257E */  jal   func_800C95F8
/* B3D360 800C61C0 24846668 */   addiu $a0, %lo(gSchedContext) # addiu $a0, $a0, 0x6668
/* B3D364 800C61C4 8FBF002C */  lw    $ra, 0x2c($sp)
/* B3D368 800C61C8 8FB00024 */  lw    $s0, 0x24($sp)
/* B3D36C 800C61CC 8FB10028 */  lw    $s1, 0x28($sp)
/* B3D370 800C61D0 03E00008 */  jr    $ra
/* B3D374 800C61D4 27BD0098 */   addiu $sp, $sp, 0x98

glabel func_800C61D8
/* B3D378 800C61D8 27BDFF38 */  addiu $sp, $sp, -0xc8
/* B3D37C 800C61DC AFBF001C */  sw    $ra, 0x1c($sp)
/* B3D380 800C61E0 AFB00018 */  sw    $s0, 0x18($sp)
/* B3D384 800C61E4 AFA500CC */  sw    $a1, 0xcc($sp)
/* B3D388 800C61E8 00808025 */  move  $s0, $a0
/* B3D38C 800C61EC 0C0316C5 */  jal   func_800C5B14
/* B3D390 800C61F0 ACA000A0 */   sw    $zero, 0xa0($a1)
/* B3D394 800C61F4 3C068014 */  lui   $a2, %hi(D_801452A4) # $a2, 0x8014
/* B3D398 800C61F8 24C652A4 */  addiu $a2, %lo(D_801452A4) # addiu $a2, $a2, 0x52a4
/* B3D39C 800C61FC 27A400B0 */  addiu $a0, $sp, 0xb0
/* B3D3A0 800C6200 02002825 */  move  $a1, $s0
/* B3D3A4 800C6204 0C031AB1 */  jal   func_800C6AC4
/* B3D3A8 800C6208 240703C6 */   li    $a3, 966
/* B3D3AC 800C620C 8E0201BC */  lw    $v0, 0x1bc($s0)
/* B3D3B0 800C6210 3C188014 */  lui   $t8, %hi(D_801452B0) # $t8, 0x8014
/* B3D3B4 800C6214 271852B0 */  addiu $t8, %lo(D_801452B0) # addiu $t8, $t8, 0x52b0
/* B3D3B8 800C6218 244F0008 */  addiu $t7, $v0, 8
/* B3D3BC 800C621C AE0F01BC */  sw    $t7, 0x1bc($s0)
/* B3D3C0 800C6220 3C080002 */  lui   $t0, 2
/* B3D3C4 800C6224 AC480000 */  sw    $t0, ($v0)
/* B3D3C8 800C6228 AC580004 */  sw    $t8, 4($v0)
/* B3D3CC 800C622C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B3D3D0 800C6230 3C098014 */  lui   $t1, %hi(D_801452C0) # $t1, 0x8014
/* B3D3D4 800C6234 252952C0 */  addiu $t1, %lo(D_801452C0) # addiu $t1, $t1, 0x52c0
/* B3D3D8 800C6238 24590008 */  addiu $t9, $v0, 8
/* B3D3DC 800C623C AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B3D3E0 800C6240 AC490004 */  sw    $t1, 4($v0)
/* B3D3E4 800C6244 AC480000 */  sw    $t0, ($v0)
/* B3D3E8 800C6248 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B3D3EC 800C624C 3C0B8014 */  lui   $t3, %hi(D_801452D4) # $t3, 0x8014
/* B3D3F0 800C6250 256B52D4 */  addiu $t3, %lo(D_801452D4) # addiu $t3, $t3, 0x52d4
/* B3D3F4 800C6254 244A0008 */  addiu $t2, $v0, 8
/* B3D3F8 800C6258 AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* B3D3FC 800C625C AC4B0004 */  sw    $t3, 4($v0)
/* B3D400 800C6260 AC480000 */  sw    $t0, ($v0)
/* B3D404 800C6264 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B3D408 800C6268 3C0D8014 */  lui   $t5, %hi(D_801452E8) # $t5, 0x8014
/* B3D40C 800C626C 25AD52E8 */  addiu $t5, %lo(D_801452E8) # addiu $t5, $t5, 0x52e8
/* B3D410 800C6270 244C0008 */  addiu $t4, $v0, 8
/* B3D414 800C6274 AE0C02B0 */  sw    $t4, 0x2b0($s0)
/* B3D418 800C6278 3C068014 */  lui   $a2, %hi(D_801452FC) # $a2, 0x8014
/* B3D41C 800C627C 24C652FC */  addiu $a2, %lo(D_801452FC) # addiu $a2, $a2, 0x52fc
/* B3D420 800C6280 27A400B0 */  addiu $a0, $sp, 0xb0
/* B3D424 800C6284 02002825 */  move  $a1, $s0
/* B3D428 800C6288 240703CF */  li    $a3, 975
/* B3D42C 800C628C AC4D0004 */  sw    $t5, 4($v0)
/* B3D430 800C6290 0C031AD5 */  jal   func_800C6B54
/* B3D434 800C6294 AC480000 */   sw    $t0, ($v0)
/* B3D438 800C6298 0C0312A6 */  jal   func_800C4A98
/* B3D43C 800C629C 8FA400CC */   lw    $a0, 0xcc($sp)
/* B3D440 800C62A0 0C0312B2 */  jal   func_800C4AC8
/* B3D444 800C62A4 8FA400CC */   lw    $a0, 0xcc($sp)
/* B3D448 800C62A8 3C068014 */  lui   $a2, %hi(D_80145308) # $a2, 0x8014
/* B3D44C 800C62AC 24C65308 */  addiu $a2, %lo(D_80145308) # addiu $a2, $a2, 0x5308
/* B3D450 800C62B0 27A4008C */  addiu $a0, $sp, 0x8c
/* B3D454 800C62B4 02002825 */  move  $a1, $s0
/* B3D458 800C62B8 0C031AB1 */  jal   func_800C6AC4
/* B3D45C 800C62BC 240703DB */   li    $a3, 987
/* B3D460 800C62C0 8E0201BC */  lw    $v0, 0x1bc($s0)
/* B3D464 800C62C4 3C0F8014 */  lui   $t7, %hi(D_80145314) # $t7, 0x8014
/* B3D468 800C62C8 3C080002 */  lui   $t0, 2
/* B3D46C 800C62CC 244E0008 */  addiu $t6, $v0, 8
/* B3D470 800C62D0 AE0E01BC */  sw    $t6, 0x1bc($s0)
/* B3D474 800C62D4 25EF5314 */  addiu $t7, %lo(D_80145314) # addiu $t7, $t7, 0x5314
/* B3D478 800C62D8 AC4F0004 */  sw    $t7, 4($v0)
/* B3D47C 800C62DC AC480000 */  sw    $t0, ($v0)
/* B3D480 800C62E0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B3D484 800C62E4 3C198014 */  lui   $t9, %hi(D_80145324) # $t9, 0x8014
/* B3D488 800C62E8 27395324 */  addiu $t9, %lo(D_80145324) # addiu $t9, $t9, 0x5324
/* B3D48C 800C62EC 24580008 */  addiu $t8, $v0, 8
/* B3D490 800C62F0 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B3D494 800C62F4 AC590004 */  sw    $t9, 4($v0)
/* B3D498 800C62F8 AC480000 */  sw    $t0, ($v0)
/* B3D49C 800C62FC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B3D4A0 800C6300 3C0A8014 */  lui   $t2, %hi(D_80145338) # $t2, 0x8014
/* B3D4A4 800C6304 254A5338 */  addiu $t2, %lo(D_80145338) # addiu $t2, $t2, 0x5338
/* B3D4A8 800C6308 24490008 */  addiu $t1, $v0, 8
/* B3D4AC 800C630C AE0902D0 */  sw    $t1, 0x2d0($s0)
/* B3D4B0 800C6310 AC4A0004 */  sw    $t2, 4($v0)
/* B3D4B4 800C6314 AC480000 */  sw    $t0, ($v0)
/* B3D4B8 800C6318 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B3D4BC 800C631C 3C0C8014 */  lui   $t4, %hi(D_8014534C) # $t4, 0x8014
/* B3D4C0 800C6320 258C534C */  addiu $t4, %lo(D_8014534C) # addiu $t4, $t4, 0x534c
/* B3D4C4 800C6324 244B0008 */  addiu $t3, $v0, 8
/* B3D4C8 800C6328 AE0B02B0 */  sw    $t3, 0x2b0($s0)
/* B3D4CC 800C632C 3C068014 */  lui   $a2, %hi(D_80145360) # $a2, 0x8014
/* B3D4D0 800C6330 24C65360 */  addiu $a2, %lo(D_80145360) # addiu $a2, $a2, 0x5360
/* B3D4D4 800C6334 27A4008C */  addiu $a0, $sp, 0x8c
/* B3D4D8 800C6338 02002825 */  move  $a1, $s0
/* B3D4DC 800C633C 240703E4 */  li    $a3, 996
/* B3D4E0 800C6340 AC4C0004 */  sw    $t4, 4($v0)
/* B3D4E4 800C6344 0C031AD5 */  jal   func_800C6B54
/* B3D4E8 800C6348 AC480000 */   sw    $t0, ($v0)
/* B3D4EC 800C634C 3C068014 */  lui   $a2, %hi(D_8014536C) # $a2, 0x8014
/* B3D4F0 800C6350 24C6536C */  addiu $a2, %lo(D_8014536C) # addiu $a2, $a2, 0x536c
/* B3D4F4 800C6354 27A40068 */  addiu $a0, $sp, 0x68
/* B3D4F8 800C6358 02002825 */  move  $a1, $s0
/* B3D4FC 800C635C 0C031AB1 */  jal   func_800C6AC4
/* B3D500 800C6360 240703E7 */   li    $a3, 999
/* B3D504 800C6364 8E0201BC */  lw    $v0, 0x1bc($s0)
/* B3D508 800C6368 3C04DE01 */  lui   $a0, 0xde01
/* B3D50C 800C636C 3C0BE700 */  lui   $t3, 0xe700
/* B3D510 800C6370 244D0008 */  addiu $t5, $v0, 8
/* B3D514 800C6374 AE0D01BC */  sw    $t5, 0x1bc($s0)
/* B3D518 800C6378 AC440000 */  sw    $a0, ($v0)
/* B3D51C 800C637C 8E0E0000 */  lw    $t6, ($s0)
/* B3D520 800C6380 3C0DE900 */  lui   $t5, 0xe900
/* B3D524 800C6384 3C068014 */  lui   $a2, %hi(D_80145378) # $a2, 0x8014
/* B3D528 800C6388 AC4E0004 */  sw    $t6, 4($v0)
/* B3D52C 800C638C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B3D530 800C6390 24C65378 */  addiu $a2, %lo(D_80145378) # addiu $a2, $a2, 0x5378
/* B3D534 800C6394 02002825 */  move  $a1, $s0
/* B3D538 800C6398 244F0008 */  addiu $t7, $v0, 8
/* B3D53C 800C639C AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B3D540 800C63A0 AC440000 */  sw    $a0, ($v0)
/* B3D544 800C63A4 8E180004 */  lw    $t8, 4($s0)
/* B3D548 800C63A8 3C0FDF00 */  lui   $t7, 0xdf00
/* B3D54C 800C63AC 24070404 */  li    $a3, 1028
/* B3D550 800C63B0 AC580004 */  sw    $t8, 4($v0)
/* B3D554 800C63B4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B3D558 800C63B8 24590008 */  addiu $t9, $v0, 8
/* B3D55C 800C63BC AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B3D560 800C63C0 AC440000 */  sw    $a0, ($v0)
/* B3D564 800C63C4 8E090010 */  lw    $t1, 0x10($s0)
/* B3D568 800C63C8 27A40068 */  addiu $a0, $sp, 0x68
/* B3D56C 800C63CC AC490004 */  sw    $t1, 4($v0)
/* B3D570 800C63D0 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B3D574 800C63D4 244A0008 */  addiu $t2, $v0, 8
/* B3D578 800C63D8 AE0A02B0 */  sw    $t2, 0x2b0($s0)
/* B3D57C 800C63DC AC400004 */  sw    $zero, 4($v0)
/* B3D580 800C63E0 AC4B0000 */  sw    $t3, ($v0)
/* B3D584 800C63E4 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B3D588 800C63E8 244C0008 */  addiu $t4, $v0, 8
/* B3D58C 800C63EC AE0C02B0 */  sw    $t4, 0x2b0($s0)
/* B3D590 800C63F0 AC400004 */  sw    $zero, 4($v0)
/* B3D594 800C63F4 AC4D0000 */  sw    $t5, ($v0)
/* B3D598 800C63F8 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B3D59C 800C63FC 244E0008 */  addiu $t6, $v0, 8
/* B3D5A0 800C6400 AE0E02B0 */  sw    $t6, 0x2b0($s0)
/* B3D5A4 800C6404 AC400004 */  sw    $zero, 4($v0)
/* B3D5A8 800C6408 0C031AD5 */  jal   func_800C6B54
/* B3D5AC 800C640C AC4F0000 */   sw    $t7, ($v0)
/* B3D5B0 800C6410 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B3D5B4 800C6414 2508FA90 */  addiu $t0, %lo(gGameInfo) # addiu $t0, $t0, -0x570
/* B3D5B8 800C6418 8D020000 */  lw    $v0, ($t0)
/* B3D5BC 800C641C 2401000A */  li    $at, 10
/* B3D5C0 800C6420 84431074 */  lh    $v1, 0x1074($v0)
/* B3D5C4 800C6424 54610010 */  bnel  $v1, $at, .L800C6468
/* B3D5C8 800C6428 24010007 */   li    $at, 7
/* B3D5CC 800C642C 8458108E */  lh    $t8, 0x108e($v0)
/* B3D5D0 800C6430 24010002 */  li    $at, 2
/* B3D5D4 800C6434 24190007 */  li    $t9, 7
/* B3D5D8 800C6438 5701000B */  bnel  $t8, $at, .L800C6468
/* B3D5DC 800C643C 24010007 */   li    $at, 7
/* B3D5E0 800C6440 A4591074 */  sh    $t9, 0x1074($v0)
/* B3D5E4 800C6444 8D0A0000 */  lw    $t2, ($t0)
/* B3D5E8 800C6448 2409FFFF */  li    $t1, -1
/* B3D5EC 800C644C A5491076 */  sh    $t1, 0x1076($t2)
/* B3D5F0 800C6450 8D020000 */  lw    $v0, ($t0)
/* B3D5F4 800C6454 844B108C */  lh    $t3, 0x108c($v0)
/* B3D5F8 800C6458 A44B107A */  sh    $t3, 0x107a($v0)
/* B3D5FC 800C645C 8D020000 */  lw    $v0, ($t0)
/* B3D600 800C6460 84431074 */  lh    $v1, 0x1074($v0)
/* B3D604 800C6464 24010007 */  li    $at, 7
.L800C6468:
/* B3D608 800C6468 5461002D */  bnel  $v1, $at, .L800C6520
/* B3D60C 800C646C AFA000C4 */   sw    $zero, 0xc4($sp)
/* B3D610 800C6470 844C1076 */  lh    $t4, 0x1076($v0)
/* B3D614 800C6474 5180002A */  beql  $t4, $zero, .L800C6520
/* B3D618 800C6478 AFA000C4 */   sw    $zero, 0xc4($sp)
/* B3D61C 800C647C 844D1078 */  lh    $t5, 0x1078($v0)
/* B3D620 800C6480 24010003 */  li    $at, 3
/* B3D624 800C6484 3C048016 */  lui   $a0, %hi(D_80166648) # $a0, 0x8016
/* B3D628 800C6488 15A10007 */  bne   $t5, $at, .L800C64A8
/* B3D62C 800C648C 24846648 */   addiu $a0, %lo(D_80166648) # addiu $a0, $a0, 0x6648
/* B3D630 800C6490 3C05800C */  lui   $a1, %hi(func_800C5AB0) # $a1, 0x800c
/* B3D634 800C6494 3C078014 */  lui   $a3, %hi(D_80145384) # $a3, 0x8014
/* B3D638 800C6498 24E75384 */  addiu $a3, %lo(D_80145384) # addiu $a3, $a3, 0x5384
/* B3D63C 800C649C 24A55AB0 */  addiu $a1, %lo(func_800C5AB0) # addiu $a1, $a1, 0x5ab0
/* B3D640 800C64A0 0C035077 */  jal   Fault_AddClient
/* B3D644 800C64A4 8E0601B0 */   lw    $a2, 0x1b0($s0)
.L800C64A8:
/* B3D648 800C64A8 0C03162F */  jal   func_800C58BC
/* B3D64C 800C64AC 8E0401B0 */   lw    $a0, 0x1b0($s0)
/* B3D650 800C64B0 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B3D654 800C64B4 2508FA90 */  addiu $t0, %lo(gGameInfo) # addiu $t0, $t0, -0x570
/* B3D658 800C64B8 8D020000 */  lw    $v0, ($t0)
/* B3D65C 800C64BC 24010003 */  li    $at, 3
/* B3D660 800C64C0 3C048016 */  lui   $a0, %hi(D_80166648) # $a0, 0x8016
/* B3D664 800C64C4 844E1078 */  lh    $t6, 0x1078($v0)
/* B3D668 800C64C8 55C10006 */  bnel  $t6, $at, .L800C64E4
/* B3D66C 800C64CC 84431076 */   lh    $v1, 0x1076($v0)
/* B3D670 800C64D0 0C0350B0 */  jal   Fault_RemoveClient
/* B3D674 800C64D4 24846648 */   addiu $a0, %lo(D_80166648) # addiu $a0, $a0, 0x6648
/* B3D678 800C64D8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3D67C 800C64DC 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3D680 800C64E0 84431076 */  lh    $v1, 0x1076($v0)
.L800C64E4:
/* B3D684 800C64E4 3C04A404 */  lui   $a0, 0xa404
/* B3D688 800C64E8 04610009 */  bgez  $v1, .L800C6510
/* B3D68C 800C64EC 00000000 */   nop   
/* B3D690 800C64F0 0C000AC4 */  jal   LogUtils_LogHexDump
/* B3D694 800C64F4 24050020 */   li    $a1, 32
/* B3D698 800C64F8 3C04A410 */  lui   $a0, 0xa410
/* B3D69C 800C64FC 0C000AC4 */  jal   LogUtils_LogHexDump
/* B3D6A0 800C6500 24050020 */   li    $a1, 32
/* B3D6A4 800C6504 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3D6A8 800C6508 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3D6AC 800C650C 84431076 */  lh    $v1, 0x1076($v0)
.L800C6510:
/* B3D6B0 800C6510 04630003 */  bgezl $v1, .L800C6520
/* B3D6B4 800C6514 AFA000C4 */   sw    $zero, 0xc4($sp)
/* B3D6B8 800C6518 A4401076 */  sh    $zero, 0x1076($v0)
/* B3D6BC 800C651C AFA000C4 */  sw    $zero, 0xc4($sp)
.L800C6520:
/* B3D6C0 800C6520 8E0F02D8 */  lw    $t7, 0x2d8($s0)
/* B3D6C4 800C6524 3C09801B */  lui   $t1, %hi(gGfxPools) # $t1, 0x801b
/* B3D6C8 800C6528 252941C0 */  addiu $t1, %lo(gGfxPools) # addiu $t1, $t1, 0x41c0
/* B3D6CC 800C652C 31F80001 */  andi  $t8, $t7, 1
/* B3D6D0 800C6530 0018C8C0 */  sll   $t9, $t8, 3
/* B3D6D4 800C6534 0338C821 */  addu  $t9, $t9, $t8
/* B3D6D8 800C6538 0019C8C0 */  sll   $t9, $t9, 3
/* B3D6DC 800C653C 0338C821 */  addu  $t9, $t9, $t8
/* B3D6E0 800C6540 0019C980 */  sll   $t9, $t9, 6
/* B3D6E4 800C6544 0338C821 */  addu  $t9, $t9, $t8
/* B3D6E8 800C6548 0019C900 */  sll   $t9, $t9, 4
/* B3D6EC 800C654C 03295021 */  addu  $t2, $t9, $t1
/* B3D6F0 800C6550 AFAA004C */  sw    $t2, 0x4c($sp)
/* B3D6F4 800C6554 954B0000 */  lhu   $t3, ($t2)
/* B3D6F8 800C6558 24011234 */  li    $at, 4660
/* B3D6FC 800C655C 1161000B */  beq   $t3, $at, .L800C658C
/* B3D700 800C6560 3C048014 */   lui   $a0, %hi(D_80145394) # $a0, 0x8014
/* B3D704 800C6564 24845394 */  addiu $a0, %lo(D_80145394) # addiu $a0, $a0, 0x5394
/* B3D708 800C6568 0C00084C */  jal   osSyncPrintf
/* B3D70C 800C656C 24050007 */   li    $a1, 7
/* B3D710 800C6570 3C048014 */  lui   $a0, %hi(D_80145398) # $a0, 0x8014
/* B3D714 800C6574 0C00084C */  jal   osSyncPrintf
/* B3D718 800C6578 24845398 */   addiu $a0, %lo(D_80145398) # addiu $a0, $a0, 0x5398
/* B3D71C 800C657C 3C048014 */  lui   $a0, %hi(D_801453CC) # $a0, 0x8014
/* B3D720 800C6580 248453CC */  addiu $a0, %lo(D_801453CC) # addiu $a0, $a0, 0x53cc
/* B3D724 800C6584 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* B3D728 800C6588 2405042E */   li    $a1, 1070
.L800C658C:
/* B3D72C 800C658C 8FAC004C */  lw    $t4, 0x4c($sp)
/* B3D730 800C6590 3C0D0001 */  lui   $t5, 1
/* B3D734 800C6594 24015678 */  li    $at, 22136
/* B3D738 800C6598 01AC6821 */  addu  $t5, $t5, $t4
/* B3D73C 800C659C 95AD2408 */  lhu   $t5, 0x2408($t5)
/* B3D740 800C65A0 11A1000D */  beq   $t5, $at, .L800C65D8
/* B3D744 800C65A4 240E0001 */   li    $t6, 1
/* B3D748 800C65A8 3C048014 */  lui   $a0, %hi(D_801453D8) # $a0, 0x8014
/* B3D74C 800C65AC AFAE00C4 */  sw    $t6, 0xc4($sp)
/* B3D750 800C65B0 248453D8 */  addiu $a0, %lo(D_801453D8) # addiu $a0, $a0, 0x53d8
/* B3D754 800C65B4 0C00084C */  jal   osSyncPrintf
/* B3D758 800C65B8 24050007 */   li    $a1, 7
/* B3D75C 800C65BC 3C048014 */  lui   $a0, %hi(D_801453DC) # $a0, 0x8014
/* B3D760 800C65C0 0C00084C */  jal   osSyncPrintf
/* B3D764 800C65C4 248453DC */   addiu $a0, %lo(D_801453DC) # addiu $a0, $a0, 0x53dc
/* B3D768 800C65C8 3C048014 */  lui   $a0, %hi(D_80145410) # $a0, 0x8014
/* B3D76C 800C65CC 24845410 */  addiu $a0, %lo(D_80145410) # addiu $a0, $a0, 0x5410
/* B3D770 800C65D0 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* B3D774 800C65D4 24050434 */   li    $a1, 1076
.L800C65D8:
/* B3D778 800C65D8 0C030E30 */  jal   THGA_IsCrash
/* B3D77C 800C65DC 260402B8 */   addiu $a0, $s0, 0x2b8
/* B3D780 800C65E0 10400009 */  beqz  $v0, .L800C6608
/* B3D784 800C65E4 240F0001 */   li    $t7, 1
/* B3D788 800C65E8 3C048014 */  lui   $a0, %hi(D_8014541C) # $a0, 0x8014
/* B3D78C 800C65EC AFAF00C4 */  sw    $t7, 0xc4($sp)
/* B3D790 800C65F0 2484541C */  addiu $a0, %lo(D_8014541C) # addiu $a0, $a0, 0x541c
/* B3D794 800C65F4 0C00084C */  jal   osSyncPrintf
/* B3D798 800C65F8 24050007 */   li    $a1, 7
/* B3D79C 800C65FC 3C048014 */  lui   $a0, %hi(D_80145420) # $a0, 0x8014
/* B3D7A0 800C6600 0C00084C */  jal   osSyncPrintf
/* B3D7A4 800C6604 24845420 */   addiu $a0, %lo(D_80145420) # addiu $a0, $a0, 0x5420
.L800C6608:
/* B3D7A8 800C6608 0C030E30 */  jal   THGA_IsCrash
/* B3D7AC 800C660C 260402C8 */   addiu $a0, $s0, 0x2c8
/* B3D7B0 800C6610 10400009 */  beqz  $v0, .L800C6638
/* B3D7B4 800C6614 24180001 */   li    $t8, 1
/* B3D7B8 800C6618 3C048014 */  lui   $a0, %hi(D_8014545C) # $a0, 0x8014
/* B3D7BC 800C661C AFB800C4 */  sw    $t8, 0xc4($sp)
/* B3D7C0 800C6620 2484545C */  addiu $a0, %lo(D_8014545C) # addiu $a0, $a0, 0x545c
/* B3D7C4 800C6624 0C00084C */  jal   osSyncPrintf
/* B3D7C8 800C6628 24050007 */   li    $a1, 7
/* B3D7CC 800C662C 3C048014 */  lui   $a0, %hi(D_80145460) # $a0, 0x8014
/* B3D7D0 800C6630 0C00084C */  jal   osSyncPrintf
/* B3D7D4 800C6634 24845460 */   addiu $a0, %lo(D_80145460) # addiu $a0, $a0, 0x5460
.L800C6638:
/* B3D7D8 800C6638 0C030E30 */  jal   THGA_IsCrash
/* B3D7DC 800C663C 260402A8 */   addiu $a0, $s0, 0x2a8
/* B3D7E0 800C6640 10400009 */  beqz  $v0, .L800C6668
/* B3D7E4 800C6644 24190001 */   li    $t9, 1
/* B3D7E8 800C6648 3C048014 */  lui   $a0, %hi(D_8014549C) # $a0, 0x8014
/* B3D7EC 800C664C AFB900C4 */  sw    $t9, 0xc4($sp)
/* B3D7F0 800C6650 2484549C */  addiu $a0, %lo(D_8014549C) # addiu $a0, $a0, 0x549c
/* B3D7F4 800C6654 0C00084C */  jal   osSyncPrintf
/* B3D7F8 800C6658 24050007 */   li    $a1, 7
/* B3D7FC 800C665C 3C048014 */  lui   $a0, %hi(D_801454A0) # $a0, 0x8014
/* B3D800 800C6660 0C00084C */  jal   osSyncPrintf
/* B3D804 800C6664 248454A0 */   addiu $a0, %lo(D_801454A0) # addiu $a0, $a0, 0x54a0
.L800C6668:
/* B3D808 800C6668 8FA900C4 */  lw    $t1, 0xc4($sp)
/* B3D80C 800C666C 15200009 */  bnez  $t1, .L800C6694
/* B3D810 800C6670 00000000 */   nop   
/* B3D814 800C6674 0C031770 */  jal   func_800C5DC0
/* B3D818 800C6678 02002025 */   move  $a0, $s0
/* B3D81C 800C667C 8E0A02D8 */  lw    $t2, 0x2d8($s0)
/* B3D820 800C6680 8E0C02E8 */  lw    $t4, 0x2e8($s0)
/* B3D824 800C6684 254B0001 */  addiu $t3, $t2, 1
/* B3D828 800C6688 258D0001 */  addiu $t5, $t4, 1
/* B3D82C 800C668C AE0B02D8 */  sw    $t3, 0x2d8($s0)
/* B3D830 800C6690 AE0D02E8 */  sw    $t5, 0x2e8($s0)
.L800C6694:
/* B3D834 800C6694 0C03CC15 */  jal   func_800F3054
/* B3D838 800C6698 00000000 */   nop   
/* B3D83C 800C669C 0C001A78 */  jal   osGetTime
/* B3D840 800C66A0 00000000 */   nop   
/* B3D844 800C66A4 3C048017 */  lui   $a0, %hi(D_8016A568) # $a0, 0x8017
/* B3D848 800C66A8 2484A568 */  addiu $a0, %lo(D_8016A568) # addiu $a0, $a0, -0x5a98
/* B3D84C 800C66AC 8C8E0000 */  lw    $t6, ($a0)
/* B3D850 800C66B0 8C8F0004 */  lw    $t7, 4($a0)
/* B3D854 800C66B4 3C188017 */  lui   $t8, %hi(D_8016A538) # $t8, 0x8017
/* B3D858 800C66B8 2718A538 */  addiu $t8, %lo(D_8016A538) # addiu $t8, $t8, -0x5ac8
/* B3D85C 800C66BC 3C058017 */  lui   $a1, %hi(D_8016A560) # $a1, 0x8017
/* B3D860 800C66C0 AF0E0000 */  sw    $t6, ($t8)
/* B3D864 800C66C4 24A5A560 */  addiu $a1, %lo(D_8016A560) # addiu $a1, $a1, -0x5aa0
/* B3D868 800C66C8 AF0F0004 */  sw    $t7, 4($t8)
/* B3D86C 800C66CC 8CAA0000 */  lw    $t2, ($a1)
/* B3D870 800C66D0 8CAB0004 */  lw    $t3, 4($a1)
/* B3D874 800C66D4 3C198017 */  lui   $t9, %hi(D_8016A530) # $t9, 0x8017
/* B3D878 800C66D8 2739A530 */  addiu $t9, %lo(D_8016A530) # addiu $t9, $t9, -0x5ad0
/* B3D87C 800C66DC 3C068017 */  lui   $a2, %hi(D_8016A580) # $a2, 0x8017
/* B3D880 800C66E0 AF2A0000 */  sw    $t2, ($t9)
/* B3D884 800C66E4 24C6A580 */  addiu $a2, %lo(D_8016A580) # addiu $a2, $a2, -0x5a80
/* B3D888 800C66E8 AF2B0004 */  sw    $t3, 4($t9)
/* B3D88C 800C66EC 8CCC0000 */  lw    $t4, ($a2)
/* B3D890 800C66F0 8CCD0004 */  lw    $t5, 4($a2)
/* B3D894 800C66F4 3C098017 */  lui   $t1, %hi(D_8016A540) # $t1, 0x8017
/* B3D898 800C66F8 2529A540 */  addiu $t1, %lo(D_8016A540) # addiu $t1, $t1, -0x5ac0
/* B3D89C 800C66FC AD2C0000 */  sw    $t4, ($t1)
/* B3D8A0 800C6700 AD2D0004 */  sw    $t5, 4($t1)
/* B3D8A4 800C6704 240E0000 */  li    $t6, 0
/* B3D8A8 800C6708 AC8E0000 */  sw    $t6, ($a0)
/* B3D8AC 800C670C 240F0000 */  li    $t7, 0
/* B3D8B0 800C6710 AC8F0004 */  sw    $t7, 4($a0)
/* B3D8B4 800C6714 24180000 */  li    $t8, 0
/* B3D8B8 800C6718 ACB80000 */  sw    $t8, ($a1)
/* B3D8BC 800C671C 24190000 */  li    $t9, 0
/* B3D8C0 800C6720 ACB90004 */  sw    $t9, 4($a1)
/* B3D8C4 800C6724 240A0000 */  li    $t2, 0
/* B3D8C8 800C6728 ACCA0000 */  sw    $t2, ($a2)
/* B3D8CC 800C672C 240B0000 */  li    $t3, 0
/* B3D8D0 800C6730 ACCB0004 */  sw    $t3, 4($a2)
/* B3D8D4 800C6734 3C0C8016 */  lui   $t4, %hi(D_801665D0) # $t4, 0x8016
/* B3D8D8 800C6738 8D8C65D0 */  lw    $t4, %lo(D_801665D0)($t4)
/* B3D8DC 800C673C 3C0D8016 */  lui   $t5, %hi(D_801665D4) # $t5, 0x8016
/* B3D8E0 800C6740 8DAD65D4 */  lw    $t5, %lo(D_801665D4)($t5)
/* B3D8E4 800C6744 AFAC0020 */  sw    $t4, 0x20($sp)
/* B3D8E8 800C6748 15800002 */  bnez  $t4, .L800C6754
/* B3D8EC 800C674C AFAD0024 */   sw    $t5, 0x24($sp)
/* B3D8F0 800C6750 11A00008 */  beqz  $t5, .L800C6774
.L800C6754:
/* B3D8F4 800C6754 006D082B */   sltu  $at, $v1, $t5
/* B3D8F8 800C6758 004C7023 */  subu  $t6, $v0, $t4
/* B3D8FC 800C675C 3C098017 */  lui   $t1, %hi(D_8016A548) # $t1, 0x8017
/* B3D900 800C6760 2529A548 */  addiu $t1, %lo(D_8016A548) # addiu $t1, $t1, -0x5ab8
/* B3D904 800C6764 01C17023 */  subu  $t6, $t6, $at
/* B3D908 800C6768 AD2E0000 */  sw    $t6, ($t1)
/* B3D90C 800C676C 006D7823 */  subu  $t7, $v1, $t5
/* B3D910 800C6770 AD2F0004 */  sw    $t7, 4($t1)
.L800C6774:
/* B3D914 800C6774 3C048013 */  lui   $a0, %hi(D_8012DBC0) # $a0, 0x8013
/* B3D918 800C6778 8C84DBC0 */  lw    $a0, %lo(D_8012DBC0)($a0)
/* B3D91C 800C677C 3C018016 */  lui   $at, %hi(D_801665D4) # $at, 0x8016
/* B3D920 800C6780 AC2265D0 */  sw    $v0, %lo(D_801665D0)($at)
/* B3D924 800C6784 10800015 */  beqz  $a0, .L800C67DC
/* B3D928 800C6788 AC2365D4 */   sw    $v1, %lo(D_801665D4)($at)
/* B3D92C 800C678C 8FA200CC */  lw    $v0, 0xcc($sp)
/* B3D930 800C6790 2401DFFF */  li    $at, -8193
/* B3D934 800C6794 94580020 */  lhu   $t8, 0x20($v0)
/* B3D938 800C6798 0301C827 */  nor   $t9, $t8, $at
/* B3D93C 800C679C 1720000F */  bnez  $t9, .L800C67DC
/* B3D940 800C67A0 00000000 */   nop   
/* B3D944 800C67A4 944A0014 */  lhu   $t2, 0x14($v0)
/* B3D948 800C67A8 2401FFCF */  li    $at, -49
/* B3D94C 800C67AC 3C0C8080 */  lui   $t4, %hi(func_80801E44) # $t4, 0x8080
/* B3D950 800C67B0 01415827 */  nor   $t3, $t2, $at
/* B3D954 800C67B4 15600009 */  bnez  $t3, .L800C67DC
/* B3D958 800C67B8 3C018016 */   lui   $at, %hi(gSaveContext+0x135c) # $at, 0x8016
/* B3D95C 800C67BC AC20F9BC */  sw    $zero, %lo(gSaveContext+0x135c)($at)
/* B3D960 800C67C0 258C1E44 */  addiu $t4, %lo(func_80801E44) # addiu $t4, $t4, 0x1e44
/* B3D964 800C67C4 240D0240 */  li    $t5, 576
/* B3D968 800C67C8 AC4D0010 */  sw    $t5, 0x10($v0)
/* B3D96C 800C67CC AC4C000C */  sw    $t4, 0xc($v0)
/* B3D970 800C67D0 AC400098 */  sw    $zero, 0x98($v0)
/* B3D974 800C67D4 3C048013 */  lui   $a0, %hi(D_8012DBC0) # $a0, 0x8013
/* B3D978 800C67D8 8C84DBC0 */  lw    $a0, %lo(D_8012DBC0)($a0)
.L800C67DC:
/* B3D97C 800C67DC 10800014 */  beqz  $a0, .L800C6830
/* B3D980 800C67E0 3C048016 */   lui   $a0, %hi(gAppNmiBufferPtr) # $a0, 0x8016
/* B3D984 800C67E4 0C01EFC2 */  jal   PreNmiBuff_IsResetting
/* B3D988 800C67E8 8C846660 */   lw    $a0, %lo(gAppNmiBufferPtr)($a0)
/* B3D98C 800C67EC 10400010 */  beqz  $v0, .L800C6830
/* B3D990 800C67F0 8FAE00CC */   lw    $t6, 0xcc($sp)
/* B3D994 800C67F4 8DCF00A0 */  lw    $t7, 0xa0($t6)
/* B3D998 800C67F8 3C048014 */  lui   $a0, %hi(D_801454DC) # $a0, 0x8014
/* B3D99C 800C67FC 55E0000D */  bnezl $t7, .L800C6834
/* B3D9A0 800C6800 8FBF001C */   lw    $ra, 0x1c($sp)
/* B3D9A4 800C6804 0C00084C */  jal   osSyncPrintf
/* B3D9A8 800C6808 248454DC */   addiu $a0, %lo(D_801454DC) # addiu $a0, $a0, 0x54dc
/* B3D9AC 800C680C 8FB800CC */  lw    $t8, 0xcc($sp)
/* B3D9B0 800C6810 3C098009 */  lui   $t1, %hi(PreNMI_Init) # $t1, 0x8009
/* B3D9B4 800C6814 252924B8 */  addiu $t1, %lo(PreNMI_Init) # addiu $t1, $t1, 0x24b8
/* B3D9B8 800C6818 AF09000C */  sw    $t1, 0xc($t8)
/* B3D9BC 800C681C 8FAA00CC */  lw    $t2, 0xcc($sp)
/* B3D9C0 800C6820 241900AC */  li    $t9, 172
/* B3D9C4 800C6824 AD590010 */  sw    $t9, 0x10($t2)
/* B3D9C8 800C6828 8FAB00CC */  lw    $t3, 0xcc($sp)
/* B3D9CC 800C682C AD600098 */  sw    $zero, 0x98($t3)
.L800C6830:
/* B3D9D0 800C6830 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C6834:
/* B3D9D4 800C6834 8FB00018 */  lw    $s0, 0x18($sp)
/* B3D9D8 800C6838 27BD00C8 */  addiu $sp, $sp, 0xc8
/* B3D9DC 800C683C 03E00008 */  jr    $ra
/* B3D9E0 800C6840 00000000 */   nop   

glabel Graph_ThreadEntry
/* B3D9E4 800C6844 27BDFC60 */  addiu $sp, $sp, -0x3a0
/* B3D9E8 800C6848 AFB00018 */  sw    $s0, 0x18($sp)
/* B3D9EC 800C684C 3C108012 */  lui   $s0, %hi(D_8011F830) # $s0, 0x8012
/* B3D9F0 800C6850 AFA403A0 */  sw    $a0, 0x3a0($sp)
/* B3D9F4 800C6854 2610F830 */  addiu $s0, %lo(D_8011F830) # addiu $s0, $s0, -0x7d0
/* B3D9F8 800C6858 AFBF003C */  sw    $ra, 0x3c($sp)
/* B3D9FC 800C685C AFB30024 */  sw    $s3, 0x24($sp)
/* B3DA00 800C6860 3C048014 */  lui   $a0, %hi(D_80145510) # $a0, 0x8014
/* B3DA04 800C6864 AFBE0038 */  sw    $fp, 0x38($sp)
/* B3DA08 800C6868 AFB70034 */  sw    $s7, 0x34($sp)
/* B3DA0C 800C686C AFB60030 */  sw    $s6, 0x30($sp)
/* B3DA10 800C6870 AFB5002C */  sw    $s5, 0x2c($sp)
/* B3DA14 800C6874 AFB40028 */  sw    $s4, 0x28($sp)
/* B3DA18 800C6878 AFB20020 */  sw    $s2, 0x20($sp)
/* B3DA1C 800C687C AFB1001C */  sw    $s1, 0x1c($sp)
/* B3DA20 800C6880 02009825 */  move  $s3, $s0
/* B3DA24 800C6884 0C00084C */  jal   osSyncPrintf
/* B3DA28 800C6888 24845510 */   addiu $a0, %lo(D_80145510) # addiu $a0, $a0, 0x5510
/* B3DA2C 800C688C 27B200A0 */  addiu $s2, $sp, 0xa0
/* B3DA30 800C6890 0C031742 */  jal   func_800C5D08
/* B3DA34 800C6894 02402025 */   move  $a0, $s2
/* B3DA38 800C6898 1200003B */  beqz  $s0, .L800C6988
/* B3DA3C 800C689C 3C178014 */   lui   $s7, %hi(D_80145548) # $s7, 0x8014
/* B3DA40 800C68A0 3C1E8014 */  lui   $fp, %hi(D_80145554) # $fp, 0x8014
/* B3DA44 800C68A4 3C168014 */  lui   $s6, %hi(D_80145530) # $s6, 0x8014
/* B3DA48 800C68A8 26D65530 */  addiu $s6, %lo(D_80145530) # addiu $s6, $s6, 0x5530
/* B3DA4C 800C68AC 27DE5554 */  addiu $fp, %lo(D_80145554) # addiu $fp, $fp, 0x5554
/* B3DA50 800C68B0 26F75548 */  addiu $s7, %lo(D_80145548) # addiu $s7, $s7, 0x5548
/* B3DA54 800C68B4 27B50040 */  addiu $s5, $sp, 0x40
/* B3DA58 800C68B8 0260A025 */  move  $s4, $s3
.L800C68BC:
/* B3DA5C 800C68BC 0C00ABC0 */  jal   Overlay_LoadGameState
/* B3DA60 800C68C0 02602025 */   move  $a0, $s3
/* B3DA64 800C68C4 8E71002C */  lw    $s1, 0x2c($s3)
/* B3DA68 800C68C8 02C02025 */  move  $a0, $s6
/* B3DA6C 800C68CC 0C00084C */  jal   osSyncPrintf
/* B3DA70 800C68D0 02202825 */   move  $a1, $s1
/* B3DA74 800C68D4 02202025 */  move  $a0, $s1
/* B3DA78 800C68D8 02E02825 */  move  $a1, $s7
/* B3DA7C 800C68DC 0C03F570 */  jal   SystemArena_MallocDebug
/* B3DA80 800C68E0 240604AC */   li    $a2, 1196
/* B3DA84 800C68E4 1440000C */  bnez  $v0, .L800C6918
/* B3DA88 800C68E8 00408025 */   move  $s0, $v0
/* B3DA8C 800C68EC 0C00084C */  jal   osSyncPrintf
/* B3DA90 800C68F0 03C02025 */   move  $a0, $fp
/* B3DA94 800C68F4 3C058014 */  lui   $a1, %hi(D_80145560) # $a1, 0x8014
/* B3DA98 800C68F8 24A55560 */  addiu $a1, %lo(D_80145560) # addiu $a1, $a1, 0x5560
/* B3DA9C 800C68FC 02A02025 */  move  $a0, $s5
/* B3DAA0 800C6900 0C000BD1 */  jal   sprintf
/* B3DAA4 800C6904 02203025 */   move  $a2, $s1
/* B3DAA8 800C6908 3C048014 */  lui   $a0, %hi(D_80145578) # $a0, 0x8014
/* B3DAAC 800C690C 24845578 */  addiu $a0, %lo(D_80145578) # addiu $a0, $a0, 0x5578
/* B3DAB0 800C6910 0C0359AD */  jal   Fault_AddHungupAndCrashImpl
/* B3DAB4 800C6914 02A02825 */   move  $a1, $s5
.L800C6918:
/* B3DAB8 800C6918 02002025 */  move  $a0, $s0
/* B3DABC 800C691C 8E650018 */  lw    $a1, 0x18($s3)
/* B3DAC0 800C6920 0C031420 */  jal   func_800C5080
/* B3DAC4 800C6924 02403025 */   move  $a2, $s2
/* B3DAC8 800C6928 0C03151F */  jal   func_800C547C
/* B3DACC 800C692C 02002025 */   move  $a0, $s0
/* B3DAD0 800C6930 10400007 */  beqz  $v0, .L800C6950
/* B3DAD4 800C6934 02402025 */   move  $a0, $s2
.L800C6938:
/* B3DAD8 800C6938 0C031876 */  jal   func_800C61D8
/* B3DADC 800C693C 02002825 */   move  $a1, $s0
/* B3DAE0 800C6940 0C03151F */  jal   func_800C547C
/* B3DAE4 800C6944 02002025 */   move  $a0, $s0
/* B3DAE8 800C6948 5440FFFB */  bnezl $v0, .L800C6938
/* B3DAEC 800C694C 02402025 */   move  $a0, $s2
.L800C6950:
/* B3DAF0 800C6950 0C03170B */  jal   func_800C5C2C
/* B3DAF4 800C6954 02002025 */   move  $a0, $s0
/* B3DAF8 800C6958 00409825 */  move  $s3, $v0
/* B3DAFC 800C695C 0C0314D8 */  jal   func_800C5360
/* B3DB00 800C6960 02002025 */   move  $a0, $s0
/* B3DB04 800C6964 3C058014 */  lui   $a1, %hi(D_80145594) # $a1, 0x8014
/* B3DB08 800C6968 24A55594 */  addiu $a1, %lo(D_80145594) # addiu $a1, $a1, 0x5594
/* B3DB0C 800C696C 02002025 */  move  $a0, $s0
/* B3DB10 800C6970 0C03F5ED */  jal   SystemArena_FreeDebug
/* B3DB14 800C6974 240604CB */   li    $a2, 1227
/* B3DB18 800C6978 0C00AC2A */  jal   Overlay_FreeGameState
/* B3DB1C 800C697C 02802025 */   move  $a0, $s4
/* B3DB20 800C6980 5660FFCE */  bnezl $s3, .L800C68BC
/* B3DB24 800C6984 0260A025 */   move  $s4, $s3
.L800C6988:
/* B3DB28 800C6988 0C031765 */  jal   func_800C5D94
/* B3DB2C 800C698C 02402025 */   move  $a0, $s2
/* B3DB30 800C6990 3C048014 */  lui   $a0, %hi(D_801455A0) # $a0, 0x8014
/* B3DB34 800C6994 0C00084C */  jal   osSyncPrintf
/* B3DB38 800C6998 248455A0 */   addiu $a0, %lo(D_801455A0) # addiu $a0, $a0, 0x55a0
/* B3DB3C 800C699C 8FBF003C */  lw    $ra, 0x3c($sp)
/* B3DB40 800C69A0 8FB00018 */  lw    $s0, 0x18($sp)
/* B3DB44 800C69A4 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3DB48 800C69A8 8FB20020 */  lw    $s2, 0x20($sp)
/* B3DB4C 800C69AC 8FB30024 */  lw    $s3, 0x24($sp)
/* B3DB50 800C69B0 8FB40028 */  lw    $s4, 0x28($sp)
/* B3DB54 800C69B4 8FB5002C */  lw    $s5, 0x2c($sp)
/* B3DB58 800C69B8 8FB60030 */  lw    $s6, 0x30($sp)
/* B3DB5C 800C69BC 8FB70034 */  lw    $s7, 0x34($sp)
/* B3DB60 800C69C0 8FBE0038 */  lw    $fp, 0x38($sp)
/* B3DB64 800C69C4 03E00008 */  jr    $ra
/* B3DB68 800C69C8 27BD03A0 */   addiu $sp, $sp, 0x3a0

glabel Graph_Alloc
/* B3DB6C 800C69CC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3DB70 800C69D0 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B3DB74 800C69D4 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B3DB78 800C69D8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3DB7C 800C69DC AFA40020 */  sw    $a0, 0x20($sp)
/* B3DB80 800C69E0 AFA50024 */  sw    $a1, 0x24($sp)
/* B3DB84 800C69E4 85CF104A */  lh    $t7, 0x104a($t6)
/* B3DB88 800C69E8 8FA20020 */  lw    $v0, 0x20($sp)
/* B3DB8C 800C69EC 24010001 */  li    $at, 1
/* B3DB90 800C69F0 15E1000A */  bne   $t7, $at, .L800C6A1C
/* B3DB94 800C69F4 244202B8 */   addiu $v0, $v0, 0x2b8
/* B3DB98 800C69F8 8C580008 */  lw    $t8, 8($v0)
/* B3DB9C 800C69FC 8C460000 */  lw    $a2, ($v0)
/* B3DBA0 800C6A00 8C470004 */  lw    $a3, 4($v0)
/* B3DBA4 800C6A04 AFB80010 */  sw    $t8, 0x10($sp)
/* B3DBA8 800C6A08 8C59000C */  lw    $t9, 0xc($v0)
/* B3DBAC 800C6A0C 3C048014 */  lui   $a0, %hi(D_801455C0) # $a0, 0x8014
/* B3DBB0 800C6A10 248455C0 */  addiu $a0, %lo(D_801455C0) # addiu $a0, $a0, 0x55c0
/* B3DBB4 800C6A14 0C00084C */  jal   osSyncPrintf
/* B3DBB8 800C6A18 AFB90014 */   sw    $t9, 0x14($sp)
.L800C6A1C:
/* B3DBBC 800C6A1C 8FA50024 */  lw    $a1, 0x24($sp)
/* B3DBC0 800C6A20 8FA40020 */  lw    $a0, 0x20($sp)
/* B3DBC4 800C6A24 2401FFF0 */  li    $at, -16
/* B3DBC8 800C6A28 24A5000F */  addiu $a1, $a1, 0xf
/* B3DBCC 800C6A2C 00A12824 */  and   $a1, $a1, $at
/* B3DBD0 800C6A30 0C030E78 */  jal   THGA_AllocEnd
/* B3DBD4 800C6A34 248402B8 */   addiu $a0, $a0, 0x2b8
/* B3DBD8 800C6A38 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3DBDC 800C6A3C 27BD0020 */  addiu $sp, $sp, 0x20
/* B3DBE0 800C6A40 03E00008 */  jr    $ra
/* B3DBE4 800C6A44 00000000 */   nop   

glabel func_800C6A48
/* B3DBE8 800C6A48 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3DBEC 800C6A4C 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B3DBF0 800C6A50 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B3DBF4 800C6A54 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3DBF8 800C6A58 AFA40020 */  sw    $a0, 0x20($sp)
/* B3DBFC 800C6A5C AFA50024 */  sw    $a1, 0x24($sp)
/* B3DC00 800C6A60 85CF104A */  lh    $t7, 0x104a($t6)
/* B3DC04 800C6A64 8FA20020 */  lw    $v0, 0x20($sp)
/* B3DC08 800C6A68 24010001 */  li    $at, 1
/* B3DC0C 800C6A6C 15E1000A */  bne   $t7, $at, .L800C6A98
/* B3DC10 800C6A70 244202B8 */   addiu $v0, $v0, 0x2b8
/* B3DC14 800C6A74 8C580008 */  lw    $t8, 8($v0)
/* B3DC18 800C6A78 8C460000 */  lw    $a2, ($v0)
/* B3DC1C 800C6A7C 8C470004 */  lw    $a3, 4($v0)
/* B3DC20 800C6A80 AFB80010 */  sw    $t8, 0x10($sp)
/* B3DC24 800C6A84 8C59000C */  lw    $t9, 0xc($v0)
/* B3DC28 800C6A88 3C048014 */  lui   $a0, %hi(D_80145604) # $a0, 0x8014
/* B3DC2C 800C6A8C 24845604 */  addiu $a0, %lo(D_80145604) # addiu $a0, $a0, 0x5604
/* B3DC30 800C6A90 0C00084C */  jal   osSyncPrintf
/* B3DC34 800C6A94 AFB90014 */   sw    $t9, 0x14($sp)
.L800C6A98:
/* B3DC38 800C6A98 8FA50024 */  lw    $a1, 0x24($sp)
/* B3DC3C 800C6A9C 8FA40020 */  lw    $a0, 0x20($sp)
/* B3DC40 800C6AA0 2401FFF0 */  li    $at, -16
/* B3DC44 800C6AA4 24A5000F */  addiu $a1, $a1, 0xf
/* B3DC48 800C6AA8 00A12824 */  and   $a1, $a1, $at
/* B3DC4C 800C6AAC 0C030E78 */  jal   THGA_AllocEnd
/* B3DC50 800C6AB0 248402B8 */   addiu $a0, $a0, 0x2b8
/* B3DC54 800C6AB4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3DC58 800C6AB8 27BD0020 */  addiu $sp, $sp, 0x20
/* B3DC5C 800C6ABC 03E00008 */  jr    $ra
/* B3DC60 800C6AC0 00000000 */   nop   

glabel func_800C6AC4
/* B3DC64 800C6AC4 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3DC68 800C6AC8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3DC6C 800C6ACC 24010007 */  li    $at, 7
/* B3DC70 800C6AD0 844E1074 */  lh    $t6, 0x1074($v0)
/* B3DC74 800C6AD4 15C1001D */  bne   $t6, $at, .L800C6B4C
/* B3DC78 800C6AD8 00000000 */   nop   
/* B3DC7C 800C6ADC 844F1078 */  lh    $t7, 0x1078($v0)
/* B3DC80 800C6AE0 24010004 */  li    $at, 4
/* B3DC84 800C6AE4 11E10019 */  beq   $t7, $at, .L800C6B4C
/* B3DC88 800C6AE8 00000000 */   nop   
/* B3DC8C 800C6AEC 8CB802C0 */  lw    $t8, 0x2c0($a1)
/* B3DC90 800C6AF0 3C010007 */  lui   $at, 7
/* B3DC94 800C6AF4 AC980000 */  sw    $t8, ($a0)
/* B3DC98 800C6AF8 8CB902D0 */  lw    $t9, 0x2d0($a1)
/* B3DC9C 800C6AFC AC990004 */  sw    $t9, 4($a0)
/* B3DCA0 800C6B00 8CA802B0 */  lw    $t0, 0x2b0($a1)
/* B3DCA4 800C6B04 AC880008 */  sw    $t0, 8($a0)
/* B3DCA8 800C6B08 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B3DCAC 800C6B0C 30E4FFFF */  andi  $a0, $a3, 0xffff
/* B3DCB0 800C6B10 00812025 */  or    $a0, $a0, $at
/* B3DCB4 800C6B14 24490008 */  addiu $t1, $v0, 8
/* B3DCB8 800C6B18 ACA902C0 */  sw    $t1, 0x2c0($a1)
/* B3DCBC 800C6B1C AC460004 */  sw    $a2, 4($v0)
/* B3DCC0 800C6B20 AC440000 */  sw    $a0, ($v0)
/* B3DCC4 800C6B24 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B3DCC8 800C6B28 244A0008 */  addiu $t2, $v0, 8
/* B3DCCC 800C6B2C ACAA02D0 */  sw    $t2, 0x2d0($a1)
/* B3DCD0 800C6B30 AC460004 */  sw    $a2, 4($v0)
/* B3DCD4 800C6B34 AC440000 */  sw    $a0, ($v0)
/* B3DCD8 800C6B38 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B3DCDC 800C6B3C 244B0008 */  addiu $t3, $v0, 8
/* B3DCE0 800C6B40 ACAB02B0 */  sw    $t3, 0x2b0($a1)
/* B3DCE4 800C6B44 AC460004 */  sw    $a2, 4($v0)
/* B3DCE8 800C6B48 AC440000 */  sw    $a0, ($v0)
.L800C6B4C:
/* B3DCEC 800C6B4C 03E00008 */  jr    $ra
/* B3DCF0 800C6B50 00000000 */   nop   

glabel func_800C6B54
/* B3DCF4 800C6B54 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3DCF8 800C6B58 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3DCFC 800C6B5C 24010007 */  li    $at, 7
/* B3DD00 800C6B60 844E1074 */  lh    $t6, 0x1074($v0)
/* B3DD04 800C6B64 15C1002C */  bne   $t6, $at, .L800C6C18
/* B3DD08 800C6B68 00000000 */   nop   
/* B3DD0C 800C6B6C 844F1078 */  lh    $t7, 0x1078($v0)
/* B3DD10 800C6B70 24010004 */  li    $at, 4
/* B3DD14 800C6B74 11E10028 */  beq   $t7, $at, .L800C6C18
/* B3DD18 800C6B78 00000000 */   nop   
/* B3DD1C 800C6B7C 8C830000 */  lw    $v1, ($a0)
/* B3DD20 800C6B80 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B3DD24 800C6B84 30E9FFFF */  andi  $t1, $a3, 0xffff
/* B3DD28 800C6B88 24780008 */  addiu $t8, $v1, 8
/* B3DD2C 800C6B8C 14580003 */  bne   $v0, $t8, .L800C6B9C
/* B3DD30 800C6B90 24590008 */   addiu $t9, $v0, 8
/* B3DD34 800C6B94 10000006 */  b     .L800C6BB0
/* B3DD38 800C6B98 ACA302C0 */   sw    $v1, 0x2c0($a1)
.L800C6B9C:
/* B3DD3C 800C6B9C ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B3DD40 800C6BA0 3C010008 */  lui   $at, 8
/* B3DD44 800C6BA4 01215025 */  or    $t2, $t1, $at
/* B3DD48 800C6BA8 AC4A0000 */  sw    $t2, ($v0)
/* B3DD4C 800C6BAC AC460004 */  sw    $a2, 4($v0)
.L800C6BB0:
/* B3DD50 800C6BB0 8C820004 */  lw    $v0, 4($a0)
/* B3DD54 800C6BB4 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B3DD58 800C6BB8 3C010008 */  lui   $at, 8
/* B3DD5C 800C6BBC 244B0008 */  addiu $t3, $v0, 8
/* B3DD60 800C6BC0 146B0003 */  bne   $v1, $t3, .L800C6BD0
/* B3DD64 800C6BC4 246C0008 */   addiu $t4, $v1, 8
/* B3DD68 800C6BC8 10000006 */  b     .L800C6BE4
/* B3DD6C 800C6BCC ACA202D0 */   sw    $v0, 0x2d0($a1)
.L800C6BD0:
/* B3DD70 800C6BD0 30E2FFFF */  andi  $v0, $a3, 0xffff
/* B3DD74 800C6BD4 ACAC02D0 */  sw    $t4, 0x2d0($a1)
/* B3DD78 800C6BD8 00411025 */  or    $v0, $v0, $at
/* B3DD7C 800C6BDC AC620000 */  sw    $v0, ($v1)
/* B3DD80 800C6BE0 AC660004 */  sw    $a2, 4($v1)
.L800C6BE4:
/* B3DD84 800C6BE4 8C820008 */  lw    $v0, 8($a0)
/* B3DD88 800C6BE8 8CA302B0 */  lw    $v1, 0x2b0($a1)
/* B3DD8C 800C6BEC 3C010008 */  lui   $at, 8
/* B3DD90 800C6BF0 244D0008 */  addiu $t5, $v0, 8
/* B3DD94 800C6BF4 146D0003 */  bne   $v1, $t5, .L800C6C04
/* B3DD98 800C6BF8 246E0008 */   addiu $t6, $v1, 8
/* B3DD9C 800C6BFC 03E00008 */  jr    $ra
/* B3DDA0 800C6C00 ACA202B0 */   sw    $v0, 0x2b0($a1)

.L800C6C04:
/* B3DDA4 800C6C04 30E2FFFF */  andi  $v0, $a3, 0xffff
/* B3DDA8 800C6C08 ACAE02B0 */  sw    $t6, 0x2b0($a1)
/* B3DDAC 800C6C0C 00411025 */  or    $v0, $v0, $at
/* B3DDB0 800C6C10 AC620000 */  sw    $v0, ($v1)
/* B3DDB4 800C6C14 AC660004 */  sw    $a2, 4($v1)
.L800C6C18:
/* B3DDB8 800C6C18 03E00008 */  jr    $ra
/* B3DDBC 800C6C1C 00000000 */   nop   

glabel func_800C6C20
/* B3DDC0 800C6C20 03E00008 */  jr    $ra
/* B3DDC4 800C6C24 24820008 */   addiu $v0, $a0, 8

glabel func_800C6C28
/* B3DDC8 800C6C28 3C0EDE01 */  lui   $t6, 0xde01
/* B3DDCC 800C6C2C AC8E0000 */  sw    $t6, ($a0)
/* B3DDD0 800C6C30 AC850004 */  sw    $a1, 4($a0)
/* B3DDD4 800C6C34 03E00008 */  jr    $ra
/* B3DDD8 800C6C38 00A01025 */   move  $v0, $a1

glabel func_800C6C3C
/* B3DDDC 800C6C3C 8C820000 */  lw    $v0, ($a0)
/* B3DDE0 800C6C40 24A50007 */  addiu $a1, $a1, 7
/* B3DDE4 800C6C44 2401FFF8 */  li    $at, -8
/* B3DDE8 800C6C48 00A12824 */  and   $a1, $a1, $at
/* B3DDEC 800C6C4C 24430008 */  addiu $v1, $v0, 8
/* B3DDF0 800C6C50 00653021 */  addu  $a2, $v1, $a1
/* B3DDF4 800C6C54 3C0EDE01 */  lui   $t6, 0xde01
/* B3DDF8 800C6C58 AC4E0000 */  sw    $t6, ($v0)
/* B3DDFC 800C6C5C AC460004 */  sw    $a2, 4($v0)
/* B3DE00 800C6C60 AC860000 */  sw    $a2, ($a0)
/* B3DE04 800C6C64 03E00008 */  jr    $ra
/* B3DE08 800C6C68 00601025 */   move  $v0, $v1
