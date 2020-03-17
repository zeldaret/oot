glabel func_809B0DD4
/* 00A64 809B0DD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A68 809B0DD8 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00A6C 809B0DDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A70 809B0DE0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A74 809B0DE4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00A78 809B0DE8 14A10006 */  bne     $a1, $at, .L809B0E04       
/* 00A7C 809B0DEC AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00A80 809B0DF0 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00A84 809B0DF4 3C04809B */  lui     $a0, %hi(D_809B0F74)       ## $a0 = 809B0000
/* 00A88 809B0DF8 24840F74 */  addiu   $a0, $a0, %lo(D_809B0F74)  ## $a0 = 809B0F74
/* 00A8C 809B0DFC 0C0346BD */  jal     Matrix_MultVec3f              
/* 00A90 809B0E00 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L809B0E04:
/* 00A94 809B0E04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A98 809B0E08 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A9C 809B0E0C 03E00008 */  jr      $ra                        
/* 00AA0 809B0E10 00000000 */  nop


