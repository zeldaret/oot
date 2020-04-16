glabel func_80B75CE0
/* 0C340 80B75CE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0C344 80B75CE4 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 0C348 80B75CE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0C34C 80B75CEC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0C350 80B75CF0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0C354 80B75CF4 14A10006 */  bne     $a1, $at, .L80B75D10       
/* 0C358 80B75CF8 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 0C35C 80B75CFC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 0C360 80B75D00 3C0480B8 */  lui     $a0, %hi(D_80B7A698)       ## $a0 = 80B80000
/* 0C364 80B75D04 2484A698 */  addiu   $a0, $a0, %lo(D_80B7A698)  ## $a0 = 80B7A698
/* 0C368 80B75D08 0C0346BD */  jal     Matrix_MultVec3f              
/* 0C36C 80B75D0C 24A501C0 */  addiu   $a1, $a1, 0x01C0           ## $a1 = 000001C0
.L80B75D10:
/* 0C370 80B75D10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0C374 80B75D14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0C378 80B75D18 03E00008 */  jr      $ra                        
/* 0C37C 80B75D1C 00000000 */  nop
