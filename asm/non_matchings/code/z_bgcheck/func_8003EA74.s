glabel DynaPolyInfo_RegisterActor
/* AB5C14 8003EA74 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB5C18 8003EA78 AFB00018 */  sw    $s0, 0x18($sp)
/* AB5C1C 8003EA7C AFA40030 */  sw    $a0, 0x30($sp)
/* AB5C20 8003EA80 AFBF001C */  sw    $ra, 0x1c($sp)
/* AB5C24 8003EA84 AFA50034 */  sw    $a1, 0x34($sp)
/* AB5C28 8003EA88 AFA60038 */  sw    $a2, 0x38($sp)
/* AB5C2C 8003EA8C 00004025 */  move  $t0, $zero
/* AB5C30 8003EA90 24040032 */  li    $a0, 50
/* AB5C34 8003EA94 00008025 */  move  $s0, $zero
/* AB5C38 8003EA98 00A01025 */  move  $v0, $a1
.L8003EA9C:
/* AB5C3C 8003EA9C 9443138C */  lhu   $v1, 0x138c($v0)
/* AB5C40 8003EAA0 306E0001 */  andi  $t6, $v1, 1
/* AB5C44 8003EAA4 15C00004 */  bnez  $t6, .L8003EAB8
/* AB5C48 8003EAA8 346F0001 */   ori   $t7, $v1, 1
/* AB5C4C 8003EAAC A44F138C */  sh    $t7, 0x138c($v0)
/* AB5C50 8003EAB0 10000004 */  b     .L8003EAC4
/* AB5C54 8003EAB4 24080001 */   li    $t0, 1
.L8003EAB8:
/* AB5C58 8003EAB8 26100001 */  addiu $s0, $s0, 1
/* AB5C5C 8003EABC 1604FFF7 */  bne   $s0, $a0, .L8003EA9C
/* AB5C60 8003EAC0 24420002 */   addiu $v0, $v0, 2
.L8003EAC4:
/* AB5C64 8003EAC4 1500000C */  bnez  $t0, .L8003EAF8
/* AB5C68 8003EAC8 8FB80034 */   lw    $t8, 0x34($sp)
/* AB5C6C 8003EACC 3C048014 */  lui   $a0, %hi(D_80138BC0) # $a0, 0x8014
/* AB5C70 8003EAD0 0C00084C */  jal   osSyncPrintf
/* AB5C74 8003EAD4 24848BC0 */   addiu $a0, %lo(D_80138BC0) # addiu $a0, $a0, -0x7440
/* AB5C78 8003EAD8 3C048014 */  lui   $a0, %hi(D_80138BC8) # $a0, 0x8014
/* AB5C7C 8003EADC 0C00084C */  jal   osSyncPrintf
/* AB5C80 8003EAE0 24848BC8 */   addiu $a0, %lo(D_80138BC8) # addiu $a0, $a0, -0x7438
/* AB5C84 8003EAE4 3C048014 */  lui   $a0, %hi(D_80138C14) # $a0, 0x8014
/* AB5C88 8003EAE8 0C00084C */  jal   osSyncPrintf
/* AB5C8C 8003EAEC 24848C14 */   addiu $a0, %lo(D_80138C14) # addiu $a0, $a0, -0x73ec
/* AB5C90 8003EAF0 1000001F */  b     .L8003EB70
/* AB5C94 8003EAF4 24020032 */   li    $v0, 50
.L8003EAF8:
/* AB5C98 8003EAF8 0010C880 */  sll   $t9, $s0, 2
/* AB5C9C 8003EAFC 0330C823 */  subu  $t9, $t9, $s0
/* AB5CA0 8003EB00 0019C8C0 */  sll   $t9, $t9, 3
/* AB5CA4 8003EB04 0330C821 */  addu  $t9, $t9, $s0
/* AB5CA8 8003EB08 0019C880 */  sll   $t9, $t9, 2
/* AB5CAC 8003EB0C 03192021 */  addu  $a0, $t8, $t9
/* AB5CB0 8003EB10 24840004 */  addiu $a0, $a0, 4
/* AB5CB4 8003EB14 8FA50038 */  lw    $a1, 0x38($sp)
/* AB5CB8 8003EB18 00E03025 */  move  $a2, $a3
/* AB5CBC 8003EB1C 0C00F9D4 */  jal   func_8003E750
/* AB5CC0 8003EB20 AFA20024 */   sw    $v0, 0x24($sp)
/* AB5CC4 8003EB24 8FA30034 */  lw    $v1, 0x34($sp)
/* AB5CC8 8003EB28 8FA20024 */  lw    $v0, 0x24($sp)
/* AB5CCC 8003EB2C 3C048014 */  lui   $a0, %hi(D_80138C18) # $a0, 0x8014
/* AB5CD0 8003EB30 90690000 */  lbu   $t1, ($v1)
/* AB5CD4 8003EB34 24848C18 */  addiu $a0, %lo(D_80138C18) # addiu $a0, $a0, -0x73e8
/* AB5CD8 8003EB38 352A0001 */  ori   $t2, $t1, 1
/* AB5CDC 8003EB3C A06A0000 */  sb    $t2, ($v1)
/* AB5CE0 8003EB40 944B138C */  lhu   $t3, 0x138c($v0)
/* AB5CE4 8003EB44 316CFFFD */  andi  $t4, $t3, 0xfffd
/* AB5CE8 8003EB48 0C00084C */  jal   osSyncPrintf
/* AB5CEC 8003EB4C A44C138C */   sh    $t4, 0x138c($v0)
/* AB5CF0 8003EB50 3C048014 */  lui   $a0, %hi(D_80138C20) # $a0, 0x8014
/* AB5CF4 8003EB54 24848C20 */  addiu $a0, %lo(D_80138C20) # addiu $a0, $a0, -0x73e0
/* AB5CF8 8003EB58 0C00084C */  jal   osSyncPrintf
/* AB5CFC 8003EB5C 02002825 */   move  $a1, $s0
/* AB5D00 8003EB60 3C048014 */  lui   $a0, %hi(D_80138C44) # $a0, 0x8014
/* AB5D04 8003EB64 0C00084C */  jal   osSyncPrintf
/* AB5D08 8003EB68 24848C44 */   addiu $a0, %lo(D_80138C44) # addiu $a0, $a0, -0x73bc
/* AB5D0C 8003EB6C 02001025 */  move  $v0, $s0
.L8003EB70:
/* AB5D10 8003EB70 8FBF001C */  lw    $ra, 0x1c($sp)
/* AB5D14 8003EB74 8FB00018 */  lw    $s0, 0x18($sp)
/* AB5D18 8003EB78 27BD0030 */  addiu $sp, $sp, 0x30
/* AB5D1C 8003EB7C 03E00008 */  jr    $ra
/* AB5D20 8003EB80 00000000 */   nop   

