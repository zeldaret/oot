glabel func_80039000
/* AB01A0 80039000 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AB01A4 80039004 AFA60048 */  sw    $a2, 0x48($sp)
/* AB01A8 80039008 AFBF002C */  sw    $ra, 0x2c($sp)
/* AB01AC 8003900C 3C068016 */  lui   $a2, %hi(D_8015BCA8) # $a2, 0x8016
/* AB01B0 80039010 AFA40040 */  sw    $a0, 0x40($sp)
/* AB01B4 80039014 AFA7004C */  sw    $a3, 0x4c($sp)
/* AB01B8 80039018 0C00E2F8 */  jal   func_80038BE0
/* AB01BC 8003901C 24C6BCA8 */   addiu $a2, %lo(D_8015BCA8) # addiu $a2, $a2, -0x4358
/* AB01C0 80039020 8FA40040 */  lw    $a0, 0x40($sp)
/* AB01C4 80039024 27A5003C */  addiu $a1, $sp, 0x3c
/* AB01C8 80039028 27A60038 */  addiu $a2, $sp, 0x38
/* AB01CC 8003902C 0C00E275 */  jal   func_800389D4
/* AB01D0 80039030 27A70034 */   addiu $a3, $sp, 0x34
/* AB01D4 80039034 C7A40038 */  lwc1  $f4, 0x38($sp)
/* AB01D8 80039038 C7A60034 */  lwc1  $f6, 0x34($sp)
/* AB01DC 8003903C 8FAE0040 */  lw    $t6, 0x40($sp)
/* AB01E0 80039040 E7A40010 */  swc1  $f4, 0x10($sp)
/* AB01E4 80039044 E7A60014 */  swc1  $f6, 0x14($sp)
/* AB01E8 80039048 85CF000E */  lh    $t7, 0xe($t6)
/* AB01EC 8003904C C7B00048 */  lwc1  $f16, 0x48($sp)
/* AB01F0 80039050 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* AB01F4 80039054 448F4000 */  mtc1  $t7, $f8
/* AB01F8 80039058 8FB80050 */  lw    $t8, 0x50($sp)
/* AB01FC 8003905C 3C048016 */  lui   $a0, %hi(D_8015BCA8) # $a0, 0x8016
/* AB0200 80039060 468042A0 */  cvt.s.w $f10, $f8
/* AB0204 80039064 3C058016 */  lui   $a1, %hi(D_8015BCB4) # $a1, 0x8016
/* AB0208 80039068 3C068016 */  lui   $a2, %hi(D_8015BCC0) # $a2, 0x8016
/* AB020C 8003906C 24C6BCC0 */  addiu $a2, %lo(D_8015BCC0) # addiu $a2, $a2, -0x4340
/* AB0210 80039070 24A5BCB4 */  addiu $a1, %lo(D_8015BCB4) # addiu $a1, $a1, -0x434c
/* AB0214 80039074 2484BCA8 */  addiu $a0, %lo(D_8015BCA8) # addiu $a0, $a0, -0x4358
/* AB0218 80039078 E7AA0018 */  swc1  $f10, 0x18($sp)
/* AB021C 8003907C 8FA7003C */  lw    $a3, 0x3c($sp)
/* AB0220 80039080 E7B0001C */  swc1  $f16, 0x1c($sp)
/* AB0224 80039084 E7B20020 */  swc1  $f18, 0x20($sp)
/* AB0228 80039088 0C033758 */  jal   Math3D_TriChkPointParaZIntersect
/* AB022C 8003908C AFB80024 */   sw    $t8, 0x24($sp)
/* AB0230 80039090 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB0234 80039094 27BD0040 */  addiu $sp, $sp, 0x40
/* AB0238 80039098 03E00008 */  jr    $ra
/* AB023C 8003909C 00000000 */   nop   

