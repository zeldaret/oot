glabel func_8096A2CC
/* 007FC 8096A2CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00800 8096A2D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00804 8096A2D4 0C25A716 */  jal     func_80969C58              
/* 00808 8096A2D8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0080C 8096A2DC 0C25A70E */  jal     func_80969C38              
/* 00810 8096A2E0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00814 8096A2E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00818 8096A2E8 0C25A85B */  jal     func_8096A16C              
/* 0081C 8096A2EC 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00820 8096A2F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00824 8096A2F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00828 8096A2F8 03E00008 */  jr      $ra                        
/* 0082C 8096A2FC 00000000 */  nop
