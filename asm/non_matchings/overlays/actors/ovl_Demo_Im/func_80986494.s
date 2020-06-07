glabel func_80986494
/* 018B4 80986494 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 018B8 80986498 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 018BC 8098649C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 018C0 809864A0 0C261406 */  jal     func_80985018              
/* 018C4 809864A4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 018C8 809864A8 0C2617BD */  jal     func_80985EF4              
/* 018CC 809864AC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 018D0 809864B0 0C2612F8 */  jal     func_80984BE0              
/* 018D4 809864B4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 018D8 809864B8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 018DC 809864BC 0C261871 */  jal     func_809861C4              
/* 018E0 809864C0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 018E4 809864C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018E8 809864C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018EC 809864CC 03E00008 */  jr      $ra                        
/* 018F0 809864D0 00000000 */  nop
