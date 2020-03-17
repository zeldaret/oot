glabel EnHorseGameCheck_Update
/* 00E7C 80A683CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E80 80A683D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E84 80A683D4 8C8E014C */  lw      $t6, 0x014C($a0)           ## 0000014C
/* 00E88 80A683D8 3C0280A7 */  lui     $v0, %hi(D_80A68518)       ## $v0 = 80A70000
/* 00E8C 80A683DC 000E7880 */  sll     $t7, $t6,  2               
/* 00E90 80A683E0 004F1021 */  addu    $v0, $v0, $t7              
/* 00E94 80A683E4 8C428518 */  lw      $v0, %lo(D_80A68518)($v0)  
/* 00E98 80A683E8 50400004 */  beql    $v0, $zero, .L80A683FC     
/* 00E9C 80A683EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EA0 80A683F0 0040F809 */  jalr    $ra, $v0                   
/* 00EA4 80A683F4 00000000 */  nop
/* 00EA8 80A683F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A683FC:
/* 00EAC 80A683FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EB0 80A68400 03E00008 */  jr      $ra                        
/* 00EB4 80A68404 00000000 */  nop


