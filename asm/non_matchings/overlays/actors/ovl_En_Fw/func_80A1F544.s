glabel func_80A1F544
/* 00FA4 80A1F544 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00FA8 80A1F548 3C0E80A2 */  lui     $t6, %hi(D_80A1FC0C)       ## $t6 = 80A20000
/* 00FAC 80A1F54C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FB0 80A1F550 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00FB4 80A1F554 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00FB8 80A1F558 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 00FBC 80A1F55C AFA70034 */  sw      $a3, 0x0034($sp)           
/* 00FC0 80A1F560 25CEFC0C */  addiu   $t6, $t6, %lo(D_80A1FC0C)  ## $t6 = 80A1FC0C
/* 00FC4 80A1F564 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80A1FC0C
/* 00FC8 80A1F568 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 00FCC 80A1F56C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00FD0 80A1F570 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 00FD4 80A1F574 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80A1FC10
/* 00FD8 80A1F578 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00FDC 80A1F57C AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 00FE0 80A1F580 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80A1FC14
/* 00FE4 80A1F584 14A10007 */  bne     $a1, $at, .L80A1F5A4       
/* 00FE8 80A1F588 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 00FEC 80A1F58C 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00FF0 80A1F590 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00FF4 80A1F594 0C0346BD */  jal     Matrix_MultVec3f              
/* 00FF8 80A1F598 24A501F4 */  addiu   $a1, $a1, 0x01F4           ## $a1 = 000001F4
/* 00FFC 80A1F59C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01000 80A1F5A0 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
.L80A1F5A4:
/* 01004 80A1F5A4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01008 80A1F5A8 14C10005 */  bne     $a2, $at, .L80A1F5C0       
/* 0100C 80A1F5AC 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 01010 80A1F5B0 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 01014 80A1F5B4 0C0346BD */  jal     Matrix_MultVec3f              
/* 01018 80A1F5B8 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 0101C 80A1F5BC 8FA6002C */  lw      $a2, 0x002C($sp)           
.L80A1F5C0:
/* 01020 80A1F5C0 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 01024 80A1F5C4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01028 80A1F5C8 0C018A29 */  jal     func_800628A4              
/* 0102C 80A1F5CC 24A50194 */  addiu   $a1, $a1, 0x0194           ## $a1 = 00000194
/* 01030 80A1F5D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01034 80A1F5D4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01038 80A1F5D8 03E00008 */  jr      $ra                        
/* 0103C 80A1F5DC 00000000 */  nop
