glabel func_80B20B94
/* 00A24 80B20B94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A28 80B20B98 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00A2C 80B20B9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A30 80B20BA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A34 80B20BA4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00A38 80B20BA8 14A10006 */  bne     $a1, $at, .L80B20BC4       
/* 00A3C 80B20BAC AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00A40 80B20BB0 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00A44 80B20BB4 3C0480B2 */  lui     $a0, %hi(D_80B20C68)       ## $a0 = 80B20000
/* 00A48 80B20BB8 24840C68 */  addiu   $a0, $a0, %lo(D_80B20C68)  ## $a0 = 80B20C68
/* 00A4C 80B20BBC 0C0346BD */  jal     Matrix_MultVec3f              
/* 00A50 80B20BC0 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80B20BC4:
/* 00A54 80B20BC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A58 80B20BC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A5C 80B20BCC 03E00008 */  jr      $ra                        
/* 00A60 80B20BD0 00000000 */  nop
/* 00A64 80B20BD4 00000000 */  nop
/* 00A68 80B20BD8 00000000 */  nop
/* 00A6C 80B20BDC 00000000 */  nop

