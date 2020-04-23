glabel guLookAtReflect
/* B78FD4 80101E34 27BDFF90 */  addiu $sp, $sp, -0x70
/* B78FD8 80101E38 44856000 */  mtc1  $a1, $f12
/* B78FDC 80101E3C 44867000 */  mtc1  $a2, $f14
/* B78FE0 80101E40 C7A40080 */  lwc1  $f4, 0x80($sp)
/* B78FE4 80101E44 C7A60084 */  lwc1  $f6, 0x84($sp)
/* B78FE8 80101E48 C7A80088 */  lwc1  $f8, 0x88($sp)
/* B78FEC 80101E4C C7AA008C */  lwc1  $f10, 0x8c($sp)
/* B78FF0 80101E50 C7B00090 */  lwc1  $f16, 0x90($sp)
/* B78FF4 80101E54 C7B20094 */  lwc1  $f18, 0x94($sp)
/* B78FF8 80101E58 AFBF002C */  sw    $ra, 0x2c($sp)
/* B78FFC 80101E5C AFA40070 */  sw    $a0, 0x70($sp)
/* B79000 80101E60 44056000 */  mfc1  $a1, $f12
/* B79004 80101E64 44067000 */  mfc1  $a2, $f14
/* B79008 80101E68 AFA7007C */  sw    $a3, 0x7c($sp)
/* B7900C 80101E6C 27A40030 */  addiu $a0, $sp, 0x30
/* B79010 80101E70 E7A40010 */  swc1  $f4, 0x10($sp)
/* B79014 80101E74 E7A60014 */  swc1  $f6, 0x14($sp)
/* B79018 80101E78 E7A80018 */  swc1  $f8, 0x18($sp)
/* B7901C 80101E7C E7AA001C */  swc1  $f10, 0x1c($sp)
/* B79020 80101E80 E7B00020 */  swc1  $f16, 0x20($sp)
/* B79024 80101E84 0C0406E4 */  jal   guLookAtReflectF
/* B79028 80101E88 E7B20024 */   swc1  $f18, 0x24($sp)
/* B7902C 80101E8C 27A40030 */  addiu $a0, $sp, 0x30
/* B79030 80101E90 0C041938 */  jal   func_801064E0
/* B79034 80101E94 8FA50070 */   lw    $a1, 0x70($sp)
/* B79038 80101E98 8FBF002C */  lw    $ra, 0x2c($sp)
/* B7903C 80101E9C 27BD0070 */  addiu $sp, $sp, 0x70
/* B79040 80101EA0 03E00008 */  jr    $ra
/* B79044 80101EA4 00000000 */   nop   
