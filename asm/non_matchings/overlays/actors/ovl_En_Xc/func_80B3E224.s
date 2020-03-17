glabel func_80B3E224
/* 02044 80B3E224 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02048 80B3E228 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0204C 80B3E22C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02050 80B3E230 0C2CF405 */  jal     func_80B3D014              
/* 02054 80B3E234 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02058 80B3E238 0C2CF456 */  jal     func_80B3D158              
/* 0205C 80B3E23C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02060 80B3E240 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02064 80B3E244 0C2CF5D4 */  jal     func_80B3D750              
/* 02068 80B3E248 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0206C 80B3E24C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02070 80B3E250 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02074 80B3E254 03E00008 */  jr      $ra                        
/* 02078 80B3E258 00000000 */  nop


