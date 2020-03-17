glabel func_809810A0
/* 03A30 809810A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03A34 809810A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03A38 809810A8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03A3C 809810AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03A40 809810B0 0C25FA09 */  jal     func_8097E824              
/* 03A44 809810B4 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 03A48 809810B8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03A4C 809810BC 0C2603D6 */  jal     func_80980F58              
/* 03A50 809810C0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03A54 809810C4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03A58 809810C8 0C26040F */  jal     func_8098103C              
/* 03A5C 809810CC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03A60 809810D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03A64 809810D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03A68 809810D8 03E00008 */  jr      $ra                        
/* 03A6C 809810DC 00000000 */  nop


