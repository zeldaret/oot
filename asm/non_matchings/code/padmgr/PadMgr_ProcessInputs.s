.rdata
glabel D_80145AF0
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145AF8
    .asciz "padmgr: %dコン: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145B0C
    .asciz "認識しました"
    # EUC-JP: 認識しました | Recognized
    .balign 4

glabel D_80145B1C
    .asciz "\x1b[m"
    .balign 4

glabel D_80145B20
    .asciz "../padmgr.c"
    .balign 4

glabel D_80145B2C
    .asciz "this->Key_switch[i] = %d\n"
    .balign 4

glabel D_80145B48
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145B50
    .asciz "padmgr: %dコン: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145B64
    .asciz "オーバーランエラーが発生"
    # EUC-JP: オーバーランエラーが発生 | Overrun error occurred
    .balign 4

glabel D_80145B80
    .asciz "\x1b[m"
    .balign 4

glabel D_80145B84
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145B8C
    .asciz "padmgr: %dコン: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145BA0
    .asciz "応答しません"
    # EUC-JP: 応答しません | Do not respond?
    .balign 4

glabel D_80145BB0
    .asciz "\x1b[m"
    .balign 4

glabel D_80145BB4
    .asciz "../padmgr.c"
    .balign 4

glabel D_80145BC0
    .asciz "padnow1->errno = %x\n"
    .balign 4

glabel D_80145BD8
    .asciz "../padmgr.c"
    .balign 4

