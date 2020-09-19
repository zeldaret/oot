glabel func_800E59AC
/* B5CB4C 800E59AC 10A0000F */  beqz  $a1, .L800E59EC
/* B5CB50 800E59B0 00047080 */   sll   $t6, $a0, 2
/* B5CB54 800E59B4 01C47023 */  subu  $t6, $t6, $a0
/* B5CB58 800E59B8 000E7080 */  sll   $t6, $t6, 2
/* B5CB5C 800E59BC 01C47023 */  subu  $t6, $t6, $a0
/* B5CB60 800E59C0 3C0F8017 */  lui   $t7, %hi(gAudioContext)
/* B5CB64 800E59C4 25EFF180 */  addiu $t7, %lo(gAudioContext) # addiu $t7, $t7, -0xe80
/* B5CB68 800E59C8 000E7140 */  sll   $t6, $t6, 5
/* B5CB6C 800E59CC 01CF1021 */  addu  $v0, $t6, $t7
/* B5CB70 800E59D0 44800000 */  mtc1  $zero, $f0
/* B5CB74 800E59D4 24180001 */  li    $t8, 1
/* B5CB78 800E59D8 A0583531 */  sb    $t8, 0x3531($v0)
/* B5CB7C 800E59DC A4453544 */  sh    $a1, 0x3544($v0)
/* B5CB80 800E59E0 A4453542 */  sh    $a1, 0x3542($v0)
/* B5CB84 800E59E4 E440354C */  swc1  $f0, 0x354c($v0)
/* B5CB88 800E59E8 E4403550 */  swc1  $f0, 0x3550($v0)
.L800E59EC:
/* B5CB8C 800E59EC 03E00008 */  jr    $ra
/* B5CB90 800E59F0 00000000 */   nop

