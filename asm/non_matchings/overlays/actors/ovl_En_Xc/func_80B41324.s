glabel func_80B41324
/* 05144 80B41324 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05148 80B41328 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0514C 80B4132C 0C2CF960 */  jal     func_80B3E580              
/* 05150 80B41330 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 05154 80B41334 0C2D0342 */  jal     func_80B40D08              
/* 05158 80B41338 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0515C 80B4133C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05160 80B41340 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05164 80B41344 03E00008 */  jr      $ra                        
/* 05168 80B41348 00000000 */  nop
