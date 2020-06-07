glabel func_80042B2C
/* AB9CCC 80042B2C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AB9CD0 80042B30 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AB9CD4 80042B34 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AB9CD8 80042B38 AFBF0024 */  sw    $ra, 0x24($sp)
/* AB9CDC 80042B3C AFA40028 */  sw    $a0, 0x28($sp)
/* AB9CE0 80042B40 AFA60030 */  sw    $a2, 0x30($sp)
/* AB9CE4 80042B44 844E0E7E */  lh    $t6, 0xe7e($v0)
/* AB9CE8 80042B48 8FAF0030 */  lw    $t7, 0x30($sp)
/* AB9CEC 80042B4C 24A60050 */  addiu $a2, $a1, 0x50
/* AB9CF0 80042B50 11C00010 */  beqz  $t6, .L80042B94
/* AB9CF4 80042B54 000FC080 */   sll   $t8, $t7, 2
/* AB9CF8 80042B58 030FC023 */  subu  $t8, $t8, $t7
/* AB9CFC 80042B5C 0018C0C0 */  sll   $t8, $t8, 3
/* AB9D00 80042B60 030FC021 */  addu  $t8, $t8, $t7
/* AB9D04 80042B64 0018C080 */  sll   $t8, $t8, 2
/* AB9D08 80042B68 00B83821 */  addu  $a3, $a1, $t8
/* AB9D0C 80042B6C 241900FF */  li    $t9, 255
/* AB9D10 80042B70 AFB90010 */  sw    $t9, 0x10($sp)
/* AB9D14 80042B74 24E7005E */  addiu $a3, $a3, 0x5e
/* AB9D18 80042B78 AFA00014 */  sw    $zero, 0x14($sp)
/* AB9D1C 80042B7C AFA00018 */  sw    $zero, 0x18($sp)
/* AB9D20 80042B80 0C010A1A */  jal   func_80042868
/* AB9D24 80042B84 AFA5002C */   sw    $a1, 0x2c($sp)
/* AB9D28 80042B88 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AB9D2C 80042B8C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AB9D30 80042B90 8FA5002C */  lw    $a1, 0x2c($sp)
.L80042B94:
/* AB9D34 80042B94 84480E80 */  lh    $t0, 0xe80($v0)
/* AB9D38 80042B98 8FA40028 */  lw    $a0, 0x28($sp)
/* AB9D3C 80042B9C 24A60050 */  addiu $a2, $a1, 0x50
/* AB9D40 80042BA0 11000011 */  beqz  $t0, .L80042BE8
/* AB9D44 80042BA4 8FA90030 */   lw    $t1, 0x30($sp)
/* AB9D48 80042BA8 00095080 */  sll   $t2, $t1, 2
/* AB9D4C 80042BAC 01495023 */  subu  $t2, $t2, $t1
/* AB9D50 80042BB0 000A50C0 */  sll   $t2, $t2, 3
/* AB9D54 80042BB4 01495021 */  addu  $t2, $t2, $t1
/* AB9D58 80042BB8 000A5080 */  sll   $t2, $t2, 2
/* AB9D5C 80042BBC 00AA3821 */  addu  $a3, $a1, $t2
/* AB9D60 80042BC0 240B00FF */  li    $t3, 255
/* AB9D64 80042BC4 AFAB0014 */  sw    $t3, 0x14($sp)
/* AB9D68 80042BC8 24E70060 */  addiu $a3, $a3, 0x60
/* AB9D6C 80042BCC AFA00010 */  sw    $zero, 0x10($sp)
/* AB9D70 80042BD0 AFA00018 */  sw    $zero, 0x18($sp)
/* AB9D74 80042BD4 0C010A1A */  jal   func_80042868
/* AB9D78 80042BD8 AFA5002C */   sw    $a1, 0x2c($sp)
/* AB9D7C 80042BDC 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AB9D80 80042BE0 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AB9D84 80042BE4 8FA5002C */  lw    $a1, 0x2c($sp)
.L80042BE8:
/* AB9D88 80042BE8 844C0E82 */  lh    $t4, 0xe82($v0)
/* AB9D8C 80042BEC 8FA40028 */  lw    $a0, 0x28($sp)
/* AB9D90 80042BF0 24A60050 */  addiu $a2, $a1, 0x50
/* AB9D94 80042BF4 1180000D */  beqz  $t4, .L80042C2C
/* AB9D98 80042BF8 8FAD0030 */   lw    $t5, 0x30($sp)
/* AB9D9C 80042BFC 000D7080 */  sll   $t6, $t5, 2
/* AB9DA0 80042C00 01CD7023 */  subu  $t6, $t6, $t5
/* AB9DA4 80042C04 000E70C0 */  sll   $t6, $t6, 3
/* AB9DA8 80042C08 01CD7021 */  addu  $t6, $t6, $t5
/* AB9DAC 80042C0C 000E7080 */  sll   $t6, $t6, 2
/* AB9DB0 80042C10 00AE3821 */  addu  $a3, $a1, $t6
/* AB9DB4 80042C14 240F00FF */  li    $t7, 255
/* AB9DB8 80042C18 AFAF0018 */  sw    $t7, 0x18($sp)
/* AB9DBC 80042C1C 24E70062 */  addiu $a3, $a3, 0x62
/* AB9DC0 80042C20 AFA00010 */  sw    $zero, 0x10($sp)
/* AB9DC4 80042C24 0C010A1A */  jal   func_80042868
/* AB9DC8 80042C28 AFA00014 */   sw    $zero, 0x14($sp)
.L80042C2C:
/* AB9DCC 80042C2C 8FBF0024 */  lw    $ra, 0x24($sp)
/* AB9DD0 80042C30 27BD0028 */  addiu $sp, $sp, 0x28
/* AB9DD4 80042C34 03E00008 */  jr    $ra
/* AB9DD8 80042C38 00000000 */   nop   

