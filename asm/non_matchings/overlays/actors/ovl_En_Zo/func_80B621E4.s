glabel func_80B621E4
/* 01FC4 80B621E4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01FC8 80B621E8 3C0E80B6 */  lui     $t6, %hi(D_80B625A4)       ## $t6 = 80B60000
/* 01FCC 80B621EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01FD0 80B621F0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01FD4 80B621F4 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 01FD8 80B621F8 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 01FDC 80B621FC 25CE25A4 */  addiu   $t6, $t6, %lo(D_80B625A4)  ## $t6 = 80B625A4
/* 01FE0 80B62200 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B625A4
/* 01FE4 80B62204 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 01FE8 80B62208 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 01FEC 80B6220C AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 01FF0 80B62210 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B625A8
/* 01FF4 80B62214 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 01FF8 80B62218 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80B625AC
/* 01FFC 80B6221C 14A10004 */  bne     $a1, $at, .L80B62230       
/* 02000 80B62220 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 02004 80B62224 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 02008 80B62228 0C0346BD */  jal     Matrix_MultVec3f              
/* 0200C 80B6222C 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80B62230:
/* 02010 80B62230 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02014 80B62234 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02018 80B62238 03E00008 */  jr      $ra                        
/* 0201C 80B6223C 00000000 */  nop
