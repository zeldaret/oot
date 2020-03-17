glabel func_80AF2DEC
/* 0089C 80AF2DEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008A0 80AF2DF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008A4 80AF2DF4 0C2BC9D1 */  jal     func_80AF2744              
/* 008A8 80AF2DF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008AC 80AF2DFC 0C2BC9E3 */  jal     func_80AF278C              
/* 008B0 80AF2E00 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 008B4 80AF2E04 0C2BC982 */  jal     func_80AF2608              
/* 008B8 80AF2E08 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 008BC 80AF2E0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008C0 80AF2E10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008C4 80AF2E14 03E00008 */  jr      $ra                        
/* 008C8 80AF2E18 00000000 */  nop


