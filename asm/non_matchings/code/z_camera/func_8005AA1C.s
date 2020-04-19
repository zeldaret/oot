glabel func_8005AA1C
/* AD1BBC 8005AA1C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD1BC0 8005AA20 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD1BC4 8005AA24 AFA5002C */  sw    $a1, 0x2c($sp)
/* AD1BC8 8005AA28 AFA60030 */  sw    $a2, 0x30($sp)
/* AD1BCC 8005AA2C AFA70034 */  sw    $a3, 0x34($sp)
/* AD1BD0 8005AA30 0C024BE2 */  jal   Quake_Add
/* AD1BD4 8005AA34 24050003 */   li    $a1, 3
/* AD1BD8 8005AA38 00022400 */  sll   $a0, $v0, 0x10
/* AD1BDC 8005AA3C 14400003 */  bnez  $v0, .L8005AA4C
/* AD1BE0 8005AA40 00042403 */   sra   $a0, $a0, 0x10
/* AD1BE4 8005AA44 1000000E */  b     .L8005AA80
/* AD1BE8 8005AA48 00001025 */   move  $v0, $zero
.L8005AA4C:
/* AD1BEC 8005AA4C 240561A8 */  li    $a1, 25000
/* AD1BF0 8005AA50 0C024B6B */  jal   Quake_SetSpeed
/* AD1BF4 8005AA54 A7A40026 */   sh    $a0, 0x26($sp)
/* AD1BF8 8005AA58 87A40026 */  lh    $a0, 0x26($sp)
/* AD1BFC 8005AA5C 87A50032 */  lh    $a1, 0x32($sp)
/* AD1C00 8005AA60 00003025 */  move  $a2, $zero
/* AD1C04 8005AA64 00003825 */  move  $a3, $zero
/* AD1C08 8005AA68 0C024B9C */  jal   Quake_SetQuakeValues
/* AD1C0C 8005AA6C AFA00010 */   sw    $zero, 0x10($sp)
/* AD1C10 8005AA70 87A40026 */  lh    $a0, 0x26($sp)
/* AD1C14 8005AA74 0C024B7C */  jal   Quake_SetCountdown
/* AD1C18 8005AA78 87A50036 */   lh    $a1, 0x36($sp)
/* AD1C1C 8005AA7C 24020001 */  li    $v0, 1
.L8005AA80:
/* AD1C20 8005AA80 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD1C24 8005AA84 27BD0028 */  addiu $sp, $sp, 0x28
/* AD1C28 8005AA88 03E00008 */  jr    $ra
/* AD1C2C 8005AA8C 00000000 */   nop   

