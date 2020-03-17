glabel func_80B3D710
/* 01530 80B3D710 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01534 80B3D714 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01538 80B3D718 0C00B638 */  jal     Actor_MoveForward
              
/* 0153C 80B3D71C 00000000 */  nop
/* 01540 80B3D720 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01544 80B3D724 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01548 80B3D728 03E00008 */  jr      $ra                        
/* 0154C 80B3D72C 00000000 */  nop


