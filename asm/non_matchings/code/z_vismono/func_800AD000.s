glabel func_800AD000
/* B241A0 800AD000 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B241A4 800AD004 AFBF0014 */  sw    $ra, 0x14($sp)
/* B241A8 800AD008 AFA40018 */  sw    $a0, 0x18($sp)
/* B241AC 800AD00C 0C001114 */  jal   bzero
/* B241B0 800AD010 24050018 */   li    $a1, 24
/* B241B4 800AD014 8FA40018 */  lw    $a0, 0x18($sp)
/* B241B8 800AD018 240200FF */  li    $v0, 255
/* B241BC 800AD01C AC800000 */  sw    $zero, ($a0)
/* B241C0 800AD020 AC800004 */  sw    $zero, 4($a0)
/* B241C4 800AD024 A0820008 */  sb    $v0, 8($a0)
/* B241C8 800AD028 A0820009 */  sb    $v0, 9($a0)
/* B241CC 800AD02C A082000A */  sb    $v0, 0xa($a0)
/* B241D0 800AD030 A082000B */  sb    $v0, 0xb($a0)
/* B241D4 800AD034 A080000C */  sb    $zero, 0xc($a0)
/* B241D8 800AD038 A080000D */  sb    $zero, 0xd($a0)
/* B241DC 800AD03C A080000E */  sb    $zero, 0xe($a0)
/* B241E0 800AD040 A080000F */  sb    $zero, 0xf($a0)
/* B241E4 800AD044 8FBF0014 */  lw    $ra, 0x14($sp)
/* B241E8 800AD048 27BD0018 */  addiu $sp, $sp, 0x18
/* B241EC 800AD04C 03E00008 */  jr    $ra
/* B241F0 800AD050 00000000 */   nop   

