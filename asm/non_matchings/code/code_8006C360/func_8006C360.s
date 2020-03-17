glabel func_8006C360
/* AE3500 8006C360 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AE3504 8006C364 AFBF0014 */  sw    $ra, 0x14($sp)
/* AE3508 8006C368 0C023C20 */  jal   func_8008F080
/* AE350C 8006C36C AFA5001C */   sw    $a1, 0x1c($sp)
/* AE3510 8006C370 8FAE001C */  lw    $t6, 0x1c($sp)
/* AE3514 8006C374 0002C040 */  sll   $t8, $v0, 1
/* AE3518 8006C378 8FBF0014 */  lw    $ra, 0x14($sp)
/* AE351C 8006C37C 000E78C0 */  sll   $t7, $t6, 3
/* AE3520 8006C380 01EE7821 */  addu  $t7, $t7, $t6
/* AE3524 8006C384 000F7840 */  sll   $t7, $t7, 1
/* AE3528 8006C388 01F8C821 */  addu  $t9, $t7, $t8
/* AE352C 8006C38C 3C028012 */  lui   $v0, %hi(D_8011F3F0)
/* AE3530 8006C390 00591021 */  addu  $v0, $v0, $t9
/* AE3534 8006C394 9442F3F0 */  lhu   $v0, %lo(D_8011F3F0)($v0)
/* AE3538 8006C398 03E00008 */  jr    $ra
/* AE353C 8006C39C 27BD0018 */   addiu $sp, $sp, 0x18