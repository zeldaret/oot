glabel func_809E2814
/* 00F64 809E2814 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F68 809E2818 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00F6C 809E281C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F70 809E2820 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00F74 809E2824 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00F78 809E2828 14A10019 */  bne     $a1, $at, .L809E2890       
/* 00F7C 809E282C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00F80 809E2830 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00F84 809E2834 3C04809E */  lui     $a0, %hi(D_809E2970)       ## $a0 = 809E0000
/* 00F88 809E2838 24842970 */  addiu   $a0, $a0, %lo(D_809E2970)  ## $a0 = 809E2970
/* 00F8C 809E283C 0C0346BD */  jal     Matrix_MultVec3f              
/* 00F90 809E2840 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 00F94 809E2844 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00F98 809E2848 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 00F9C 809E284C 44817000 */  mtc1    $at, $f14                  ## $f14 = -200.00
/* 00FA0 809E2850 44066000 */  mfc1    $a2, $f12                  
/* 00FA4 809E2854 0C034261 */  jal     Matrix_Translate              
/* 00FA8 809E2858 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00FAC 809E285C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00FB0 809E2860 0C034348 */  jal     Matrix_RotateY              
/* 00FB4 809E2864 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00FB8 809E2868 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00FBC 809E286C 0C0342DC */  jal     Matrix_RotateX              
/* 00FC0 809E2870 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00FC4 809E2874 3C01809E */  lui     $at, %hi(D_809E29D4)       ## $at = 809E0000
/* 00FC8 809E2878 C42C29D4 */  lwc1    $f12, %lo(D_809E29D4)($at) 
/* 00FCC 809E287C 0C0343B5 */  jal     Matrix_RotateZ              
/* 00FD0 809E2880 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00FD4 809E2884 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00FD8 809E2888 0C034236 */  jal     Matrix_Get              
/* 00FDC 809E288C 24840218 */  addiu   $a0, $a0, 0x0218           ## $a0 = 00000218
.L809E2890:
/* 00FE0 809E2890 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FE4 809E2894 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FE8 809E2898 03E00008 */  jr      $ra                        
/* 00FEC 809E289C 00000000 */  nop

