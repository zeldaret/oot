glabel func_80B9AF34
/* 00564 80B9AF34 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00568 80B9AF38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0056C 80B9AF3C 0C2E6BD5 */  jal     func_80B9AF54              
/* 00570 80B9AF40 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00574 80B9AF44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00578 80B9AF48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0057C 80B9AF4C 03E00008 */  jr      $ra                        
/* 00580 80B9AF50 00000000 */  nop


