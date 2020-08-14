glabel func_80038F60
/* AB0100 80038F60 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AB0104 80038F64 AFA60048 */  sw    $a2, 0x48($sp)
/* AB0108 80038F68 AFBF002C */  sw    $ra, 0x2c($sp)
/* AB010C 80038F6C 3C068016 */  lui   $a2, %hi(D_8015BC80) # $a2, 0x8016
/* AB0110 80038F70 AFA40040 */  sw    $a0, 0x40($sp)
/* AB0114 80038F74 AFA7004C */  sw    $a3, 0x4c($sp)
/* AB0118 80038F78 0C00E2F8 */  jal   func_80038BE0
/* AB011C 80038F7C 24C6BC80 */   addiu $a2, %lo(D_8015BC80) # addiu $a2, $a2, -0x4380
/* AB0120 80038F80 8FA40040 */  lw    $a0, 0x40($sp)
/* AB0124 80038F84 27A5003C */  addiu $a1, $sp, 0x3c
/* AB0128 80038F88 27A60038 */  addiu $a2, $sp, 0x38
/* AB012C 80038F8C 0C00E275 */  jal   func_800389D4
/* AB0130 80038F90 27A70034 */   addiu $a3, $sp, 0x34
/* AB0134 80038F94 C7A40038 */  lwc1  $f4, 0x38($sp)
/* AB0138 80038F98 C7A60034 */  lwc1  $f6, 0x34($sp)
/* AB013C 80038F9C 8FAE0040 */  lw    $t6, 0x40($sp)
/* AB0140 80038FA0 E7A40010 */  swc1  $f4, 0x10($sp)
/* AB0144 80038FA4 E7A60014 */  swc1  $f6, 0x14($sp)
/* AB0148 80038FA8 85CF000E */  lh    $t7, 0xe($t6)
/* AB014C 80038FAC C7B00048 */  lwc1  $f16, 0x48($sp)
/* AB0150 80038FB0 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* AB0154 80038FB4 448F4000 */  mtc1  $t7, $f8
/* AB0158 80038FB8 8FB80050 */  lw    $t8, 0x50($sp)
/* AB015C 80038FBC 3C048016 */  lui   $a0, %hi(D_8015BC80) # $a0, 0x8016
/* AB0160 80038FC0 468042A0 */  cvt.s.w $f10, $f8
/* AB0164 80038FC4 3C058016 */  lui   $a1, %hi(D_8015BC8C) # $a1, 0x8016
/* AB0168 80038FC8 3C068016 */  lui   $a2, %hi(D_8015BC98) # $a2, 0x8016
/* AB016C 80038FCC 24C6BC98 */  addiu $a2, %lo(D_8015BC98) # addiu $a2, $a2, -0x4368
/* AB0170 80038FD0 24A5BC8C */  addiu $a1, %lo(D_8015BC8C) # addiu $a1, $a1, -0x4374
/* AB0174 80038FD4 2484BC80 */  addiu $a0, %lo(D_8015BC80) # addiu $a0, $a0, -0x4380
/* AB0178 80038FD8 E7AA0018 */  swc1  $f10, 0x18($sp)
/* AB017C 80038FDC 8FA7003C */  lw    $a3, 0x3c($sp)
/* AB0180 80038FE0 E7B0001C */  swc1  $f16, 0x1c($sp)
/* AB0184 80038FE4 E7B20020 */  swc1  $f18, 0x20($sp)
/* AB0188 80038FE8 0C0335AC */  jal   Math3D_TriChkPointParaXIntersect
/* AB018C 80038FEC AFB80024 */   sw    $t8, 0x24($sp)
/* AB0190 80038FF0 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB0194 80038FF4 27BD0040 */  addiu $sp, $sp, 0x40
/* AB0198 80038FF8 03E00008 */  jr    $ra
/* AB019C 80038FFC 00000000 */   nop   