.text
glabel PadMgr_ProcessInputs
/* B3EB14 800C7974 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B3EB18 800C7978 AFBF002C */  sw    $ra, 0x2c($sp)
/* B3EB1C 800C797C AFB40028 */  sw    $s4, 0x28($sp)
/* B3EB20 800C7980 0080A025 */  move  $s4, $a0
/* B3EB24 800C7984 AFB30024 */  sw    $s3, 0x24($sp)
/* B3EB28 800C7988 AFB20020 */  sw    $s2, 0x20($sp)
/* B3EB2C 800C798C AFB1001C */  sw    $s1, 0x1c($sp)
/* B3EB30 800C7990 0C031CEF */  jal   PadMgr_LockPadData
/* B3EB34 800C7994 AFB00018 */   sw    $s0, 0x18($sp)
/* B3EB38 800C7998 928E02A9 */  lbu   $t6, 0x2a9($s4)
/* B3EB3C 800C799C 26900230 */  addiu $s0, $s4, 0x230
/* B3EB40 800C79A0 26930290 */  addiu $s3, $s4, 0x290
/* B3EB44 800C79A4 19C00091 */  blez  $t6, .L800C7BEC
/* B3EB48 800C79A8 00009025 */   move  $s2, $zero
.L800C79AC:
/* B3EB4C 800C79AC 8A180000 */  lwl   $t8, ($s0)
/* B3EB50 800C79B0 9A180003 */  lwr   $t8, 3($s0)
/* B3EB54 800C79B4 26030006 */  addiu $v1, $s0, 6
/* B3EB58 800C79B8 24010004 */  li    $at, 4
/* B3EB5C 800C79BC A8780000 */  swl   $t8, ($v1)
/* B3EB60 800C79C0 B8780003 */  swr   $t8, 3($v1)
/* B3EB64 800C79C4 96180004 */  lhu   $t8, 4($s0)
/* B3EB68 800C79C8 A4780004 */  sh    $t8, 4($v1)
/* B3EB6C 800C79CC 92620004 */  lbu   $v0, 4($s3)
/* B3EB70 800C79D0 50400008 */  beql  $v0, $zero, .L800C79F4
/* B3EB74 800C79D4 8A680000 */   lwl   $t0, ($s3)
/* B3EB78 800C79D8 1041001F */  beq   $v0, $at, .L800C7A58
/* B3EB7C 800C79DC 24010008 */   li    $at, 8
/* B3EB80 800C79E0 1041003D */  beq   $v0, $at, .L800C7AD8
/* B3EB84 800C79E4 3C048014 */   lui   $a0, %hi(D_80145BB4) # $a0, 0x8014
/* B3EB88 800C79E8 10000056 */  b     .L800C7B44
/* B3EB8C 800C79EC 24845BB4 */   addiu $a0, %lo(D_80145BB4) # addiu $a0, $a0, 0x5bb4
/* B3EB90 800C79F0 8A680000 */  lwl   $t0, ($s3)
.L800C79F4:
/* B3EB94 800C79F4 9A680003 */  lwr   $t0, 3($s3)
/* B3EB98 800C79F8 02921021 */  addu  $v0, $s4, $s2
/* B3EB9C 800C79FC 3C048014 */  lui   $a0, %hi(D_80145AF0) # $a0, 0x8014
/* B3EBA0 800C7A00 AA080000 */  swl   $t0, ($s0)
/* B3EBA4 800C7A04 BA080003 */  swr   $t0, 3($s0)
/* B3EBA8 800C7A08 96680004 */  lhu   $t0, 4($s3)
/* B3EBAC 800C7A0C 240A0001 */  li    $t2, 1
/* B3EBB0 800C7A10 24845AF0 */  addiu $a0, %lo(D_80145AF0) # addiu $a0, $a0, 0x5af0
/* B3EBB4 800C7A14 A6080004 */  sh    $t0, 4($s0)
/* B3EBB8 800C7A18 904902AA */  lbu   $t1, 0x2aa($v0)
/* B3EBBC 800C7A1C 1520000C */  bnez  $t1, .L800C7A50
/* B3EBC0 800C7A20 00000000 */   nop   
/* B3EBC4 800C7A24 0C00084C */  jal   osSyncPrintf
/* B3EBC8 800C7A28 A04A02AA */   sb    $t2, 0x2aa($v0)
/* B3EBCC 800C7A2C 3C048014 */  lui   $a0, %hi(D_80145AF8) # $a0, 0x8014
/* B3EBD0 800C7A30 3C068014 */  lui   $a2, %hi(D_80145B0C) # $a2, 0x8014
/* B3EBD4 800C7A34 24C65B0C */  addiu $a2, %lo(D_80145B0C) # addiu $a2, $a2, 0x5b0c
/* B3EBD8 800C7A38 24845AF8 */  addiu $a0, %lo(D_80145AF8) # addiu $a0, $a0, 0x5af8
/* B3EBDC 800C7A3C 0C00084C */  jal   osSyncPrintf
/* B3EBE0 800C7A40 26450001 */   addiu $a1, $s2, 1
/* B3EBE4 800C7A44 3C048014 */  lui   $a0, %hi(D_80145B1C) # $a0, 0x8014
/* B3EBE8 800C7A48 0C00084C */  jal   osSyncPrintf
/* B3EBEC 800C7A4C 24845B1C */   addiu $a0, %lo(D_80145B1C) # addiu $a0, $a0, 0x5b1c
.L800C7A50:
/* B3EBF0 800C7A50 10000047 */  b     .L800C7B70
/* B3EBF4 800C7A54 26510001 */   addiu $s1, $s2, 1
.L800C7A58:
/* B3EBF8 800C7A58 886C0000 */  lwl   $t4, ($v1)
/* B3EBFC 800C7A5C 986C0003 */  lwr   $t4, 3($v1)
/* B3EC00 800C7A60 02921021 */  addu  $v0, $s4, $s2
/* B3EC04 800C7A64 3C048014 */  lui   $a0, %hi(D_80145B20) # $a0, 0x8014
/* B3EC08 800C7A68 AA0C0000 */  swl   $t4, ($s0)
/* B3EC0C 800C7A6C BA0C0003 */  swr   $t4, 3($s0)
/* B3EC10 800C7A70 946C0004 */  lhu   $t4, 4($v1)
/* B3EC14 800C7A74 24845B20 */  addiu $a0, %lo(D_80145B20) # addiu $a0, $a0, 0x5b20
/* B3EC18 800C7A78 2405017C */  li    $a1, 380
/* B3EC1C 800C7A7C A60C0004 */  sh    $t4, 4($s0)
/* B3EC20 800C7A80 0C000B84 */  jal   LogUtils_LogThreadId
/* B3EC24 800C7A84 AFA20034 */   sw    $v0, 0x34($sp)
/* B3EC28 800C7A88 8FA20034 */  lw    $v0, 0x34($sp)
/* B3EC2C 800C7A8C 3C048014 */  lui   $a0, %hi(D_80145B2C) # $a0, 0x8014
/* B3EC30 800C7A90 24845B2C */  addiu $a0, %lo(D_80145B2C) # addiu $a0, $a0, 0x5b2c
/* B3EC34 800C7A94 0C00084C */  jal   osSyncPrintf
/* B3EC38 800C7A98 904502AA */   lbu   $a1, 0x2aa($v0)
/* B3EC3C 800C7A9C 3C048014 */  lui   $a0, %hi(D_80145B48) # $a0, 0x8014
/* B3EC40 800C7AA0 0C00084C */  jal   osSyncPrintf
/* B3EC44 800C7AA4 24845B48 */   addiu $a0, %lo(D_80145B48) # addiu $a0, $a0, 0x5b48
/* B3EC48 800C7AA8 3C048014 */  lui   $a0, %hi(D_80145B50) # $a0, 0x8014
/* B3EC4C 800C7AAC 26510001 */  addiu $s1, $s2, 1
/* B3EC50 800C7AB0 3C068014 */  lui   $a2, %hi(D_80145B64) # $a2, 0x8014
/* B3EC54 800C7AB4 24C65B64 */  addiu $a2, %lo(D_80145B64) # addiu $a2, $a2, 0x5b64
/* B3EC58 800C7AB8 02202825 */  move  $a1, $s1
/* B3EC5C 800C7ABC 0C00084C */  jal   osSyncPrintf
/* B3EC60 800C7AC0 24845B50 */   addiu $a0, %lo(D_80145B50) # addiu $a0, $a0, 0x5b50
/* B3EC64 800C7AC4 3C048014 */  lui   $a0, %hi(D_80145B80) # $a0, 0x8014
/* B3EC68 800C7AC8 0C00084C */  jal   osSyncPrintf
/* B3EC6C 800C7ACC 24845B80 */   addiu $a0, %lo(D_80145B80) # addiu $a0, $a0, 0x5b80
/* B3EC70 800C7AD0 10000028 */  b     .L800C7B74
/* B3EC74 800C7AD4 96030006 */   lhu   $v1, 6($s0)
.L800C7AD8:
/* B3EC78 800C7AD8 A6000000 */  sh    $zero, ($s0)
/* B3EC7C 800C7ADC A2000002 */  sb    $zero, 2($s0)
/* B3EC80 800C7AE0 A2000003 */  sb    $zero, 3($s0)
/* B3EC84 800C7AE4 926D0004 */  lbu   $t5, 4($s3)
/* B3EC88 800C7AE8 02921021 */  addu  $v0, $s4, $s2
/* B3EC8C 800C7AEC 3C048014 */  lui   $a0, %hi(D_80145B84) # $a0, 0x8014
/* B3EC90 800C7AF0 A20D0004 */  sb    $t5, 4($s0)
/* B3EC94 800C7AF4 904E02AA */  lbu   $t6, 0x2aa($v0)
/* B3EC98 800C7AF8 240F00FF */  li    $t7, 255
/* B3EC9C 800C7AFC 24845B84 */  addiu $a0, %lo(D_80145B84) # addiu $a0, $a0, 0x5b84
/* B3ECA0 800C7B00 11C0000E */  beqz  $t6, .L800C7B3C
/* B3ECA4 800C7B04 00000000 */   nop   
/* B3ECA8 800C7B08 A04002AA */  sb    $zero, 0x2aa($v0)
/* B3ECAC 800C7B0C A04002AE */  sb    $zero, 0x2ae($v0)
/* B3ECB0 800C7B10 0C00084C */  jal   osSyncPrintf
/* B3ECB4 800C7B14 A04F02B6 */   sb    $t7, 0x2b6($v0)
/* B3ECB8 800C7B18 3C048014 */  lui   $a0, %hi(D_80145B8C) # $a0, 0x8014
/* B3ECBC 800C7B1C 3C068014 */  lui   $a2, %hi(D_80145BA0) # $a2, 0x8014
/* B3ECC0 800C7B20 24C65BA0 */  addiu $a2, %lo(D_80145BA0) # addiu $a2, $a2, 0x5ba0
/* B3ECC4 800C7B24 24845B8C */  addiu $a0, %lo(D_80145B8C) # addiu $a0, $a0, 0x5b8c
/* B3ECC8 800C7B28 0C00084C */  jal   osSyncPrintf
/* B3ECCC 800C7B2C 26450001 */   addiu $a1, $s2, 1
/* B3ECD0 800C7B30 3C048014 */  lui   $a0, %hi(D_80145BB0) # $a0, 0x8014
/* B3ECD4 800C7B34 0C00084C */  jal   osSyncPrintf
/* B3ECD8 800C7B38 24845BB0 */   addiu $a0, %lo(D_80145BB0) # addiu $a0, $a0, 0x5bb0
.L800C7B3C:
/* B3ECDC 800C7B3C 1000000C */  b     .L800C7B70
/* B3ECE0 800C7B40 26510001 */   addiu $s1, $s2, 1
.L800C7B44:
/* B3ECE4 800C7B44 0C000B84 */  jal   LogUtils_LogThreadId
/* B3ECE8 800C7B48 2405018C */   li    $a1, 396
/* B3ECEC 800C7B4C 3C048014 */  lui   $a0, %hi(D_80145BC0) # $a0, 0x8014
/* B3ECF0 800C7B50 24845BC0 */  addiu $a0, %lo(D_80145BC0) # addiu $a0, $a0, 0x5bc0
/* B3ECF4 800C7B54 0C00084C */  jal   osSyncPrintf
/* B3ECF8 800C7B58 92650004 */   lbu   $a1, 4($s3)
/* B3ECFC 800C7B5C 3C048014 */  lui   $a0, %hi(D_80145BD8) # $a0, 0x8014
/* B3ED00 800C7B60 24845BD8 */  addiu $a0, %lo(D_80145BD8) # addiu $a0, $a0, 0x5bd8
/* B3ED04 800C7B64 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* B3ED08 800C7B68 2405018D */   li    $a1, 397
/* B3ED0C 800C7B6C 26510001 */  addiu $s1, $s2, 1
.L800C7B70:
/* B3ED10 800C7B70 96030006 */  lhu   $v1, 6($s0)
.L800C7B74:
/* B3ED14 800C7B74 96050000 */  lhu   $a1, ($s0)
/* B3ED18 800C7B78 9618000C */  lhu   $t8, 0xc($s0)
/* B3ED1C 800C7B7C 960A0012 */  lhu   $t2, 0x12($s0)
/* B3ED20 800C7B80 00651026 */  xor   $v0, $v1, $a1
/* B3ED24 800C7B84 00436024 */  and   $t4, $v0, $v1
/* B3ED28 800C7B88 00454024 */  and   $t0, $v0, $a1
/* B3ED2C 800C7B8C 03084825 */  or    $t1, $t8, $t0
/* B3ED30 800C7B90 014C6825 */  or    $t5, $t2, $t4
/* B3ED34 800C7B94 A609000C */  sh    $t1, 0xc($s0)
/* B3ED38 800C7B98 A60D0012 */  sh    $t5, 0x12($s0)
/* B3ED3C 800C7B9C 0C03F31B */  jal   PadUtils_UpdateRelXY
/* B3ED40 800C7BA0 02002025 */   move  $a0, $s0
/* B3ED44 800C7BA4 820E0002 */  lb    $t6, 2($s0)
/* B3ED48 800C7BA8 820F0008 */  lb    $t7, 8($s0)
/* B3ED4C 800C7BAC 820A0003 */  lb    $t2, 3($s0)
/* B3ED50 800C7BB0 820C0009 */  lb    $t4, 9($s0)
/* B3ED54 800C7BB4 8209000E */  lb    $t1, 0xe($s0)
/* B3ED58 800C7BB8 8219000F */  lb    $t9, 0xf($s0)
/* B3ED5C 800C7BBC 01CF4023 */  subu  $t0, $t6, $t7
/* B3ED60 800C7BC0 014C7823 */  subu  $t7, $t2, $t4
/* B3ED64 800C7BC4 01285821 */  addu  $t3, $t1, $t0
/* B3ED68 800C7BC8 032FC021 */  addu  $t8, $t9, $t7
/* B3ED6C 800C7BCC A20B000E */  sb    $t3, 0xe($s0)
/* B3ED70 800C7BD0 A218000F */  sb    $t8, 0xf($s0)
/* B3ED74 800C7BD4 928902A9 */  lbu   $t1, 0x2a9($s4)
/* B3ED78 800C7BD8 02209025 */  move  $s2, $s1
/* B3ED7C 800C7BDC 26100018 */  addiu $s0, $s0, 0x18
/* B3ED80 800C7BE0 0229082A */  slt   $at, $s1, $t1
/* B3ED84 800C7BE4 1420FF71 */  bnez  $at, .L800C79AC
/* B3ED88 800C7BE8 26730006 */   addiu $s3, $s3, 6
.L800C7BEC:
/* B3ED8C 800C7BEC 0C031CF9 */  jal   PadMgr_UnlockPadData
/* B3ED90 800C7BF0 02802025 */   move  $a0, $s4
/* B3ED94 800C7BF4 8FBF002C */  lw    $ra, 0x2c($sp)
/* B3ED98 800C7BF8 8FB00018 */  lw    $s0, 0x18($sp)
/* B3ED9C 800C7BFC 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3EDA0 800C7C00 8FB20020 */  lw    $s2, 0x20($sp)
/* B3EDA4 800C7C04 8FB30024 */  lw    $s3, 0x24($sp)
/* B3EDA8 800C7C08 8FB40028 */  lw    $s4, 0x28($sp)
/* B3EDAC 800C7C0C 03E00008 */  jr    $ra
/* B3EDB0 800C7C10 27BD0050 */   addiu $sp, $sp, 0x50
