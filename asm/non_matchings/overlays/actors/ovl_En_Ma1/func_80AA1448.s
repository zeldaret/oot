glabel func_80AA1448
/* 00DB8 80AA1448 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00DBC 80AA144C 3C0E80AA */  lui     $t6, %hi(D_80AA16B8)       ## $t6 = 80AA0000
/* 00DC0 80AA1450 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DC4 80AA1454 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00DC8 80AA1458 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 00DCC 80AA145C AFA70034 */  sw      $a3, 0x0034($sp)           
/* 00DD0 80AA1460 25CE16B8 */  addiu   $t6, $t6, %lo(D_80AA16B8)  ## $t6 = 80AA16B8
/* 00DD4 80AA1464 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80AA16B8
/* 00DD8 80AA1468 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 00DDC 80AA146C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00DE0 80AA1470 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 00DE4 80AA1474 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80AA16BC
/* 00DE8 80AA1478 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 00DEC 80AA147C 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80AA16C0
/* 00DF0 80AA1480 14A10004 */  bne     $a1, $at, .L80AA1494       
/* 00DF4 80AA1484 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 00DF8 80AA1488 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00DFC 80AA148C 0C0346BD */  jal     Matrix_MultVec3f              
/* 00E00 80AA1490 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80AA1494:
/* 00E04 80AA1494 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E08 80AA1498 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E0C 80AA149C 03E00008 */  jr      $ra                        
/* 00E10 80AA14A0 00000000 */  nop


