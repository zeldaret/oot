glabel func_800F7B54
/* B6ECF4 800F7B54 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B6ECF8 800F7B58 AFA50034 */  sw    $a1, 0x34($sp)
/* B6ECFC 800F7B5C 93B80037 */  lbu   $t8, 0x37($sp)
/* B6ED00 800F7B60 240B0030 */  li    $t3, 48
/* B6ED04 800F7B64 AFB00018 */  sw    $s0, 0x18($sp)
/* B6ED08 800F7B68 030B0019 */  multu $t8, $t3
/* B6ED0C 800F7B6C 309000FF */  andi  $s0, $a0, 0xff
/* B6ED10 800F7B70 3C0F8013 */  lui   $t7, %hi(gSoundBanks) # $t7, 0x8013
/* B6ED14 800F7B74 25EF33A8 */  addiu $t7, %lo(gSoundBanks) # addiu $t7, $t7, 0x33a8
/* B6ED18 800F7B78 00107080 */  sll   $t6, $s0, 2
/* B6ED1C 800F7B7C 01CF5021 */  addu  $t2, $t6, $t7
/* B6ED20 800F7B80 8D490000 */  lw    $t1, ($t2)
/* B6ED24 800F7B84 AFBF001C */  sw    $ra, 0x1c($sp)
/* B6ED28 800F7B88 AFA40030 */  sw    $a0, 0x30($sp)
/* B6ED2C 800F7B8C 0000C812 */  mflo  $t9
/* B6ED30 800F7B90 01393021 */  addu  $a2, $t1, $t9
/* B6ED34 800F7B94 94CC0026 */  lhu   $t4, 0x26($a2)
/* B6ED38 800F7B98 318D0008 */  andi  $t5, $t4, 8
/* B6ED3C 800F7B9C 11A00009 */  beqz  $t5, .L800F7BC4
/* B6ED40 800F7BA0 00000000 */   nop   
/* B6ED44 800F7BA4 90C4002E */  lbu   $a0, 0x2e($a2)
/* B6ED48 800F7BA8 AFAA0024 */  sw    $t2, 0x24($sp)
/* B6ED4C 800F7BAC 0C03DCC7 */  jal   func_800F731C
/* B6ED50 800F7BB0 AFA6002C */   sw    $a2, 0x2c($sp)
/* B6ED54 800F7BB4 8FAA0024 */  lw    $t2, 0x24($sp)
/* B6ED58 800F7BB8 8FA6002C */  lw    $a2, 0x2c($sp)
/* B6ED5C 800F7BBC 240B0030 */  li    $t3, 48
/* B6ED60 800F7BC0 8D490000 */  lw    $t1, ($t2)
.L800F7BC4:
/* B6ED64 800F7BC4 3C0E8017 */  lui   $t6, %hi(D_8016E1A0) # $t6, 0x8017
/* B6ED68 800F7BC8 25CEE1A0 */  addiu $t6, %lo(D_8016E1A0) # addiu $t6, $t6, -0x1e60
/* B6ED6C 800F7BCC 020E1021 */  addu  $v0, $s0, $t6
/* B6ED70 800F7BD0 904F0000 */  lbu   $t7, ($v0)
/* B6ED74 800F7BD4 93A80037 */  lbu   $t0, 0x37($sp)
/* B6ED78 800F7BD8 550F0005 */  bnel  $t0, $t7, .L800F7BF0
/* B6ED7C 800F7BDC 90CC002D */   lbu   $t4, 0x2d($a2)
/* B6ED80 800F7BE0 90D8002C */  lbu   $t8, 0x2c($a2)
/* B6ED84 800F7BE4 10000008 */  b     .L800F7C08
/* B6ED88 800F7BE8 A0580000 */   sb    $t8, ($v0)
/* B6ED8C 800F7BEC 90CC002D */  lbu   $t4, 0x2d($a2)
.L800F7BF0:
/* B6ED90 800F7BF0 90D9002C */  lbu   $t9, 0x2c($a2)
/* B6ED94 800F7BF4 018B0019 */  multu $t4, $t3
/* B6ED98 800F7BF8 00006812 */  mflo  $t5
/* B6ED9C 800F7BFC 012D7021 */  addu  $t6, $t1, $t5
/* B6EDA0 800F7C00 A1D9002C */  sb    $t9, 0x2c($t6)
/* B6EDA4 800F7C04 8D490000 */  lw    $t1, ($t2)
.L800F7C08:
/* B6EDA8 800F7C08 90D8002C */  lbu   $t8, 0x2c($a2)
/* B6EDAC 800F7C0C 90CF002D */  lbu   $t7, 0x2d($a2)
/* B6EDB0 800F7C10 3C198017 */  lui   $t9, %hi(D_8016E1A8) # $t9, 0x8017
/* B6EDB4 800F7C14 030B0019 */  multu $t8, $t3
/* B6EDB8 800F7C18 2739E1A8 */  addiu $t9, %lo(D_8016E1A8) # addiu $t9, $t9, -0x1e58
/* B6EDBC 800F7C1C 02191821 */  addu  $v1, $s0, $t9
/* B6EDC0 800F7C20 240700FF */  li    $a3, 255
/* B6EDC4 800F7C24 3C048013 */  lui   $a0, %hi(D_80130578)
/* B6EDC8 800F7C28 00001025 */  move  $v0, $zero
/* B6EDCC 800F7C2C 00006012 */  mflo  $t4
/* B6EDD0 800F7C30 012C6821 */  addu  $t5, $t1, $t4
/* B6EDD4 800F7C34 A1AF002D */  sb    $t7, 0x2d($t5)
/* B6EDD8 800F7C38 906E0000 */  lbu   $t6, ($v1)
/* B6EDDC 800F7C3C A0C7002C */  sb    $a3, 0x2c($a2)
/* B6EDE0 800F7C40 A0CE002D */  sb    $t6, 0x2d($a2)
/* B6EDE4 800F7C44 906F0000 */  lbu   $t7, ($v1)
/* B6EDE8 800F7C48 8D4C0000 */  lw    $t4, ($t2)
/* B6EDEC 800F7C4C 93B80037 */  lbu   $t8, 0x37($sp)
/* B6EDF0 800F7C50 01EB0019 */  multu $t7, $t3
/* B6EDF4 800F7C54 3C0F8013 */  lui   $t7, %hi(D_801333CC) # $t7, 0x8013
/* B6EDF8 800F7C58 00006812 */  mflo  $t5
/* B6EDFC 800F7C5C 018DC821 */  addu  $t9, $t4, $t5
/* B6EE00 800F7C60 A338002C */  sb    $t8, 0x2c($t9)
/* B6EE04 800F7C64 93AE0037 */  lbu   $t6, 0x37($sp)
/* B6EE08 800F7C68 0010C080 */  sll   $t8, $s0, 2
/* B6EE0C 800F7C6C 0310C023 */  subu  $t8, $t8, $s0
/* B6EE10 800F7C70 A06E0000 */  sb    $t6, ($v1)
/* B6EE14 800F7C74 A0C0002A */  sb    $zero, 0x2a($a2)
/* B6EE18 800F7C78 91EF33CC */  lbu   $t7, %lo(D_801333CC)($t7)
/* B6EE1C 800F7C7C 3C198017 */  lui   $t9, %hi(D_8016E1B8) # $t9, 0x8017
/* B6EE20 800F7C80 2739E1B8 */  addiu $t9, %lo(D_8016E1B8) # addiu $t9, $t9, -0x1e48
/* B6EE24 800F7C84 000F60C0 */  sll   $t4, $t7, 3
/* B6EE28 800F7C88 018F6023 */  subu  $t4, $t4, $t7
/* B6EE2C 800F7C8C 01906821 */  addu  $t5, $t4, $s0
/* B6EE30 800F7C90 008D2021 */  addu  $a0, $a0, $t5
/* B6EE34 800F7C94 90840578 */  lbu   $a0, %lo(D_80130578)($a0)
/* B6EE38 800F7C98 0018C0C0 */  sll   $t8, $t8, 3
/* B6EE3C 800F7C9C 03193021 */  addu  $a2, $t8, $t9
/* B6EE40 800F7CA0 1880000D */  blez  $a0, .L800F7CD8
/* B6EE44 800F7CA4 00802825 */   move  $a1, $a0
/* B6EE48 800F7CA8 000270C0 */  sll   $t6, $v0, 3
.L800F7CAC:
/* B6EE4C 800F7CAC 00CE1821 */  addu  $v1, $a2, $t6
/* B6EE50 800F7CB0 906F0004 */  lbu   $t7, 4($v1)
/* B6EE54 800F7CB4 550F0004 */  bnel  $t0, $t7, .L800F7CC8
/* B6EE58 800F7CB8 24420001 */   addiu $v0, $v0, 1
/* B6EE5C 800F7CBC A0670004 */  sb    $a3, 4($v1)
/* B6EE60 800F7CC0 308200FF */  andi  $v0, $a0, 0xff
/* B6EE64 800F7CC4 24420001 */  addiu $v0, $v0, 1
.L800F7CC8:
/* B6EE68 800F7CC8 304200FF */  andi  $v0, $v0, 0xff
/* B6EE6C 800F7CCC 0045082A */  slt   $at, $v0, $a1
/* B6EE70 800F7CD0 5420FFF6 */  bnezl $at, .L800F7CAC
/* B6EE74 800F7CD4 000270C0 */   sll   $t6, $v0, 3
.L800F7CD8:
/* B6EE78 800F7CD8 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6EE7C 800F7CDC 8FB00018 */  lw    $s0, 0x18($sp)
/* B6EE80 800F7CE0 27BD0030 */  addiu $sp, $sp, 0x30
/* B6EE84 800F7CE4 03E00008 */  jr    $ra
/* B6EE88 800F7CE8 00000000 */   nop   

