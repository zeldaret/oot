glabel func_80A774BC
/* 031AC 80A774BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 031B0 80A774C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 031B4 80A774C4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 031B8 80A774C8 0C29DC1F */  jal     func_80A7707C              
/* 031BC 80A774CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 031C0 80A774D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 031C4 80A774D4 0C29DC0D */  jal     func_80A77034              
/* 031C8 80A774D8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 031CC 80A774DC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 031D0 80A774E0 0C29DE77 */  jal     func_80A779DC              
/* 031D4 80A774E4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 031D8 80A774E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 031DC 80A774EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 031E0 80A774F0 03E00008 */  jr      $ra                        
/* 031E4 80A774F4 00000000 */  nop


