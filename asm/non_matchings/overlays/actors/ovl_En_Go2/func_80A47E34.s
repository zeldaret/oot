glabel func_80A47E34
/* 05104 80A47E34 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 05108 80A47E38 3C0E80A5 */  lui     $t6, %hi(D_80A4856C)       ## $t6 = 80A50000
/* 0510C 80A47E3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05110 80A47E40 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 05114 80A47E44 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 05118 80A47E48 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 0511C 80A47E4C 25CE856C */  addiu   $t6, $t6, %lo(D_80A4856C)  ## $t6 = 80A4856C
/* 05120 80A47E50 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80A4856C
/* 05124 80A47E54 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 05128 80A47E58 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 0512C 80A47E5C AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 05130 80A47E60 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80A48570
/* 05134 80A47E64 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 05138 80A47E68 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80A48574
/* 0513C 80A47E6C 14A10004 */  bne     $a1, $at, .L80A47E80       
/* 05140 80A47E70 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 05144 80A47E74 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 05148 80A47E78 0C0346BD */  jal     Matrix_MultVec3f              
/* 0514C 80A47E7C 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80A47E80:
/* 05150 80A47E80 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05154 80A47E84 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 05158 80A47E88 03E00008 */  jr      $ra                        
/* 0515C 80A47E8C 00000000 */  nop


