glabel func_809FDA7C
/* 00A4C 809FDA7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A50 809FDA80 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00A54 809FDA84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A58 809FDA88 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A5C 809FDA8C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00A60 809FDA90 14A10006 */  bne     $a1, $at, .L809FDAAC       
/* 00A64 809FDA94 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00A68 809FDA98 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00A6C 809FDA9C 3C0480A0 */  lui     $a0, %hi(D_809FDB40)       ## $a0 = 80A00000
/* 00A70 809FDAA0 2484DB40 */  addiu   $a0, $a0, %lo(D_809FDB40)  ## $a0 = 809FDB40
/* 00A74 809FDAA4 0C0346BD */  jal     Matrix_MultVec3f              
/* 00A78 809FDAA8 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L809FDAAC:
/* 00A7C 809FDAAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A80 809FDAB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A84 809FDAB4 03E00008 */  jr      $ra                        
/* 00A88 809FDAB8 00000000 */  nop


