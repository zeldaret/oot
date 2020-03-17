glabel func_80B16CA0
/* 03200 80B16CA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03204 80B16CA4 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 03208 80B16CA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0320C 80B16CAC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03210 80B16CB0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 03214 80B16CB4 14A10006 */  bne     $a1, $at, .L80B16CD0       
/* 03218 80B16CB8 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 0321C 80B16CBC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 03220 80B16CC0 3C0480B1 */  lui     $a0, %hi(D_80B16E7C)       ## $a0 = 80B10000
/* 03224 80B16CC4 24846E7C */  addiu   $a0, $a0, %lo(D_80B16E7C)  ## $a0 = 80B16E7C
/* 03228 80B16CC8 0C0346BD */  jal     Matrix_MultVec3f              
/* 0322C 80B16CCC 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80B16CD0:
/* 03230 80B16CD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03234 80B16CD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03238 80B16CD8 03E00008 */  jr      $ra                        
/* 0323C 80B16CDC 00000000 */  nop


