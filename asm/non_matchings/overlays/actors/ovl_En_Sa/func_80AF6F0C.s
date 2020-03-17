glabel func_80AF6F0C
/* 019AC 80AF6F0C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 019B0 80AF6F10 3C0E80AF */  lui     $t6, %hi(D_80AF7454)       ## $t6 = 80AF0000
/* 019B4 80AF6F14 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 019B8 80AF6F18 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 019BC 80AF6F1C AFA60030 */  sw      $a2, 0x0030($sp)           
/* 019C0 80AF6F20 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 019C4 80AF6F24 25CE7454 */  addiu   $t6, $t6, %lo(D_80AF7454)  ## $t6 = 80AF7454
/* 019C8 80AF6F28 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80AF7454
/* 019CC 80AF6F2C 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 019D0 80AF6F30 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 019D4 80AF6F34 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 019D8 80AF6F38 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80AF7458
/* 019DC 80AF6F3C AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 019E0 80AF6F40 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80AF745C
/* 019E4 80AF6F44 14A10004 */  bne     $a1, $at, .L80AF6F58       
/* 019E8 80AF6F48 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 019EC 80AF6F4C 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 019F0 80AF6F50 0C0346BD */  jal     Matrix_MultVec3f              
/* 019F4 80AF6F54 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80AF6F58:
/* 019F8 80AF6F58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 019FC 80AF6F5C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01A00 80AF6F60 03E00008 */  jr      $ra                        
/* 01A04 80AF6F64 00000000 */  nop


