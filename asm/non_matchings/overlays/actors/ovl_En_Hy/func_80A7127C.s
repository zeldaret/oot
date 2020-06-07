glabel func_80A7127C
/* 01CCC 80A7127C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01CD0 80A71280 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01CD4 80A71284 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 01CD8 80A71288 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01CDC 80A7128C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01CE0 80A71290 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01CE4 80A71294 24070010 */  addiu   $a3, $zero, 0x0010         ## $a3 = 00000010
/* 01CE8 80A71298 25C5021C */  addiu   $a1, $t6, 0x021C           ## $a1 = 0000021C
/* 01CEC 80A7129C 0C00D3D5 */  jal     func_80034F54              
/* 01CF0 80A712A0 25C6023C */  addiu   $a2, $t6, 0x023C           ## $a2 = 0000023C
/* 01CF4 80A712A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CF8 80A712A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01CFC 80A712AC 03E00008 */  jr      $ra                        
/* 01D00 80A712B0 00000000 */  nop
