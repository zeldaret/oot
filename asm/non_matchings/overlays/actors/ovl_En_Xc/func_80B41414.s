glabel func_80B41414
/* 05234 80B41414 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05238 80B41418 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0523C 80B4141C 0C2CF9CE */  jal     func_80B3E738              
/* 05240 80B41420 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 05244 80B41424 0C2D0390 */  jal     func_80B40E40              
/* 05248 80B41428 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0524C 80B4142C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05250 80B41430 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05254 80B41434 03E00008 */  jr      $ra                        
/* 05258 80B41438 00000000 */  nop


