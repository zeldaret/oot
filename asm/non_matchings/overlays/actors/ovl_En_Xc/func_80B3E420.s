glabel func_80B3E420
/* 02240 80B3E420 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02244 80B3E424 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02248 80B3E428 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0224C 80B3E42C 0C2CF12C */  jal     func_80B3C4B0              
/* 02250 80B3E430 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02254 80B3E434 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02258 80B3E438 0C2CF11A */  jal     func_80B3C468              
/* 0225C 80B3E43C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02260 80B3E440 0C2CF0C7 */  jal     func_80B3C31C              
/* 02264 80B3E444 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02268 80B3E448 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0226C 80B3E44C 0C2CF6BC */  jal     func_80B3DAF0              
/* 02270 80B3E450 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02274 80B3E454 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02278 80B3E458 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0227C 80B3E45C 03E00008 */  jr      $ra                        
/* 02280 80B3E460 00000000 */  nop


