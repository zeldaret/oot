glabel func_8096B2D4
/* 01804 8096B2D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01808 8096B2D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0180C 8096B2DC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01810 8096B2E0 0C25A716 */  jal     func_80969C58              
/* 01814 8096B2E4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01818 8096B2E8 0C25A70E */  jal     func_80969C38              
/* 0181C 8096B2EC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01820 8096B2F0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01824 8096B2F4 0C25A94A */  jal     func_8096A528              
/* 01828 8096B2F8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0182C 8096B2FC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01830 8096B300 0C25AB9B */  jal     func_8096AE6C              
/* 01834 8096B304 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01838 8096B308 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0183C 8096B30C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01840 8096B310 03E00008 */  jr      $ra                        
/* 01844 8096B314 00000000 */  nop
