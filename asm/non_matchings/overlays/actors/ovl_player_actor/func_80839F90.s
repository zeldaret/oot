glabel func_80839F90
/* 07D80 80839F90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 07D84 80839F94 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 07D88 80839F98 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 07D8C 80839F9C 0C023A71 */  jal     func_8008E9C4              
/* 07D90 80839FA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 07D94 80839FA4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 07D98 80839FA8 10400005 */  beq     $v0, $zero, .L80839FC0     
/* 07D9C 80839FAC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 07DA0 80839FB0 0C20E7A2 */  jal     func_80839E88              
/* 07DA4 80839FB4 00000000 */  nop
/* 07DA8 80839FB8 1000000D */  beq     $zero, $zero, .L80839FF0   
/* 07DAC 80839FBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80839FC0:
/* 07DB0 80839FC0 0C20CECB */  jal     func_80833B2C              
/* 07DB4 80839FC4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 07DB8 80839FC8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 07DBC 80839FCC 10400005 */  beq     $v0, $zero, .L80839FE4     
/* 07DC0 80839FD0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 07DC4 80839FD4 0C20E7CC */  jal     func_80839F30              
/* 07DC8 80839FD8 00000000 */  nop
/* 07DCC 80839FDC 10000004 */  beq     $zero, $zero, .L80839FF0   
/* 07DD0 80839FE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80839FE4:
/* 07DD4 80839FE4 0C214C20 */  jal     func_80853080              
/* 07DD8 80839FE8 00000000 */  nop
/* 07DDC 80839FEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80839FF0:
/* 07DE0 80839FF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 07DE4 80839FF4 03E00008 */  jr      $ra                        
/* 07DE8 80839FF8 00000000 */  nop


