glabel func_800F4C58
/* B6BDF8 800F4C58 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B6BDFC 800F4C5C AFA50054 */  sw    $a1, 0x54($sp)
/* B6BE00 800F4C60 97A70056 */  lhu   $a3, 0x56($sp)
/* B6BE04 800F4C64 AFB7003C */  sw    $s7, 0x3c($sp)
/* B6BE08 800F4C68 AFBE0040 */  sw    $fp, 0x40($sp)
/* B6BE0C 800F4C6C 00071303 */  sra   $v0, $a3, 0xc
/* B6BE10 800F4C70 AFB10024 */  sw    $s1, 0x24($sp)
/* B6BE14 800F4C74 AFB00020 */  sw    $s0, 0x20($sp)
/* B6BE18 800F4C78 305700FF */  andi  $s7, $v0, 0xff
/* B6BE1C 800F4C7C AFBF0044 */  sw    $ra, 0x44($sp)
/* B6BE20 800F4C80 AFB60038 */  sw    $s6, 0x38($sp)
/* B6BE24 800F4C84 AFB50034 */  sw    $s5, 0x34($sp)
/* B6BE28 800F4C88 AFB40030 */  sw    $s4, 0x30($sp)
/* B6BE2C 800F4C8C AFB3002C */  sw    $s3, 0x2c($sp)
/* B6BE30 800F4C90 AFB20028 */  sw    $s2, 0x28($sp)
/* B6BE34 800F4C94 AFA40050 */  sw    $a0, 0x50($sp)
/* B6BE38 800F4C98 AFA60058 */  sw    $a2, 0x58($sp)
/* B6BE3C 800F4C9C 00008825 */  move  $s1, $zero
/* B6BE40 800F4CA0 305E00FF */  andi  $fp, $v0, 0xff
/* B6BE44 800F4CA4 1AE00012 */  blez  $s7, .L800F4CF0
/* B6BE48 800F4CA8 00008025 */   move  $s0, $zero
/* B6BE4C 800F4CAC 3C0E8013 */  lui   $t6, %hi(D_801333CC) # $t6, 0x8013
/* B6BE50 800F4CB0 91CE33CC */  lbu   $t6, %lo(D_801333CC)($t6)
/* B6BE54 800F4CB4 3C188013 */  lui   $t8, %hi(D_80130578) # $t8, 0x8013
/* B6BE58 800F4CB8 27180578 */  addiu $t8, %lo(D_80130578) # addiu $t8, $t8, 0x578
/* B6BE5C 800F4CBC 000E78C0 */  sll   $t7, $t6, 3
/* B6BE60 800F4CC0 01EE7823 */  subu  $t7, $t7, $t6
/* B6BE64 800F4CC4 01F81821 */  addu  $v1, $t7, $t8
/* B6BE68 800F4CC8 03C01025 */  move  $v0, $fp
.L800F4CCC:
/* B6BE6C 800F4CCC 0070C821 */  addu  $t9, $v1, $s0
/* B6BE70 800F4CD0 93280000 */  lbu   $t0, ($t9)
/* B6BE74 800F4CD4 26100001 */  addiu $s0, $s0, 1
/* B6BE78 800F4CD8 321000FF */  andi  $s0, $s0, 0xff
/* B6BE7C 800F4CDC 0202082A */  slt   $at, $s0, $v0
/* B6BE80 800F4CE0 02288821 */  addu  $s1, $s1, $t0
/* B6BE84 800F4CE4 1420FFF9 */  bnez  $at, .L800F4CCC
/* B6BE88 800F4CE8 323100FF */   andi  $s1, $s1, 0xff
/* B6BE8C 800F4CEC 00008025 */  move  $s0, $zero
.L800F4CF0:
/* B6BE90 800F4CF0 3C098013 */  lui   $t1, %hi(D_801333CC) # $t1, 0x8013
/* B6BE94 800F4CF4 912933CC */  lbu   $t1, %lo(D_801333CC)($t1)
/* B6BE98 800F4CF8 3C0B8013 */  lui   $t3, %hi(D_80130578) # $t3, 0x8013
/* B6BE9C 800F4CFC 256B0578 */  addiu $t3, %lo(D_80130578) # addiu $t3, $t3, 0x578
/* B6BEA0 800F4D00 000950C0 */  sll   $t2, $t1, 3
/* B6BEA4 800F4D04 01495023 */  subu  $t2, $t2, $t1
/* B6BEA8 800F4D08 014B1821 */  addu  $v1, $t2, $t3
/* B6BEAC 800F4D0C 00776021 */  addu  $t4, $v1, $s7
/* B6BEB0 800F4D10 918D0000 */  lbu   $t5, ($t4)
/* B6BEB4 800F4D14 00177080 */  sll   $t6, $s7, 2
/* B6BEB8 800F4D18 01D77023 */  subu  $t6, $t6, $s7
/* B6BEBC 800F4D1C 19A0002E */  blez  $t5, .L800F4DD8
/* B6BEC0 800F4D20 000E70C0 */   sll   $t6, $t6, 3
/* B6BEC4 800F4D24 3C0F8017 */  lui   $t7, %hi(D_8016E1B8) # $t7, 0x8017
/* B6BEC8 800F4D28 25EFE1B8 */  addiu $t7, %lo(D_8016E1B8) # addiu $t7, $t7, -0x1e48
/* B6BECC 800F4D2C 3C138013 */  lui   $s3, %hi(D_801333A8) # $s3, 0x8013
/* B6BED0 800F4D30 267333A8 */  addiu $s3, %lo(D_801333A8) # addiu $s3, $s3, 0x33a8
/* B6BED4 800F4D34 01CFB021 */  addu  $s6, $t6, $t7
/* B6BED8 800F4D38 3C150602 */  lui   $s5, 0x602
/* B6BEDC 800F4D3C 24140030 */  li    $s4, 48
/* B6BEE0 800F4D40 241200FF */  li    $s2, 255
.L800F4D44:
/* B6BEE4 800F4D44 0010C0C0 */  sll   $t8, $s0, 3
/* B6BEE8 800F4D48 02D8C821 */  addu  $t9, $s6, $t8
/* B6BEEC 800F4D4C 93220004 */  lbu   $v0, 4($t9)
/* B6BEF0 800F4D50 5242001A */  beql  $s2, $v0, .L800F4DBC
/* B6BEF4 800F4D54 007E4821 */   addu  $t1, $v1, $fp
/* B6BEF8 800F4D58 00540019 */  multu $v0, $s4
/* B6BEFC 800F4D5C 00174080 */  sll   $t0, $s7, 2
/* B6BF00 800F4D60 02684821 */  addu  $t1, $s3, $t0
/* B6BF04 800F4D64 8D2A0000 */  lw    $t2, ($t1)
/* B6BF08 800F4D68 322E00FF */  andi  $t6, $s1, 0xff
/* B6BF0C 800F4D6C 000E7A00 */  sll   $t7, $t6, 8
/* B6BF10 800F4D70 01F52025 */  or    $a0, $t7, $s5
/* B6BF14 800F4D74 34840006 */  ori   $a0, $a0, 6
/* B6BF18 800F4D78 83A5005B */  lb    $a1, 0x5b($sp)
/* B6BF1C 800F4D7C 00005812 */  mflo  $t3
/* B6BF20 800F4D80 014B6021 */  addu  $t4, $t2, $t3
/* B6BF24 800F4D84 958D0028 */  lhu   $t5, 0x28($t4)
/* B6BF28 800F4D88 54ED000C */  bnel  $a3, $t5, .L800F4DBC
/* B6BF2C 800F4D8C 007E4821 */   addu  $t1, $v1, $fp
/* B6BF30 800F4D90 0C0396C8 */  jal   func_800E5B20
/* B6BF34 800F4D94 AFA70048 */   sw    $a3, 0x48($sp)
/* B6BF38 800F4D98 3C188013 */  lui   $t8, %hi(D_801333CC) # $t8, 0x8013
/* B6BF3C 800F4D9C 931833CC */  lbu   $t8, %lo(D_801333CC)($t8)
/* B6BF40 800F4DA0 3C088013 */  lui   $t0, %hi(D_80130578) # $t0, 0x8013
/* B6BF44 800F4DA4 25080578 */  addiu $t0, %lo(D_80130578) # addiu $t0, $t0, 0x578
/* B6BF48 800F4DA8 0018C8C0 */  sll   $t9, $t8, 3
/* B6BF4C 800F4DAC 0338C823 */  subu  $t9, $t9, $t8
/* B6BF50 800F4DB0 03281821 */  addu  $v1, $t9, $t0
/* B6BF54 800F4DB4 8FA70048 */  lw    $a3, 0x48($sp)
/* B6BF58 800F4DB8 007E4821 */  addu  $t1, $v1, $fp
.L800F4DBC:
/* B6BF5C 800F4DBC 912A0000 */  lbu   $t2, ($t1)
/* B6BF60 800F4DC0 26100001 */  addiu $s0, $s0, 1
/* B6BF64 800F4DC4 321000FF */  andi  $s0, $s0, 0xff
/* B6BF68 800F4DC8 26310001 */  addiu $s1, $s1, 1
/* B6BF6C 800F4DCC 020A082A */  slt   $at, $s0, $t2
/* B6BF70 800F4DD0 1420FFDC */  bnez  $at, .L800F4D44
/* B6BF74 800F4DD4 323100FF */   andi  $s1, $s1, 0xff
.L800F4DD8:
/* B6BF78 800F4DD8 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B6BF7C 800F4DDC 3C0B8013 */  lui   $t3, %hi(D_801333E8) # $t3, 0x8013
/* B6BF80 800F4DE0 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B6BF84 800F4DE4 256B33E8 */  addiu $t3, %lo(D_801333E8) # addiu $t3, $t3, 0x33e8
/* B6BF88 800F4DE8 AFAB0014 */  sw    $t3, 0x14($sp)
/* B6BF8C 800F4DEC AFA70010 */  sw    $a3, 0x10($sp)
/* B6BF90 800F4DF0 97A40056 */  lhu   $a0, 0x56($sp)
/* B6BF94 800F4DF4 8FA50050 */  lw    $a1, 0x50($sp)
/* B6BF98 800F4DF8 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B6BF9C 800F4DFC 24060004 */   li    $a2, 4
/* B6BFA0 800F4E00 8FBF0044 */  lw    $ra, 0x44($sp)
/* B6BFA4 800F4E04 8FB00020 */  lw    $s0, 0x20($sp)
/* B6BFA8 800F4E08 8FB10024 */  lw    $s1, 0x24($sp)
/* B6BFAC 800F4E0C 8FB20028 */  lw    $s2, 0x28($sp)
/* B6BFB0 800F4E10 8FB3002C */  lw    $s3, 0x2c($sp)
/* B6BFB4 800F4E14 8FB40030 */  lw    $s4, 0x30($sp)
/* B6BFB8 800F4E18 8FB50034 */  lw    $s5, 0x34($sp)
/* B6BFBC 800F4E1C 8FB60038 */  lw    $s6, 0x38($sp)
/* B6BFC0 800F4E20 8FB7003C */  lw    $s7, 0x3c($sp)
/* B6BFC4 800F4E24 8FBE0040 */  lw    $fp, 0x40($sp)
/* B6BFC8 800F4E28 03E00008 */  jr    $ra
/* B6BFCC 800F4E2C 27BD0050 */   addiu $sp, $sp, 0x50

