glabel func_80038E78
/* AB0018 80038E78 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AB001C 80038E7C AFA60050 */  sw    $a2, 0x50($sp)
/* AB0020 80038E80 AFBF0034 */  sw    $ra, 0x34($sp)
/* AB0024 80038E84 3C068016 */  lui   $a2, %hi(D_8015BC58) # $a2, 0x8016
/* AB0028 80038E88 AFA40048 */  sw    $a0, 0x48($sp)
/* AB002C 80038E8C AFA70054 */  sw    $a3, 0x54($sp)
/* AB0030 80038E90 0C00E2F8 */  jal   func_80038BE0
/* AB0034 80038E94 24C6BC58 */   addiu $a2, %lo(D_8015BC58) # addiu $a2, $a2, -0x43a8
/* AB0038 80038E98 8FA40048 */  lw    $a0, 0x48($sp)
/* AB003C 80038E9C 27A50044 */  addiu $a1, $sp, 0x44
/* AB0040 80038EA0 27A60040 */  addiu $a2, $sp, 0x40
/* AB0044 80038EA4 0C00E275 */  jal   func_800389D4
/* AB0048 80038EA8 27A7003C */   addiu $a3, $sp, 0x3c
/* AB004C 80038EAC C7A40040 */  lwc1  $f4, 0x40($sp)
/* AB0050 80038EB0 C7A6003C */  lwc1  $f6, 0x3c($sp)
/* AB0054 80038EB4 8FAE0048 */  lw    $t6, 0x48($sp)
/* AB0058 80038EB8 E7A40010 */  swc1  $f4, 0x10($sp)
/* AB005C 80038EBC E7A60014 */  swc1  $f6, 0x14($sp)
/* AB0060 80038EC0 85CF000E */  lh    $t7, 0xe($t6)
/* AB0064 80038EC4 C7A4005C */  lwc1  $f4, 0x5c($sp)
/* AB0068 80038EC8 C7B00054 */  lwc1  $f16, 0x54($sp)
/* AB006C 80038ECC 448F4000 */  mtc1  $t7, $f8
/* AB0070 80038ED0 C7B20050 */  lwc1  $f18, 0x50($sp)
/* AB0074 80038ED4 8FB80058 */  lw    $t8, 0x58($sp)
/* AB0078 80038ED8 468042A0 */  cvt.s.w $f10, $f8
/* AB007C 80038EDC 3C048016 */  lui   $a0, %hi(D_8015BC58) # $a0, 0x8016
/* AB0080 80038EE0 3C058016 */  lui   $a1, %hi(D_8015BC64) # $a1, 0x8016
/* AB0084 80038EE4 3C068016 */  lui   $a2, %hi(D_8015BC70) # $a2, 0x8016
/* AB0088 80038EE8 24C6BC70 */  addiu $a2, %lo(D_8015BC70) # addiu $a2, $a2, -0x4390
/* AB008C 80038EEC 24A5BC64 */  addiu $a1, %lo(D_8015BC64) # addiu $a1, $a1, -0x439c
/* AB0090 80038EF0 2484BC58 */  addiu $a0, %lo(D_8015BC58) # addiu $a0, $a0, -0x43a8
/* AB0094 80038EF4 E7AA0018 */  swc1  $f10, 0x18($sp)
/* AB0098 80038EF8 8FA70044 */  lw    $a3, 0x44($sp)
/* AB009C 80038EFC E7A40028 */  swc1  $f4, 0x28($sp)
/* AB00A0 80038F00 E7B0001C */  swc1  $f16, 0x1c($sp)
/* AB00A4 80038F04 E7B20020 */  swc1  $f18, 0x20($sp)
/* AB00A8 80038F08 0C033411 */  jal   Math3D_TriChkPointParaYIntersectInsideTri
/* AB00AC 80038F0C AFB80024 */   sw    $t8, 0x24($sp)
/* AB00B0 80038F10 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB00B4 80038F14 27BD0048 */  addiu $sp, $sp, 0x48
/* AB00B8 80038F18 03E00008 */  jr    $ra
/* AB00BC 80038F1C 00000000 */   nop   

