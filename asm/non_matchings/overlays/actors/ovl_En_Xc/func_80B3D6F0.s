glabel func_80B3D6F0
/* 01510 80B3D6F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01514 80B3D6F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01518 80B3D6F8 0C2CF55B */  jal     func_80B3D56C              
/* 0151C 80B3D6FC 00000000 */  nop
/* 01520 80B3D700 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01524 80B3D704 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01528 80B3D708 03E00008 */  jr      $ra                        
/* 0152C 80B3D70C 00000000 */  nop


