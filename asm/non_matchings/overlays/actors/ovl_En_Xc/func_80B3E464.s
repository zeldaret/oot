glabel func_80B3E464
/* 02284 80B3E464 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02288 80B3E468 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0228C 80B3E46C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02290 80B3E470 0C2CF12C */  jal     func_80B3C4B0              
/* 02294 80B3E474 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02298 80B3E478 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 0229C 80B3E47C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 022A0 80B3E480 0C2CF11A */  jal     func_80B3C468              
/* 022A4 80B3E484 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 022A8 80B3E488 0C2CF0C7 */  jal     func_80B3C31C              
/* 022AC 80B3E48C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 022B0 80B3E490 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 022B4 80B3E494 0C2CF6EB */  jal     func_80B3DBAC              
/* 022B8 80B3E498 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 022BC 80B3E49C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 022C0 80B3E4A0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 022C4 80B3E4A4 03E00008 */  jr      $ra                        
/* 022C8 80B3E4A8 00000000 */  nop


