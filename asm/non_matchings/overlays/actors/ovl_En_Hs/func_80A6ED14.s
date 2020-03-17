glabel func_80A6ED14
/* 00974 80A6ED14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00978 80A6ED18 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0097C 80A6ED1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00980 80A6ED20 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00984 80A6ED24 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00988 80A6ED28 14A10006 */  bne     $a1, $at, .L80A6ED44       
/* 0098C 80A6ED2C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00990 80A6ED30 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00994 80A6ED34 3C0480A7 */  lui     $a0, %hi(D_80A6EDFC)       ## $a0 = 80A70000
/* 00998 80A6ED38 2484EDFC */  addiu   $a0, $a0, %lo(D_80A6EDFC)  ## $a0 = 80A6EDFC
/* 0099C 80A6ED3C 0C0346BD */  jal     Matrix_MultVec3f              
/* 009A0 80A6ED40 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80A6ED44:
/* 009A4 80A6ED44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009A8 80A6ED48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009AC 80A6ED4C 03E00008 */  jr      $ra                        
/* 009B0 80A6ED50 00000000 */  nop


