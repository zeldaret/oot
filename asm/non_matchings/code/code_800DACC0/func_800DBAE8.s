glabel func_800DBAE8
/* B52C88 800DBAE8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B52C8C 800DBAEC AFBF0014 */  sw    $ra, 0x14($sp)
/* B52C90 800DBAF0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B52C94 800DBAF4 AFA60030 */  sw    $a2, 0x30($sp)
/* B52C98 800DBAF8 80AF0005 */  lb    $t7, 5($a1)
/* B52C9C 800DBAFC 3C088017 */  lui   $t0, %hi(gAudioContext) # $t0, 0x8017
/* B52CA0 800DBB00 2508F180 */  addiu $t0, %lo(gAudioContext) # addiu $t0, $t0, -0xe80
/* B52CA4 800DBB04 000FC080 */  sll   $t8, $t7, 2
/* B52CA8 800DBB08 030FC023 */  subu  $t8, $t8, $t7
/* B52CAC 800DBB0C 0018C080 */  sll   $t8, $t8, 2
/* B52CB0 800DBB10 030FC023 */  subu  $t8, $t8, $t7
/* B52CB4 800DBB14 0018C0C0 */  sll   $t8, $t8, 3
/* B52CB8 800DBB18 030FC021 */  addu  $t8, $t8, $t7
/* B52CBC 800DBB1C 0018C0C0 */  sll   $t8, $t8, 3
/* B52CC0 800DBB20 27190018 */  addiu $t9, $t8, 0x18
/* B52CC4 800DBB24 03283821 */  addu  $a3, $t9, $t0
/* B52CC8 800DBB28 90E90004 */  lbu   $t1, 4($a3)
/* B52CCC 800DBB2C 24010001 */  li    $at, 1
/* B52CD0 800DBB30 00E02825 */  move  $a1, $a3
/* B52CD4 800DBB34 15210012 */  bne   $t1, $at, .L800DBB80
/* B52CD8 800DBB38 87A60032 */   lh    $a2, 0x32($sp)
/* B52CDC 800DBB3C AFA6001C */  sw    $a2, 0x1c($sp)
/* B52CE0 800DBB40 0C036CCC */  jal   func_800DB330
/* B52CE4 800DBB44 AFA70024 */   sw    $a3, 0x24($sp)
/* B52CE8 800DBB48 8FAA002C */  lw    $t2, 0x2c($sp)
/* B52CEC 800DBB4C 3C010C34 */  lui   $at, 0xc34
/* B52CF0 800DBB50 3C0E0C80 */  lui   $t6, (0x0C8003E0 >> 16) # lui $t6, 0xc80
/* B52CF4 800DBB54 854B0008 */  lh    $t3, 8($t2)
/* B52CF8 800DBB58 8FA6001C */  lw    $a2, 0x1c($sp)
/* B52CFC 800DBB5C 8FA50024 */  lw    $a1, 0x24($sp)
/* B52D00 800DBB60 316CFFFF */  andi  $t4, $t3, 0xffff
/* B52D04 800DBB64 01816825 */  or    $t5, $t4, $at
/* B52D08 800DBB68 35CE03E0 */  ori   $t6, (0x0C8003E0 & 0xFFFF) # ori $t6, $t6, 0x3e0
/* B52D0C 800DBB6C AC4E0004 */  sw    $t6, 4($v0)
/* B52D10 800DBB70 AC4D0000 */  sw    $t5, ($v0)
/* B52D14 800DBB74 0C036CF6 */  jal   func_800DB3D8
/* B52D18 800DBB78 24440008 */   addiu $a0, $v0, 8
/* B52D1C 800DBB7C 00402025 */  move  $a0, $v0
.L800DBB80:
/* B52D20 800DBB80 8FBF0014 */  lw    $ra, 0x14($sp)
/* B52D24 800DBB84 27BD0028 */  addiu $sp, $sp, 0x28
/* B52D28 800DBB88 00801025 */  move  $v0, $a0
/* B52D2C 800DBB8C 03E00008 */  jr    $ra
/* B52D30 800DBB90 00000000 */   nop

