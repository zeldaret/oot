glabel func_809AF7CC
/* 018AC 809AF7CC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 018B0 809AF7D0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 018B4 809AF7D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 018B8 809AF7D8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 018BC 809AF7DC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 018C0 809AF7E0 26050358 */  addiu   $a1, $s0, 0x0358           ## $a1 = 00000358
/* 018C4 809AF7E4 3C04809B */  lui     $a0, %hi(D_809B0074)       ## $a0 = 809B0000
/* 018C8 809AF7E8 24840074 */  addiu   $a0, $a0, %lo(D_809B0074)  ## $a0 = 809B0074
/* 018CC 809AF7EC 0C0346BD */  jal     Matrix_MultVec3f              
/* 018D0 809AF7F0 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 018D4 809AF7F4 3C04809B */  lui     $a0, %hi(D_809B0080)       ## $a0 = 809B0000
/* 018D8 809AF7F8 2605034C */  addiu   $a1, $s0, 0x034C           ## $a1 = 0000034C
/* 018DC 809AF7FC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 018E0 809AF800 0C0346BD */  jal     Matrix_MultVec3f              
/* 018E4 809AF804 24840080 */  addiu   $a0, $a0, %lo(D_809B0080)  ## $a0 = 809B0080
/* 018E8 809AF808 3C04809B */  lui     $a0, %hi(D_809B008C)       ## $a0 = 809B0000
/* 018EC 809AF80C 26050370 */  addiu   $a1, $s0, 0x0370           ## $a1 = 00000370
/* 018F0 809AF810 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 018F4 809AF814 0C0346BD */  jal     Matrix_MultVec3f              
/* 018F8 809AF818 2484008C */  addiu   $a0, $a0, %lo(D_809B008C)  ## $a0 = 809B008C
/* 018FC 809AF81C 3C04809B */  lui     $a0, %hi(D_809B0098)       ## $a0 = 809B0000
/* 01900 809AF820 26070364 */  addiu   $a3, $s0, 0x0364           ## $a3 = 00000364
/* 01904 809AF824 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000364
/* 01908 809AF828 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 0190C 809AF82C 0C0346BD */  jal     Matrix_MultVec3f              
/* 01910 809AF830 24840098 */  addiu   $a0, $a0, %lo(D_809B0098)  ## $a0 = 809B0098
/* 01914 809AF834 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 01918 809AF838 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 0191C 809AF83C 2604030C */  addiu   $a0, $s0, 0x030C           ## $a0 = 0000030C
/* 01920 809AF840 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01924 809AF844 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 01928 809AF848 0C0189CD */  jal     func_80062734              
/* 0192C 809AF84C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01930 809AF850 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01934 809AF854 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01938 809AF858 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0193C 809AF85C 03E00008 */  jr      $ra                        
/* 01940 809AF860 00000000 */  nop


