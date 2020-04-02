.text
glabel func_8006110C
/* AD82AC 8006110C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AD82B0 80061110 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD82B4 80061114 AFA40038 */  sw    $a0, 0x38($sp)
/* AD82B8 80061118 AFA5003C */  sw    $a1, 0x3c($sp)
/* AD82BC 8006111C 90CE002E */  lbu   $t6, 0x2e($a2)
/* AD82C0 80061120 31CF0080 */  andi  $t7, $t6, 0x80
/* AD82C4 80061124 51E0001B */  beql  $t7, $zero, .L80061194
/* AD82C8 80061128 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD82CC 8006112C 8CC2003C */  lw    $v0, 0x3c($a2)
/* AD82D0 80061130 50400018 */  beql  $v0, $zero, .L80061194
/* AD82D4 80061134 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD82D8 80061138 90580015 */  lbu   $t8, 0x15($v0)
/* AD82DC 8006113C 27A40028 */  addiu $a0, $sp, 0x28
/* AD82E0 80061140 24C50026 */  addiu $a1, $a2, 0x26
/* AD82E4 80061144 33190040 */  andi  $t9, $t8, 0x40
/* AD82E8 80061148 57200012 */  bnezl $t9, .L80061194
/* AD82EC 8006114C 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD82F0 80061150 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* AD82F4 80061154 AFA60040 */   sw    $a2, 0x40($sp)
/* AD82F8 80061158 8FA70040 */  lw    $a3, 0x40($sp)
/* AD82FC 8006115C 27A90028 */  addiu $t1, $sp, 0x28
/* AD8300 80061160 8FA40038 */  lw    $a0, 0x38($sp)
/* AD8304 80061164 8CE50034 */  lw    $a1, 0x34($a3)
/* AD8308 80061168 8CE6003C */  lw    $a2, 0x3c($a3)
/* AD830C 8006116C 24E80018 */  addiu $t0, $a3, 0x18
/* AD8310 80061170 AFA80010 */  sw    $t0, 0x10($sp)
/* AD8314 80061174 0C017981 */  jal   func_8005E604
/* AD8318 80061178 AFA90014 */   sw    $t1, 0x14($sp)
/* AD831C 8006117C 8FA70040 */  lw    $a3, 0x40($sp)
/* AD8320 80061180 8CE2003C */  lw    $v0, 0x3c($a3)
/* AD8324 80061184 904A0015 */  lbu   $t2, 0x15($v0)
/* AD8328 80061188 354B0040 */  ori   $t3, $t2, 0x40
/* AD832C 8006118C A04B0015 */  sb    $t3, 0x15($v0)
/* AD8330 80061190 8FBF001C */  lw    $ra, 0x1c($sp)
.L80061194:
/* AD8334 80061194 27BD0038 */  addiu $sp, $sp, 0x38
/* AD8338 80061198 03E00008 */  jr    $ra
/* AD833C 8006119C 00000000 */   nop   

