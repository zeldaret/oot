glabel func_80B3E4F8
/* 02318 80B3E4F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0231C 80B3E4FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02320 80B3E500 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02324 80B3E504 0C2CF12C */  jal     func_80B3C4B0              
/* 02328 80B3E508 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0232C 80B3E50C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02330 80B3E510 0C2CF11A */  jal     func_80B3C468              
/* 02334 80B3E514 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02338 80B3E518 0C2CF0C7 */  jal     func_80B3C31C              
/* 0233C 80B3E51C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02340 80B3E520 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02344 80B3E524 0C2CF72A */  jal     func_80B3DCA8              
/* 02348 80B3E528 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0234C 80B3E52C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02350 80B3E530 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02354 80B3E534 03E00008 */  jr      $ra                        
/* 02358 80B3E538 00000000 */  nop


