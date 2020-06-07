glabel func_80AAD55C
/* 00C5C 80AAD55C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C60 80AAD560 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00C64 80AAD564 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C68 80AAD568 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C6C 80AAD56C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00C70 80AAD570 14A10006 */  bne     $a1, $at, .L80AAD58C       
/* 00C74 80AAD574 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00C78 80AAD578 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00C7C 80AAD57C 3C0480AB */  lui     $a0, %hi(D_80AAD64C)       ## $a0 = 80AB0000
/* 00C80 80AAD580 2484D64C */  addiu   $a0, $a0, %lo(D_80AAD64C)  ## $a0 = 80AAD64C
/* 00C84 80AAD584 0C0346BD */  jal     Matrix_MultVec3f              
/* 00C88 80AAD588 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80AAD58C:
/* 00C8C 80AAD58C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C90 80AAD590 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C94 80AAD594 03E00008 */  jr      $ra                        
/* 00C98 80AAD598 00000000 */  nop
