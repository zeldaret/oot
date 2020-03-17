.rdata
glabel D_8013AD54
    .asciz "%s%02d%6d"
    .balign 4

.text
glabel func_80063C04
/* ADADA4 80063C04 27BDFFA0 */  addiu $sp, $sp, -0x60
/* ADADA8 80063C08 AFB30028 */  sw    $s3, 0x28($sp)
/* ADADAC 80063C0C 3C138016 */  lui   $s3, %hi(gGameInfo) # $s3, 0x8016
/* ADADB0 80063C10 2673FA90 */  addiu $s3, %lo(gGameInfo) # addiu $s3, $s3, -0x570
/* ADADB4 80063C14 8E620000 */  lw    $v0, ($s3)
/* ADADB8 80063C18 AFBF003C */  sw    $ra, 0x3c($sp)
/* ADADBC 80063C1C AFB70038 */  sw    $s7, 0x38($sp)
/* ADADC0 80063C20 AFB60034 */  sw    $s6, 0x34($sp)
/* ADADC4 80063C24 AFB50030 */  sw    $s5, 0x30($sp)
/* ADADC8 80063C28 AFB4002C */  sw    $s4, 0x2c($sp)
/* ADADCC 80063C2C AFB20024 */  sw    $s2, 0x24($sp)
/* ADADD0 80063C30 AFB10020 */  sw    $s1, 0x20($sp)
/* ADADD4 80063C34 AFB0001C */  sw    $s0, 0x1c($sp)
/* ADADD8 80063C38 8C4E0004 */  lw    $t6, 4($v0)
/* ADADDC 80063C3C 8C430000 */  lw    $v1, ($v0)
/* ADADE0 80063C40 24180052 */  li    $t8, 82
/* ADADE4 80063C44 A3B8004C */  sb    $t8, 0x4c($sp)
/* ADADE8 80063C48 8C590004 */  lw    $t9, 4($v0)
/* ADADEC 80063C4C 000E7880 */  sll   $t7, $t6, 2
/* ADADF0 80063C50 3C088012 */  lui   $t0, %hi(D_8011E148)
/* ADADF4 80063C54 01EE7823 */  subu  $t7, $t7, $t6
/* ADADF8 80063C58 000F7840 */  sll   $t7, $t7, 1
/* ADADFC 80063C5C 01194021 */  addu  $t0, $t0, $t9
/* ADAE00 80063C60 9108E148 */  lbu   $t0, %lo(D_8011E148)($t0)
/* ADAE04 80063C64 01E3A821 */  addu  $s5, $t7, $v1
/* ADAE08 80063C68 0015A900 */  sll   $s5, $s5, 4
/* ADAE0C 80063C6C 24090080 */  li    $t1, 128
/* ADAE10 80063C70 0003A100 */  sll   $s4, $v1, 4
/* ADAE14 80063C74 00808825 */  move  $s1, $a0
/* ADAE18 80063C78 2694FFF0 */  addiu $s4, $s4, -0x10
/* ADAE1C 80063C7C 26B5FFF0 */  addiu $s5, $s5, -0x10
/* ADAE20 80063C80 A3A0004E */  sb    $zero, 0x4e($sp)
/* ADAE24 80063C84 AFA90010 */  sw    $t1, 0x10($sp)
/* ADAE28 80063C88 00002825 */  move  $a1, $zero
/* ADAE2C 80063C8C 24060080 */  li    $a2, 128
/* ADAE30 80063C90 24070080 */  li    $a3, 128
/* ADAE34 80063C94 0C03ECEB */  jal   GfxPrint_SetColor
/* ADAE38 80063C98 A3A8004D */   sb    $t0, 0x4d($sp)
/* ADAE3C 80063C9C 02809025 */  move  $s2, $s4
/* ADAE40 80063CA0 3C148014 */  lui   $s4, %hi(D_8013AD54) # $s4, 0x8014
/* ADAE44 80063CA4 0015B840 */  sll   $s7, $s5, 1
/* ADAE48 80063CA8 27B5004C */  addiu $s5, $sp, 0x4c
/* ADAE4C 80063CAC 2694AD54 */  addiu $s4, %lo(D_8013AD54) # addiu $s4, $s4, -0x52ac
/* ADAE50 80063CB0 00008025 */  move  $s0, $zero
/* ADAE54 80063CB4 24160010 */  li    $s6, 16
.L80063CB8:
/* ADAE58 80063CB8 8E6A0000 */  lw    $t2, ($s3)
/* ADAE5C 80063CBC 02202025 */  move  $a0, $s1
/* ADAE60 80063CC0 00002825 */  move  $a1, $zero
/* ADAE64 80063CC4 8D4B0008 */  lw    $t3, 8($t2)
/* ADAE68 80063CC8 240600FF */  li    $a2, 255
/* ADAE6C 80063CCC 240700FF */  li    $a3, 255
/* ADAE70 80063CD0 160B0003 */  bne   $s0, $t3, .L80063CE0
/* ADAE74 80063CD4 240C00FF */   li    $t4, 255
/* ADAE78 80063CD8 0C03ECEB */  jal   GfxPrint_SetColor
/* ADAE7C 80063CDC AFAC0010 */   sw    $t4, 0x10($sp)
.L80063CE0:
/* ADAE80 80063CE0 02202025 */  move  $a0, $s1
/* ADAE84 80063CE4 24050003 */  li    $a1, 3
/* ADAE88 80063CE8 0C03ED07 */  jal   GfxPrint_SetPos
/* ADAE8C 80063CEC 26060005 */   addiu $a2, $s0, 5
/* ADAE90 80063CF0 8E6D0000 */  lw    $t5, ($s3)
/* ADAE94 80063CF4 00107040 */  sll   $t6, $s0, 1
/* ADAE98 80063CF8 02202025 */  move  $a0, $s1
/* ADAE9C 80063CFC 01AE7821 */  addu  $t7, $t5, $t6
/* ADAEA0 80063D00 01F7C021 */  addu  $t8, $t7, $s7
/* ADAEA4 80063D04 87190014 */  lh    $t9, 0x14($t8)
/* ADAEA8 80063D08 02802825 */  move  $a1, $s4
/* ADAEAC 80063D0C 02A03025 */  move  $a2, $s5
/* ADAEB0 80063D10 02403825 */  move  $a3, $s2
/* ADAEB4 80063D14 0C03EF2D */  jal   GfxPrint_Printf
/* ADAEB8 80063D18 AFB90010 */   sw    $t9, 0x10($sp)
/* ADAEBC 80063D1C 8E680000 */  lw    $t0, ($s3)
/* ADAEC0 80063D20 02202025 */  move  $a0, $s1
/* ADAEC4 80063D24 00002825 */  move  $a1, $zero
/* ADAEC8 80063D28 8D090008 */  lw    $t1, 8($t0)
/* ADAECC 80063D2C 24060080 */  li    $a2, 128
/* ADAED0 80063D30 24070080 */  li    $a3, 128
/* ADAED4 80063D34 16090003 */  bne   $s0, $t1, .L80063D44
/* ADAED8 80063D38 240A0080 */   li    $t2, 128
/* ADAEDC 80063D3C 0C03ECEB */  jal   GfxPrint_SetColor
/* ADAEE0 80063D40 AFAA0010 */   sw    $t2, 0x10($sp)
.L80063D44:
/* ADAEE4 80063D44 26100001 */  addiu $s0, $s0, 1
/* ADAEE8 80063D48 1616FFDB */  bne   $s0, $s6, .L80063CB8
/* ADAEEC 80063D4C 26520001 */   addiu $s2, $s2, 1
/* ADAEF0 80063D50 8FBF003C */  lw    $ra, 0x3c($sp)
/* ADAEF4 80063D54 8FB0001C */  lw    $s0, 0x1c($sp)
/* ADAEF8 80063D58 8FB10020 */  lw    $s1, 0x20($sp)
/* ADAEFC 80063D5C 8FB20024 */  lw    $s2, 0x24($sp)
/* ADAF00 80063D60 8FB30028 */  lw    $s3, 0x28($sp)
/* ADAF04 80063D64 8FB4002C */  lw    $s4, 0x2c($sp)
/* ADAF08 80063D68 8FB50030 */  lw    $s5, 0x30($sp)
/* ADAF0C 80063D6C 8FB60034 */  lw    $s6, 0x34($sp)
/* ADAF10 80063D70 8FB70038 */  lw    $s7, 0x38($sp)
/* ADAF14 80063D74 03E00008 */  jr    $ra
/* ADAF18 80063D78 27BD0060 */   addiu $sp, $sp, 0x60

