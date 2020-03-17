glabel func_8097A8DC
/* 01FAC 8097A8DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01FB0 8097A8E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01FB4 8097A8E4 0C25E60F */  jal     func_8097983C              
/* 01FB8 8097A8E8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01FBC 8097A8EC 50400004 */  beql    $v0, $zero, .L8097A900     
/* 01FC0 8097A8F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01FC4 8097A8F4 0C00B55C */  jal     Actor_Kill
              
/* 01FC8 8097A8F8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01FCC 8097A8FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097A900:
/* 01FD0 8097A900 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01FD4 8097A904 03E00008 */  jr      $ra                        
/* 01FD8 8097A908 00000000 */  nop


