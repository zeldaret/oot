glabel func_80A1E26C
/* 00A5C 80A1E26C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A60 80A1E270 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 00A64 80A1E274 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A68 80A1E278 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A6C 80A1E27C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00A70 80A1E280 14A10006 */  bne     $a1, $at, .L80A1E29C       
/* 00A74 80A1E284 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00A78 80A1E288 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00A7C 80A1E28C 3C0480A2 */  lui     $a0, %hi(D_80A1E44C)       ## $a0 = 80A20000
/* 00A80 80A1E290 2484E44C */  addiu   $a0, $a0, %lo(D_80A1E44C)  ## $a0 = 80A1E44C
/* 00A84 80A1E294 0C0346BD */  jal     Matrix_MultVec3f              
/* 00A88 80A1E298 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80A1E29C:
/* 00A8C 80A1E29C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A90 80A1E2A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A94 80A1E2A4 03E00008 */  jr      $ra                        
/* 00A98 80A1E2A8 00000000 */  nop
