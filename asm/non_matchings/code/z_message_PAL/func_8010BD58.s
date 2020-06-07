glabel func_8010BD58
/* B82EF8 8010BD58 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B82EFC 8010BD5C 3C010001 */  lui   $at, 1
/* B82F00 8010BD60 AFBF0014 */  sw    $ra, 0x14($sp)
/* B82F04 8010BD64 AFA5001C */  sw    $a1, 0x1c($sp)
/* B82F08 8010BD68 00240821 */  addu  $at, $at, $a0
/* B82F0C 8010BD6C 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B82F10 8010BD70 0C042E08 */  jal   func_8010B820
/* B82F14 8010BD74 A42004E6 */   sh    $zero, 0x4e6($at)
/* B82F18 8010BD78 8FBF0014 */  lw    $ra, 0x14($sp)
/* B82F1C 8010BD7C 27BD0018 */  addiu $sp, $sp, 0x18
/* B82F20 8010BD80 03E00008 */  jr    $ra
/* B82F24 8010BD84 00000000 */   nop   

