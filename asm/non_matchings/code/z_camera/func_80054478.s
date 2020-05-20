
glabel func_80054478
/* ACB618 80054478 27BDFFD0 */  addiu $sp, $sp, -0x30
/* ACB61C 8005447C AFA40030 */  sw    $a0, 0x30($sp)
/* ACB620 80054480 AFBF0014 */  sw    $ra, 0x14($sp)
/* ACB624 80054484 00A02025 */  move  $a0, $a1
/* ACB628 80054488 AFA60038 */  sw    $a2, 0x38($sp)
/* ACB62C 8005448C 0C015117 */  jal   Camera_Vec3fCopy
/* ACB630 80054490 27A5001C */   addiu $a1, $sp, 0x1c
/* ACB634 80054494 27A40028 */  addiu $a0, $sp, 0x28
/* ACB638 80054498 0C01F0FD */  jal   func_8007C3F4
/* ACB63C 8005449C 27A5001C */   addiu $a1, $sp, 0x1c
/* ACB640 800544A0 8FA50030 */  lw    $a1, 0x30($sp)
/* ACB644 800544A4 87AE002E */  lh    $t6, 0x2e($sp)
/* ACB648 800544A8 8FA40038 */  lw    $a0, 0x38($sp)
/* ACB64C 800544AC 84AF000E */  lh    $t7, 0xe($a1)
/* ACB650 800544B0 27A60028 */  addiu $a2, $sp, 0x28
/* ACB654 800544B4 01CFC021 */  addu  $t8, $t6, $t7
/* ACB658 800544B8 0C010F0A */  jal   func_80043C28
/* ACB65C 800544BC A7B8002E */   sh    $t8, 0x2e($sp)
/* ACB660 800544C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* ACB664 800544C4 27BD0030 */  addiu $sp, $sp, 0x30
/* ACB668 800544C8 03E00008 */  jr    $ra
/* ACB66C 800544CC 00000000 */   nop   
