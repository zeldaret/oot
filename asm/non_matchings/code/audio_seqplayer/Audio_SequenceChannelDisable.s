glabel Audio_SequenceChannelDisable
/* B60A68 800E98C8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B60A6C 800E98CC AFB20020 */  sw    $s2, 0x20($sp)
/* B60A70 800E98D0 AFB1001C */  sw    $s1, 0x1c($sp)
/* B60A74 800E98D4 AFB00018 */  sw    $s0, 0x18($sp)
/* B60A78 800E98D8 00808825 */  move  $s1, $a0
/* B60A7C 800E98DC AFBF0024 */  sw    $ra, 0x24($sp)
/* B60A80 800E98E0 00008025 */  move  $s0, $zero
/* B60A84 800E98E4 24120004 */  li    $s2, 4
/* B60A88 800E98E8 02202025 */  move  $a0, $s1
.L800E98EC:
/* B60A8C 800E98EC 0C03A61E */  jal   func_800E9878
/* B60A90 800E98F0 02002825 */   move  $a1, $s0
/* B60A94 800E98F4 26100001 */  addiu $s0, $s0, 1
/* B60A98 800E98F8 5612FFFC */  bnel  $s0, $s2, .L800E98EC
/* B60A9C 800E98FC 02202025 */   move  $a0, $s1
/* B60AA0 800E9900 0C039F80 */  jal   Audio_NotePoolClear
/* B60AA4 800E9904 26240084 */   addiu $a0, $s1, 0x84
/* B60AA8 800E9908 922E0000 */  lbu   $t6, ($s1)
/* B60AAC 800E990C 31D9FF7F */  andi  $t9, $t6, 0xff7f
/* B60AB0 800E9910 A2390000 */  sb    $t9, ($s1)
/* B60AB4 800E9914 37280040 */  ori   $t0, $t9, 0x40
/* B60AB8 800E9918 A2280000 */  sb    $t0, ($s1)
/* B60ABC 800E991C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B60AC0 800E9920 8FB20020 */  lw    $s2, 0x20($sp)
/* B60AC4 800E9924 8FB1001C */  lw    $s1, 0x1c($sp)
/* B60AC8 800E9928 8FB00018 */  lw    $s0, 0x18($sp)
/* B60ACC 800E992C 03E00008 */  jr    $ra
/* B60AD0 800E9930 27BD0028 */   addiu $sp, $sp, 0x28

