glabel func_80034B54
/* AABCF4 80034B54 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AABCF8 80034B58 AFBF0014 */  sw    $ra, 0x14($sp)
/* AABCFC 80034B5C 0C031A73 */  jal   Graph_Alloc
/* AABD00 80034B60 24050010 */   li    $a1, 16
/* AABD04 80034B64 3C0EE200 */  lui   $t6, (0xE200001C >> 16) # lui $t6, 0xe200
/* AABD08 80034B68 3C0FC810 */  lui   $t7, (0xC81049F8 >> 16) # lui $t7, 0xc810
/* AABD0C 80034B6C 35EF49F8 */  ori   $t7, (0xC81049F8 & 0xFFFF) # ori $t7, $t7, 0x49f8
/* AABD10 80034B70 35CE001C */  ori   $t6, (0xE200001C & 0xFFFF) # ori $t6, $t6, 0x1c
/* AABD14 80034B74 AC4E0000 */  sw    $t6, ($v0)
/* AABD18 80034B78 AC4F0004 */  sw    $t7, 4($v0)
/* AABD1C 80034B7C 24440008 */  addiu $a0, $v0, 8
/* AABD20 80034B80 3C18DF00 */  lui   $t8, 0xdf00
/* AABD24 80034B84 AC980000 */  sw    $t8, ($a0)
/* AABD28 80034B88 AC800004 */  sw    $zero, 4($a0)
/* AABD2C 80034B8C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AABD30 80034B90 00402825 */  move  $a1, $v0
/* AABD34 80034B94 00A01025 */  move  $v0, $a1
/* AABD38 80034B98 03E00008 */  jr    $ra
/* AABD3C 80034B9C 27BD0018 */   addiu $sp, $sp, 0x18
