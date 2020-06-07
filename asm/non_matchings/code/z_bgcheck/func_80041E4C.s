glabel func_80041E4C
/* AB8FEC 80041E4C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB8FF0 80041E50 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB8FF4 80041E54 0C01076E */  jal   func_80041DB8
/* AB8FF8 80041E58 00000000 */   nop   
/* AB8FFC 80041E5C 304E0004 */  andi  $t6, $v0, 4
/* AB9000 80041E60 11C00003 */  beqz  $t6, .L80041E70
/* AB9004 80041E64 8FBF0014 */   lw    $ra, 0x14($sp)
/* AB9008 80041E68 10000002 */  b     .L80041E74
/* AB900C 80041E6C 24030001 */   li    $v1, 1
.L80041E70:
/* AB9010 80041E70 00001825 */  move  $v1, $zero
.L80041E74:
/* AB9014 80041E74 00601025 */  move  $v0, $v1
/* AB9018 80041E78 03E00008 */  jr    $ra
/* AB901C 80041E7C 27BD0018 */   addiu $sp, $sp, 0x18

/* AB9020 80041E80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB9024 80041E84 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB9028 80041E88 0C01066C */  jal   func_800419B0
/* AB902C 80041E8C 00003825 */   move  $a3, $zero
/* AB9030 80041E90 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB9034 80041E94 00021682 */  srl   $v0, $v0, 0x1a
/* AB9038 80041E98 3042000F */  andi  $v0, $v0, 0xf
/* AB903C 80041E9C 03E00008 */  jr    $ra
/* AB9040 80041EA0 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_80041EA4
/* AB9044 80041EA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB9048 80041EA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB904C 80041EAC 0C01066C */  jal   func_800419B0
/* AB9050 80041EB0 00003825 */   move  $a3, $zero
/* AB9054 80041EB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB9058 80041EB8 00021682 */  srl   $v0, $v0, 0x1a
/* AB905C 80041EBC 3042000F */  andi  $v0, $v0, 0xf
/* AB9060 80041EC0 03E00008 */  jr    $ra
/* AB9064 80041EC4 27BD0018 */   addiu $sp, $sp, 0x18

