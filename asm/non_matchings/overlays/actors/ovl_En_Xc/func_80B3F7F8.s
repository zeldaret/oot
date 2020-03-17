glabel func_80B3F7F8
/* 03618 80B3F7F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0361C 80B3F7FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03620 80B3F800 0C2CFB52 */  jal     func_80B3ED48              
/* 03624 80B3F804 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03628 80B3F808 0C2CFD88 */  jal     func_80B3F620              
/* 0362C 80B3F80C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03630 80B3F810 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03634 80B3F814 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03638 80B3F818 03E00008 */  jr      $ra                        
/* 0363C 80B3F81C 00000000 */  nop


