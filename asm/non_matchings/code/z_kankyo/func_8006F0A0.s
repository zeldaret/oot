glabel func_8006F0A0
/* AE6240 8006F0A0 000473C3 */  sra   $t6, $a0, 0xf
/* AE6244 8006F0A4 31CF0007 */  andi  $t7, $t6, 7
/* AE6248 8006F0A8 3C198012 */  lui   $t9, %hi(D_8011FAF0) # $t9, 0x8012
/* AE624C 8006F0AC 2739FAF0 */  addiu $t9, %lo(D_8011FAF0) # addiu $t9, $t9, -0x510
/* AE6250 8006F0B0 000FC0C0 */  sll   $t8, $t7, 3
/* AE6254 8006F0B4 03192821 */  addu  $a1, $t8, $t9
/* AE6258 8006F0B8 8CAA0000 */  lw    $t2, ($a1)
/* AE625C 8006F0BC 00044103 */  sra   $t0, $a0, 4
/* AE6260 8006F0C0 8CAC0004 */  lw    $t4, 4($a1)
/* AE6264 8006F0C4 310907FF */  andi  $t1, $t0, 0x7ff
/* AE6268 8006F0C8 01495804 */  sllv  $t3, $t1, $t2
/* AE626C 8006F0CC 03E00008 */  jr    $ra
/* AE6270 8006F0D0 018B1021 */   addu  $v0, $t4, $t3

