glabel func_809DFFD4
/* 011D4 809DFFD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 011D8 809DFFD8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 011DC 809DFFDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 011E0 809DFFE0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 011E4 809DFFE4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 011E8 809DFFE8 14A10006 */  bne     $a1, $at, .L809E0004       
/* 011EC 809DFFEC AFA70024 */  sw      $a3, 0x0024($sp)           
/* 011F0 809DFFF0 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 011F4 809DFFF4 3C04809E */  lui     $a0, %hi(D_809E010C)       ## $a0 = 809E0000
/* 011F8 809DFFF8 2484010C */  addiu   $a0, $a0, %lo(D_809E010C)  ## $a0 = 809E010C
/* 011FC 809DFFFC 0C0346BD */  jal     Matrix_MultVec3f              
/* 01200 809E0000 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L809E0004:
/* 01204 809E0004 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01208 809E0008 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0120C 809E000C 03E00008 */  jr      $ra                        
/* 01210 809E0010 00000000 */  nop


