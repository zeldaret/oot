glabel func_80B3D644
/* 01464 80B3D644 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01468 80B3D648 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0146C 80B3D64C 0C00B638 */  jal     Actor_MoveForward
              
/* 01470 80B3D650 00000000 */  nop
/* 01474 80B3D654 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01478 80B3D658 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0147C 80B3D65C 03E00008 */  jr      $ra                        
/* 01480 80B3D660 00000000 */  nop


