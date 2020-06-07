glabel func_80B52068
/* 036D8 80B52068 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 036DC 80B5206C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 036E0 80B52070 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 036E4 80B52074 0C2D3F33 */  jal     func_80B4FCCC              
/* 036E8 80B52078 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 036EC 80B5207C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 036F0 80B52080 0C2D47EA */  jal     func_80B51FA8              
/* 036F4 80B52084 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 036F8 80B52088 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 036FC 80B5208C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03700 80B52090 03E00008 */  jr      $ra                        
/* 03704 80B52094 00000000 */  nop
