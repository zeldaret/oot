.rdata
glabel D_801412D4
    .asciz "../z_view.c"
    .balign 4

glabel D_801412E0
    .asciz "../z_view.c"
    .balign 4

.text
glabel func_800AB944
/* B22AE4 800AB944 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B22AE8 800AB948 AFB00030 */  sw    $s0, 0x30($sp)
/* B22AEC 800AB94C 00808025 */  move  $s0, $a0
/* B22AF0 800AB950 AFBF0034 */  sw    $ra, 0x34($sp)
/* B22AF4 800AB954 3C068014 */  lui   $a2, %hi(D_801412D4) # $a2, 0x8014
/* B22AF8 800AB958 24C612D4 */  addiu $a2, %lo(D_801412D4) # addiu $a2, $a2, 0x12d4
/* B22AFC 800AB95C 8E050004 */  lw    $a1, 4($s0)
/* B22B00 800AB960 27A4003C */  addiu $a0, $sp, 0x3c
/* B22B04 800AB964 0C031AB1 */  jal   Graph_OpenDisp
/* B22B08 800AB968 2407036E */   li    $a3, 878
/* B22B0C 800AB96C C60C0028 */  lwc1  $f12, 0x28($s0)
/* B22B10 800AB970 C60E002C */  lwc1  $f14, 0x2c($s0)
/* B22B14 800AB974 0C02AF9D */  jal   func_800ABE74
/* B22B18 800AB978 8E060030 */   lw    $a2, 0x30($s0)
/* B22B1C 800AB97C C6040034 */  lwc1  $f4, 0x34($s0)
/* B22B20 800AB980 8E0400E4 */  lw    $a0, 0xe4($s0)
/* B22B24 800AB984 8E050028 */  lw    $a1, 0x28($s0)
/* B22B28 800AB988 8E06002C */  lw    $a2, 0x2c($s0)
/* B22B2C 800AB98C 8E070030 */  lw    $a3, 0x30($s0)
/* B22B30 800AB990 E7A40010 */  swc1  $f4, 0x10($sp)
/* B22B34 800AB994 C6060038 */  lwc1  $f6, 0x38($s0)
/* B22B38 800AB998 E7A60014 */  swc1  $f6, 0x14($sp)
/* B22B3C 800AB99C C608003C */  lwc1  $f8, 0x3c($s0)
/* B22B40 800AB9A0 E7A80018 */  swc1  $f8, 0x18($sp)
/* B22B44 800AB9A4 C60A0040 */  lwc1  $f10, 0x40($s0)
/* B22B48 800AB9A8 E7AA001C */  swc1  $f10, 0x1c($sp)
/* B22B4C 800AB9AC C6100044 */  lwc1  $f16, 0x44($s0)
/* B22B50 800AB9B0 E7B00020 */  swc1  $f16, 0x20($sp)
/* B22B54 800AB9B4 C6120048 */  lwc1  $f18, 0x48($s0)
/* B22B58 800AB9B8 0C04078D */  jal   func_80101E34
/* B22B5C 800AB9BC E7B20024 */   swc1  $f18, 0x24($sp)
/* B22B60 800AB9C0 3C068014 */  lui   $a2, %hi(D_801412E0) # $a2, 0x8014
/* B22B64 800AB9C4 24C612E0 */  addiu $a2, %lo(D_801412E0) # addiu $a2, $a2, 0x12e0
/* B22B68 800AB9C8 27A4003C */  addiu $a0, $sp, 0x3c
/* B22B6C 800AB9CC 8E050004 */  lw    $a1, 4($s0)
/* B22B70 800AB9D0 0C031AD5 */  jal   Graph_CloseDisp
/* B22B74 800AB9D4 24070376 */   li    $a3, 886
/* B22B78 800AB9D8 8FBF0034 */  lw    $ra, 0x34($sp)
/* B22B7C 800AB9DC 8FB00030 */  lw    $s0, 0x30($sp)
/* B22B80 800AB9E0 27BD0050 */  addiu $sp, $sp, 0x50
/* B22B84 800AB9E4 03E00008 */  jr    $ra
/* B22B88 800AB9E8 24020001 */   li    $v0, 1

