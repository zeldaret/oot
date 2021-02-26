glabel func_80A341A0
/* 015D0 80A341A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 015D4 80A341A4 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 015D8 80A341A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 015DC 80A341AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 015E0 80A341B0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 015E4 80A341B4 14A10006 */  bne     $a1, $at, .L80A341D0       
/* 015E8 80A341B8 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 015EC 80A341BC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 015F0 80A341C0 3C0480A3 */  lui     $a0, %hi(D_80A343B0)       ## $a0 = 80A30000
/* 015F4 80A341C4 248443B0 */  addiu   $a0, $a0, %lo(D_80A343B0)  ## $a0 = 80A343B0
/* 015F8 80A341C8 0C0346BD */  jal     Matrix_MultVec3f              
/* 015FC 80A341CC 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80A341D0:
/* 01600 80A341D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01604 80A341D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01608 80A341D8 03E00008 */  jr      $ra                        
/* 0160C 80A341DC 00000000 */  nop
