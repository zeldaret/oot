glabel func_800E5C10
/* B5CDB0 800E5C10 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B5CDB4 800E5C14 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B5CDB8 800E5C18 904E5BD8 */  lbu   $t6, 0x5bd8($v0)
/* B5CDBC 800E5C1C A0405BDA */  sb    $zero, 0x5bda($v0)
/* B5CDC0 800E5C20 03E00008 */  jr    $ra
/* B5CDC4 800E5C24 A04E5BD9 */   sb    $t6, 0x5bd9($v0)

