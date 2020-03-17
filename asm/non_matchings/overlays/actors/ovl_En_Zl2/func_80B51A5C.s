glabel func_80B51A5C
/* 030CC 80B51A5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 030D0 80B51A60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 030D4 80B51A64 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 030D8 80B51A68 0C2D3F33 */  jal     func_80B4FCCC              
/* 030DC 80B51A6C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 030E0 80B51A70 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 030E4 80B51A74 0C2D4652 */  jal     func_80B51948              
/* 030E8 80B51A78 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 030EC 80B51A7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 030F0 80B51A80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 030F4 80B51A84 03E00008 */  jr      $ra                        
/* 030F8 80B51A88 00000000 */  nop


