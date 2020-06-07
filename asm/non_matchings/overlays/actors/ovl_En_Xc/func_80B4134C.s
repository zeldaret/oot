glabel func_80B4134C
/* 0516C 80B4134C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05170 80B41350 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05174 80B41354 0C2CF972 */  jal     func_80B3E5C8              
/* 05178 80B41358 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0517C 80B4135C 0C2D034B */  jal     func_80B40D2C              
/* 05180 80B41360 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 05184 80B41364 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05188 80B41368 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0518C 80B4136C 03E00008 */  jr      $ra                        
/* 05190 80B41370 00000000 */  nop
