glabel func_80A413DC
/* 02E6C 80A413DC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02E70 80A413E0 3C0E80A4 */  lui     $t6, %hi(D_80A41BCC)       ## $t6 = 80A40000
/* 02E74 80A413E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02E78 80A413E8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 02E7C 80A413EC AFA60030 */  sw      $a2, 0x0030($sp)           
/* 02E80 80A413F0 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 02E84 80A413F4 25CE1BCC */  addiu   $t6, $t6, %lo(D_80A41BCC)  ## $t6 = 80A41BCC
/* 02E88 80A413F8 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80A41BCC
/* 02E8C 80A413FC 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 02E90 80A41400 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 02E94 80A41404 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 02E98 80A41408 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80A41BD0
/* 02E9C 80A4140C AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 02EA0 80A41410 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80A41BD4
/* 02EA4 80A41414 14A10004 */  bne     $a1, $at, .L80A41428       
/* 02EA8 80A41418 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 02EAC 80A4141C 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 02EB0 80A41420 0C0346BD */  jal     Matrix_MultVec3f              
/* 02EB4 80A41424 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80A41428:
/* 02EB8 80A41428 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02EBC 80A4142C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02EC0 80A41430 03E00008 */  jr      $ra                        
/* 02EC4 80A41434 00000000 */  nop


