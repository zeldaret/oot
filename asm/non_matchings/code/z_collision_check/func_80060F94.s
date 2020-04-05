.text
glabel func_80060F94
/* AD8134 80060F94 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AD8138 80060F98 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD813C 80060F9C AFA40038 */  sw    $a0, 0x38($sp)
/* AD8140 80060FA0 AFA5003C */  sw    $a1, 0x3c($sp)
/* AD8144 80060FA4 90CE002E */  lbu   $t6, 0x2e($a2)
/* AD8148 80060FA8 31CF0080 */  andi  $t7, $t6, 0x80
/* AD814C 80060FAC 51E0001B */  beql  $t7, $zero, .L8006101C
/* AD8150 80060FB0 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD8154 80060FB4 8CC2003C */  lw    $v0, 0x3c($a2)
/* AD8158 80060FB8 50400018 */  beql  $v0, $zero, .L8006101C
/* AD815C 80060FBC 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD8160 80060FC0 90580015 */  lbu   $t8, 0x15($v0)
/* AD8164 80060FC4 27A40028 */  addiu $a0, $sp, 0x28
/* AD8168 80060FC8 24C50026 */  addiu $a1, $a2, 0x26
/* AD816C 80060FCC 33190040 */  andi  $t9, $t8, 0x40
/* AD8170 80060FD0 57200012 */  bnezl $t9, .L8006101C
/* AD8174 80060FD4 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD8178 80060FD8 0C01DF97 */  jal   Math_Vec3s_ToVec3f
/* AD817C 80060FDC AFA60040 */   sw    $a2, 0x40($sp)
/* AD8180 80060FE0 8FA70040 */  lw    $a3, 0x40($sp)
/* AD8184 80060FE4 27A90028 */  addiu $t1, $sp, 0x28
/* AD8188 80060FE8 8FA40038 */  lw    $a0, 0x38($sp)
/* AD818C 80060FEC 8CE50034 */  lw    $a1, 0x34($a3)
/* AD8190 80060FF0 8CE6003C */  lw    $a2, 0x3c($a3)
/* AD8194 80060FF4 24E80018 */  addiu $t0, $a3, 0x18
/* AD8198 80060FF8 AFA80010 */  sw    $t0, 0x10($sp)
/* AD819C 80060FFC 0C017981 */  jal   func_8005E604
/* AD81A0 80061000 AFA90014 */   sw    $t1, 0x14($sp)
/* AD81A4 80061004 8FA70040 */  lw    $a3, 0x40($sp)
/* AD81A8 80061008 8CE2003C */  lw    $v0, 0x3c($a3)
/* AD81AC 8006100C 904A0015 */  lbu   $t2, 0x15($v0)
/* AD81B0 80061010 354B0040 */  ori   $t3, $t2, 0x40
/* AD81B4 80061014 A04B0015 */  sb    $t3, 0x15($v0)
/* AD81B8 80061018 8FBF001C */  lw    $ra, 0x1c($sp)
.L8006101C:
/* AD81BC 8006101C 27BD0038 */  addiu $sp, $sp, 0x38
/* AD81C0 80061020 03E00008 */  jr    $ra
/* AD81C4 80061024 00000000 */   nop   
