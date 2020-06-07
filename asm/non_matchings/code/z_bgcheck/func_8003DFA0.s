glabel func_8003DFA0
/* AB5140 8003DFA0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB5144 8003DFA4 AFBF0034 */  sw    $ra, 0x34($sp)
/* AB5148 8003DFA8 AFA40038 */  sw    $a0, 0x38($sp)
/* AB514C 8003DFAC AFA5003C */  sw    $a1, 0x3c($sp)
/* AB5150 8003DFB0 AFA60040 */  sw    $a2, 0x40($sp)
/* AB5154 8003DFB4 AFA70044 */  sw    $a3, 0x44($sp)
/* AB5158 8003DFB8 240E0001 */  li    $t6, 1
/* AB515C 8003DFBC AFAE0010 */  sw    $t6, 0x10($sp)
/* AB5160 8003DFC0 8FA70058 */  lw    $a3, 0x58($sp)
/* AB5164 8003DFC4 8FA60054 */  lw    $a2, 0x54($sp)
/* AB5168 8003DFC8 8FA50050 */  lw    $a1, 0x50($sp)
/* AB516C 8003DFCC 0C00F74A */  jal   func_8003DD28
/* AB5170 8003DFD0 8FA4004C */   lw    $a0, 0x4c($sp)
/* AB5174 8003DFD4 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB5178 8003DFD8 8FB80044 */  lw    $t8, 0x44($sp)
/* AB517C 8003DFDC 8FB90048 */  lw    $t9, 0x48($sp)
/* AB5180 8003DFE0 8FA8005C */  lw    $t0, 0x5c($sp)
/* AB5184 8003DFE4 8FA90060 */  lw    $t1, 0x60($sp)
/* AB5188 8003DFE8 C7A40064 */  lwc1  $f4, 0x64($sp)
/* AB518C 8003DFEC 8FA40038 */  lw    $a0, 0x38($sp)
/* AB5190 8003DFF0 24050002 */  li    $a1, 2
/* AB5194 8003DFF4 00003025 */  move  $a2, $zero
/* AB5198 8003DFF8 8FA7003C */  lw    $a3, 0x3c($sp)
/* AB519C 8003DFFC AFA20028 */  sw    $v0, 0x28($sp)
/* AB51A0 8003E000 AFAF0010 */  sw    $t7, 0x10($sp)
/* AB51A4 8003E004 AFB80014 */  sw    $t8, 0x14($sp)
/* AB51A8 8003E008 AFB90018 */  sw    $t9, 0x18($sp)
/* AB51AC 8003E00C AFA8001C */  sw    $t0, 0x1c($sp)
/* AB51B0 8003E010 AFA90020 */  sw    $t1, 0x20($sp)
/* AB51B4 8003E014 0C00F5FC */  jal   func_8003D7F0
/* AB51B8 8003E018 E7A40024 */   swc1  $f4, 0x24($sp)
/* AB51BC 8003E01C 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB51C0 8003E020 27BD0038 */  addiu $sp, $sp, 0x38
/* AB51C4 8003E024 03E00008 */  jr    $ra
/* AB51C8 8003E028 00000000 */   nop   

