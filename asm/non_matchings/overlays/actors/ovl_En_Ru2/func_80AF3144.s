glabel func_80AF3144
/* 00BF4 80AF3144 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BF8 80AF3148 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BFC 80AF314C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C00 80AF3150 0C2BCBC1 */  jal     func_80AF2F04              
/* 00C04 80AF3154 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C08 80AF3158 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C0C 80AF315C 0C2BC9B4 */  jal     func_80AF26D0              
/* 00C10 80AF3160 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00C14 80AF3164 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C18 80AF3168 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C1C 80AF316C 03E00008 */  jr      $ra                        
/* 00C20 80AF3170 00000000 */  nop


