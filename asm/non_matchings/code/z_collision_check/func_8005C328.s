glabel func_8005C328
/* AD34C8 8005C328 AFA40000 */  sw    $a0, ($sp)
/* AD34CC 8005C32C 88CF0000 */  lwl   $t7, ($a2)
/* AD34D0 8005C330 98CF0003 */  lwr   $t7, 3($a2)
/* AD34D4 8005C334 24020001 */  li    $v0, 1
/* AD34D8 8005C338 A8AF0000 */  swl   $t7, ($a1)
/* AD34DC 8005C33C B8AF0003 */  swr   $t7, 3($a1)
/* AD34E0 8005C340 88CE0004 */  lwl   $t6, 4($a2)
/* AD34E4 8005C344 98CE0007 */  lwr   $t6, 7($a2)
/* AD34E8 8005C348 A8AE0004 */  swl   $t6, 4($a1)
/* AD34EC 8005C34C B8AE0007 */  swr   $t6, 7($a1)
/* AD34F0 8005C350 88CF0008 */  lwl   $t7, 8($a2)
/* AD34F4 8005C354 98CF000B */  lwr   $t7, 0xb($a2)
/* AD34F8 8005C358 A8AF0008 */  swl   $t7, 8($a1)
/* AD34FC 8005C35C 03E00008 */  jr    $ra
/* AD3500 8005C360 B8AF000B */   swr   $t7, 0xb($a1)

