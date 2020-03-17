glabel func_8007A960
/* AF1B00 8007A960 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF1B04 8007A964 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF1B08 8007A968 AFA5001C */  sw    $a1, 0x1c($sp)
/* AF1B0C 8007A96C AFA60020 */  sw    $a2, 0x20($sp)
/* AF1B10 8007A970 AFA70024 */  sw    $a3, 0x24($sp)
/* AF1B14 8007A974 0C031A73 */  jal   Graph_Alloc
/* AF1B18 8007A978 24050080 */   li    $a1, 128
/* AF1B1C 8007A97C 93AF001F */  lbu   $t7, 0x1f($sp)
/* AF1B20 8007A980 A04F000C */  sb    $t7, 0xc($v0)
/* AF1B24 8007A984 A04F0008 */  sb    $t7, 8($v0)
/* AF1B28 8007A988 93B90023 */  lbu   $t9, 0x23($sp)
/* AF1B2C 8007A98C A059000D */  sb    $t9, 0xd($v0)
/* AF1B30 8007A990 A0590009 */  sb    $t9, 9($v0)
/* AF1B34 8007A994 93A90027 */  lbu   $t1, 0x27($sp)
/* AF1B38 8007A998 A0400000 */  sb    $zero, ($v0)
/* AF1B3C 8007A99C A049000E */  sb    $t1, 0xe($v0)
/* AF1B40 8007A9A0 A049000A */  sb    $t1, 0xa($v0)
/* AF1B44 8007A9A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF1B48 8007A9A8 27BD0018 */  addiu $sp, $sp, 0x18
/* AF1B4C 8007A9AC 03E00008 */  jr    $ra
/* AF1B50 8007A9B0 00000000 */   nop   

