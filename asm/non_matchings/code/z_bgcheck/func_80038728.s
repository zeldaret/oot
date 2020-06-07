glabel func_80038728
/* AAF8C8 80038728 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AAF8CC 8003872C AFBF0014 */  sw    $ra, 0x14($sp)
/* AAF8D0 80038730 AFA40020 */  sw    $a0, 0x20($sp)
/* AAF8D4 80038734 AFA50024 */  sw    $a1, 0x24($sp)
/* AAF8D8 80038738 0C00F937 */  jal   func_8003E4DC
/* AAF8DC 8003873C AFA60028 */   sw    $a2, 0x28($sp)
/* AAF8E0 80038740 8FAE0020 */  lw    $t6, 0x20($sp)
/* AAF8E4 80038744 A7A2001E */  sh    $v0, 0x1e($sp)
/* AAF8E8 80038748 8FB90024 */  lw    $t9, 0x24($sp)
/* AAF8EC 8003874C 8DCF0004 */  lw    $t7, 4($t6)
/* AAF8F0 80038750 0002C080 */  sll   $t8, $v0, 2
/* AAF8F4 80038754 8FA50028 */  lw    $a1, 0x28($sp)
/* AAF8F8 80038758 97260000 */  lhu   $a2, ($t9)
/* AAF8FC 8003875C 0C00E1C2 */  jal   func_80038708
/* AAF900 80038760 01F82021 */   addu  $a0, $t7, $t8
/* AAF904 80038764 97A8001E */  lhu   $t0, 0x1e($sp)
/* AAF908 80038768 8FA90024 */  lw    $t1, 0x24($sp)
/* AAF90C 8003876C A5280000 */  sh    $t0, ($t1)
/* AAF910 80038770 8FBF0014 */  lw    $ra, 0x14($sp)
/* AAF914 80038774 27BD0020 */  addiu $sp, $sp, 0x20
/* AAF918 80038778 03E00008 */  jr    $ra
/* AAF91C 8003877C 00000000 */   nop   

