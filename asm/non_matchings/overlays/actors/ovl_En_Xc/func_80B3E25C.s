glabel func_80B3E25C
/* 0207C 80B3E25C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02080 80B3E260 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02084 80B3E264 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02088 80B3E268 0C2CF405 */  jal     func_80B3D014              
/* 0208C 80B3E26C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02090 80B3E270 0C2CF456 */  jal     func_80B3D158              
/* 02094 80B3E274 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02098 80B3E278 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0209C 80B3E27C 0C2CF5E5 */  jal     func_80B3D794              
/* 020A0 80B3E280 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 020A4 80B3E284 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 020A8 80B3E288 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 020AC 80B3E28C 03E00008 */  jr      $ra                        
/* 020B0 80B3E290 00000000 */  nop
