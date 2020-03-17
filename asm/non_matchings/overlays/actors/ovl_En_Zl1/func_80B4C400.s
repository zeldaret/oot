glabel func_80B4C400
/* 018C0 80B4C400 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 018C4 80B4C404 3C0E80B5 */  lui     $t6, %hi(D_80B4E714)       ## $t6 = 80B50000
/* 018C8 80B4C408 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 018CC 80B4C40C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 018D0 80B4C410 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 018D4 80B4C414 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 018D8 80B4C418 25CEE714 */  addiu   $t6, $t6, %lo(D_80B4E714)  ## $t6 = 80B4E714
/* 018DC 80B4C41C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B4E714
/* 018E0 80B4C420 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFF4
/* 018E4 80B4C424 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 018E8 80B4C428 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF4
/* 018EC 80B4C42C 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B4E718
/* 018F0 80B4C430 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF8
/* 018F4 80B4C434 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80B4E71C
/* 018F8 80B4C438 14A10004 */  bne     $a1, $at, .L80B4C44C       
/* 018FC 80B4C43C AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFFC
/* 01900 80B4C440 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 01904 80B4C444 0C0346BD */  jal     Matrix_MultVec3f              
/* 01908 80B4C448 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80B4C44C:
/* 0190C 80B4C44C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01910 80B4C450 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01914 80B4C454 03E00008 */  jr      $ra                        
/* 01918 80B4C458 00000000 */  nop


