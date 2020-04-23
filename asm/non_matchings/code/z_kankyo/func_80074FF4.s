glabel func_80074FF4
/* AEC194 80074FF4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AEC198 80074FF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AEC19C 80074FFC AFA40038 */  sw    $a0, 0x38($sp)
/* AEC1A0 80075000 AFA5003C */  sw    $a1, 0x3c($sp)
/* AEC1A4 80075004 AFA60040 */  sw    $a2, 0x40($sp)
/* AEC1A8 80075008 AFA70044 */  sw    $a3, 0x44($sp)
/* AEC1AC 8007500C 8C850000 */  lw    $a1, ($a0)
/* AEC1B0 80075010 3C068014 */  lui   $a2, %hi(D_8013C64C) # $a2, 0x8014
/* AEC1B4 80075014 24C6C64C */  addiu $a2, %lo(D_8013C64C) # addiu $a2, $a2, -0x39b4
/* AEC1B8 80075018 27A40024 */  addiu $a0, $sp, 0x24
/* AEC1BC 8007501C 24070BFD */  li    $a3, 3069
/* AEC1C0 80075020 0C031AB1 */  jal   Graph_OpenDisps
/* AEC1C4 80075024 AFA50034 */   sw    $a1, 0x34($sp)
/* AEC1C8 80075028 8FAF0038 */  lw    $t7, 0x38($sp)
/* AEC1CC 8007502C 0C024E2D */  jal   func_800938B4
/* AEC1D0 80075030 8DE40000 */   lw    $a0, ($t7)
/* AEC1D4 80075034 8FA80034 */  lw    $t0, 0x34($sp)
/* AEC1D8 80075038 3C19FA00 */  lui   $t9, 0xfa00
/* AEC1DC 8007503C 3C068014 */  lui   $a2, %hi(D_8013C65C) # $a2, 0x8014
/* AEC1E0 80075040 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* AEC1E4 80075044 24C6C65C */  addiu $a2, %lo(D_8013C65C) # addiu $a2, $a2, -0x39a4
/* AEC1E8 80075048 27A40024 */  addiu $a0, $sp, 0x24
/* AEC1EC 8007504C 24780008 */  addiu $t8, $v1, 8
/* AEC1F0 80075050 AD1802C0 */  sw    $t8, 0x2c0($t0)
/* AEC1F4 80075054 AC790000 */  sw    $t9, ($v1)
/* AEC1F8 80075058 93AD0043 */  lbu   $t5, 0x43($sp)
/* AEC1FC 8007505C 93AA003F */  lbu   $t2, 0x3f($sp)
/* AEC200 80075060 93B90047 */  lbu   $t9, 0x47($sp)
/* AEC204 80075064 000D7400 */  sll   $t6, $t5, 0x10
/* AEC208 80075068 93AD004B */  lbu   $t5, 0x4b($sp)
/* AEC20C 8007506C 000A5E00 */  sll   $t3, $t2, 0x18
/* AEC210 80075070 016E7825 */  or    $t7, $t3, $t6
/* AEC214 80075074 00194A00 */  sll   $t1, $t9, 8
/* AEC218 80075078 01E95025 */  or    $t2, $t7, $t1
/* AEC21C 8007507C 014D5825 */  or    $t3, $t2, $t5
/* AEC220 80075080 AC6B0004 */  sw    $t3, 4($v1)
/* AEC224 80075084 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* AEC228 80075088 3C18F64F */  lui   $t8, (0xF64FC3BC >> 16) # lui $t8, 0xf64f
/* AEC22C 8007508C 3718C3BC */  ori   $t8, (0xF64FC3BC & 0xFFFF) # ori $t8, $t8, 0xc3bc
/* AEC230 80075090 246E0008 */  addiu $t6, $v1, 8
/* AEC234 80075094 AD0E02C0 */  sw    $t6, 0x2c0($t0)
/* AEC238 80075098 AC600004 */  sw    $zero, 4($v1)
/* AEC23C 8007509C AC780000 */  sw    $t8, ($v1)
/* AEC240 800750A0 8FB90038 */  lw    $t9, 0x38($sp)
/* AEC244 800750A4 24070C07 */  li    $a3, 3079
/* AEC248 800750A8 0C031AD5 */  jal   Graph_CloseDisps
/* AEC24C 800750AC 8F250000 */   lw    $a1, ($t9)
/* AEC250 800750B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AEC254 800750B4 27BD0038 */  addiu $sp, $sp, 0x38
/* AEC258 800750B8 03E00008 */  jr    $ra
/* AEC25C 800750BC 00000000 */   nop   

