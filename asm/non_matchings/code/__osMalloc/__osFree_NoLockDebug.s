.rdata
glabel D_8014AD48
    .asciz "\x1b[41;37m__osFree:不正解放(%08x) [%s:%d ]\n\x1b[m" #Unauthorized release
    .balign 4

glabel D_8014AD78
    .asciz "\x1b[41;37m__osFree:二重解放(%08x) [%s:%d ]\n\x1b[m" #Double release
    .balign 4

glabel D_8014ADA8
    .asciz "\x1b[41;37m__osFree:確保時と違う方法で解放しようとした (%08x:%08x)\n\x1b[m" #Tried to release in a different way than when it was secured
    .balign 4


.text
glabel __osFree_NoLockDebug
/* B759BC 800FE81C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B759C0 800FE820 AFB10018 */  sw    $s1, 0x18($sp)
/* B759C4 800FE824 00808825 */  move  $s1, $a0
/* B759C8 800FE828 AFBF001C */  sw    $ra, 0x1c($sp)
/* B759CC 800FE82C AFB00014 */  sw    $s0, 0x14($sp)
/* B759D0 800FE830 10A00078 */  beqz  $a1, .L800FEA14
/* B759D4 800FE834 AFA60038 */   sw    $a2, 0x38($sp)
/* B759D8 800FE838 24B0FFD0 */  addiu $s0, $a1, -0x30
/* B759DC 800FE83C 12000004 */  beqz  $s0, .L800FE850
/* B759E0 800FE840 3C048015 */   lui   $a0, %hi(D_8014AD48) # $a0, 0x8015
/* B759E4 800FE844 860E0000 */  lh    $t6, ($s0)
/* B759E8 800FE848 24017373 */  li    $at, 29555
/* B759EC 800FE84C 11C10005 */  beq   $t6, $at, .L800FE864
.L800FE850:
/* B759F0 800FE850 2484AD48 */   addiu $a0, %lo(D_8014AD48) # addiu $a0, $a0, -0x52b8
/* B759F4 800FE854 0C00084C */  jal   osSyncPrintf
/* B759F8 800FE858 8FA60038 */   lw    $a2, 0x38($sp)
/* B759FC 800FE85C 1000006E */  b     .L800FEA18
/* B75A00 800FE860 8FBF001C */   lw    $ra, 0x1c($sp)
.L800FE864:
/* B75A04 800FE864 860F0002 */  lh    $t7, 2($s0)
/* B75A08 800FE868 3C048015 */  lui   $a0, %hi(D_8014AD78) # $a0, 0x8015
/* B75A0C 800FE86C 2484AD78 */  addiu $a0, %lo(D_8014AD78) # addiu $a0, $a0, -0x5288
/* B75A10 800FE870 51E00006 */  beql  $t7, $zero, .L800FE88C
/* B75A14 800FE874 8E06001C */   lw    $a2, 0x1c($s0)
/* B75A18 800FE878 0C00084C */  jal   osSyncPrintf
/* B75A1C 800FE87C 8FA60038 */   lw    $a2, 0x38($sp)
/* B75A20 800FE880 10000065 */  b     .L800FEA18
/* B75A24 800FE884 8FBF001C */   lw    $ra, 0x1c($sp)
/* B75A28 800FE888 8E06001C */  lw    $a2, 0x1c($s0)
.L800FE88C:
/* B75A2C 800FE88C 02002025 */  move  $a0, $s0
/* B75A30 800FE890 52260009 */  beql  $s1, $a2, .L800FE8B8
/* B75A34 800FE894 AFA7003C */   sw    $a3, 0x3c($sp)
/* B75A38 800FE898 12200006 */  beqz  $s1, .L800FE8B4
/* B75A3C 800FE89C 02202825 */   move  $a1, $s1
/* B75A40 800FE8A0 3C048015 */  lui   $a0, %hi(D_8014ADA8) # $a0, 0x8015
/* B75A44 800FE8A4 0C00084C */  jal   osSyncPrintf
/* B75A48 800FE8A8 2484ADA8 */   addiu $a0, %lo(D_8014ADA8) # addiu $a0, $a0, -0x5258
/* B75A4C 800FE8AC 1000005A */  b     .L800FEA18
/* B75A50 800FE8B0 8FBF001C */   lw    $ra, 0x1c($sp)
.L800FE8B4:
/* B75A54 800FE8B4 AFA7003C */  sw    $a3, 0x3c($sp)
.L800FE8B8:
/* B75A58 800FE8B8 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75A5C 800FE8BC AFB10030 */   sw    $s1, 0x30($sp)
/* B75A60 800FE8C0 00408825 */  move  $s1, $v0
/* B75A64 800FE8C4 0C03F739 */  jal   ArenaImpl_GetPrevBlock
/* B75A68 800FE8C8 02002025 */   move  $a0, $s0
/* B75A6C 800FE8CC 24180001 */  li    $t8, 1
/* B75A70 800FE8D0 A6180002 */  sh    $t8, 2($s0)
/* B75A74 800FE8D4 AFA20024 */  sw    $v0, 0x24($sp)
/* B75A78 800FE8D8 8FA70030 */  lw    $a3, 0x30($sp)
/* B75A7C 800FE8DC 8FA6003C */  lw    $a2, 0x3c($sp)
/* B75A80 800FE8E0 8FA50038 */  lw    $a1, 0x38($sp)
/* B75A84 800FE8E4 0C03F6F0 */  jal   ArenaImpl_SetDebugInfo
/* B75A88 800FE8E8 02002025 */   move  $a0, $s0
/* B75A8C 800FE8EC 8FB90030 */  lw    $t9, 0x30($sp)
/* B75A90 800FE8F0 8FA30024 */  lw    $v1, 0x24($sp)
/* B75A94 800FE8F4 26040030 */  addiu $a0, $s0, 0x30
/* B75A98 800FE8F8 93280022 */  lbu   $t0, 0x22($t9)
/* B75A9C 800FE8FC 240500EF */  li    $a1, 239
/* B75AA0 800FE900 31090002 */  andi  $t1, $t0, 2
/* B75AA4 800FE904 51200006 */  beql  $t1, $zero, .L800FE920
/* B75AA8 800FE908 8E0A0004 */   lw    $t2, 4($s0)
/* B75AAC 800FE90C 8E060004 */  lw    $a2, 4($s0)
/* B75AB0 800FE910 0C041A18 */  jal   func_80106860
/* B75AB4 800FE914 AFA30024 */   sw    $v1, 0x24($sp)
/* B75AB8 800FE918 8FA30024 */  lw    $v1, 0x24($sp)
/* B75ABC 800FE91C 8E0A0004 */  lw    $t2, 4($s0)
.L800FE920:
/* B75AC0 800FE920 020A5821 */  addu  $t3, $s0, $t2
/* B75AC4 800FE924 256C0030 */  addiu $t4, $t3, 0x30
/* B75AC8 800FE928 162C001F */  bne   $s1, $t4, .L800FE9A8
/* B75ACC 800FE92C 00000000 */   nop   
/* B75AD0 800FE930 862D0002 */  lh    $t5, 2($s1)
/* B75AD4 800FE934 02202025 */  move  $a0, $s1
/* B75AD8 800FE938 11A0001B */  beqz  $t5, .L800FE9A8
/* B75ADC 800FE93C 00000000 */   nop   
/* B75AE0 800FE940 0C03F723 */  jal   ArenaImpl_GetNextBlock
/* B75AE4 800FE944 AFA30024 */   sw    $v1, 0x24($sp)
/* B75AE8 800FE948 8FA30024 */  lw    $v1, 0x24($sp)
/* B75AEC 800FE94C 10400002 */  beqz  $v0, .L800FE958
/* B75AF0 800FE950 00403825 */   move  $a3, $v0
/* B75AF4 800FE954 AC50000C */  sw    $s0, 0xc($v0)
.L800FE958:
/* B75AF8 800FE958 8E0E0004 */  lw    $t6, 4($s0)
/* B75AFC 800FE95C 8E2F0004 */  lw    $t7, 4($s1)
/* B75B00 800FE960 02202025 */  move  $a0, $s1
/* B75B04 800FE964 240500EF */  li    $a1, 239
/* B75B08 800FE968 01CFC021 */  addu  $t8, $t6, $t7
/* B75B0C 800FE96C 27190030 */  addiu $t9, $t8, 0x30
/* B75B10 800FE970 AE190004 */  sw    $t9, 4($s0)
/* B75B14 800FE974 8FA80030 */  lw    $t0, 0x30($sp)
/* B75B18 800FE978 24060030 */  li    $a2, 48
/* B75B1C 800FE97C 91090022 */  lbu   $t1, 0x22($t0)
/* B75B20 800FE980 312A0002 */  andi  $t2, $t1, 2
/* B75B24 800FE984 51400007 */  beql  $t2, $zero, .L800FE9A4
/* B75B28 800FE988 AE070008 */   sw    $a3, 8($s0)
/* B75B2C 800FE98C AFA30024 */  sw    $v1, 0x24($sp)
/* B75B30 800FE990 0C041A18 */  jal   func_80106860
/* B75B34 800FE994 AFA70020 */   sw    $a3, 0x20($sp)
/* B75B38 800FE998 8FA30024 */  lw    $v1, 0x24($sp)
/* B75B3C 800FE99C 8FA70020 */  lw    $a3, 0x20($sp)
/* B75B40 800FE9A0 AE070008 */  sw    $a3, 8($s0)
.L800FE9A4:
/* B75B44 800FE9A4 00E08825 */  move  $s1, $a3
.L800FE9A8:
/* B75B48 800FE9A8 5060001B */  beql  $v1, $zero, .L800FEA18
/* B75B4C 800FE9AC 8FBF001C */   lw    $ra, 0x1c($sp)
/* B75B50 800FE9B0 846B0002 */  lh    $t3, 2($v1)
/* B75B54 800FE9B4 51600018 */  beql  $t3, $zero, .L800FEA18
/* B75B58 800FE9B8 8FBF001C */   lw    $ra, 0x1c($sp)
/* B75B5C 800FE9BC 8C620004 */  lw    $v0, 4($v1)
/* B75B60 800FE9C0 00626021 */  addu  $t4, $v1, $v0
/* B75B64 800FE9C4 258D0030 */  addiu $t5, $t4, 0x30
/* B75B68 800FE9C8 560D0013 */  bnel  $s0, $t5, .L800FEA18
/* B75B6C 800FE9CC 8FBF001C */   lw    $ra, 0x1c($sp)
/* B75B70 800FE9D0 12200003 */  beqz  $s1, .L800FE9E0
/* B75B74 800FE9D4 02002025 */   move  $a0, $s0
/* B75B78 800FE9D8 AE23000C */  sw    $v1, 0xc($s1)
/* B75B7C 800FE9DC 8C620004 */  lw    $v0, 4($v1)
.L800FE9E0:
/* B75B80 800FE9E0 AC710008 */  sw    $s1, 8($v1)
/* B75B84 800FE9E4 8E0E0004 */  lw    $t6, 4($s0)
/* B75B88 800FE9E8 240500EF */  li    $a1, 239
/* B75B8C 800FE9EC 004E7821 */  addu  $t7, $v0, $t6
/* B75B90 800FE9F0 25F80030 */  addiu $t8, $t7, 0x30
/* B75B94 800FE9F4 AC780004 */  sw    $t8, 4($v1)
/* B75B98 800FE9F8 8FB90030 */  lw    $t9, 0x30($sp)
/* B75B9C 800FE9FC 93280022 */  lbu   $t0, 0x22($t9)
/* B75BA0 800FEA00 31090002 */  andi  $t1, $t0, 2
/* B75BA4 800FEA04 51200004 */  beql  $t1, $zero, .L800FEA18
/* B75BA8 800FEA08 8FBF001C */   lw    $ra, 0x1c($sp)
/* B75BAC 800FEA0C 0C041A18 */  jal   func_80106860
/* B75BB0 800FEA10 24060030 */   li    $a2, 48
.L800FEA14:
/* B75BB4 800FEA14 8FBF001C */  lw    $ra, 0x1c($sp)
.L800FEA18:
/* B75BB8 800FEA18 8FB00014 */  lw    $s0, 0x14($sp)
/* B75BBC 800FEA1C 8FB10018 */  lw    $s1, 0x18($sp)
/* B75BC0 800FEA20 03E00008 */  jr    $ra
/* B75BC4 800FEA24 27BD0030 */   addiu $sp, $sp, 0x30