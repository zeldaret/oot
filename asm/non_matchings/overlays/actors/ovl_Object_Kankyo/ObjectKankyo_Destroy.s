glabel ObjectKankyo_Destroy
/* 00308 80BA2DA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0030C 80BA2DAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00310 80BA2DB0 0C00B55C */  jal     Actor_Kill
              
/* 00314 80BA2DB4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00318 80BA2DB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0031C 80BA2DBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00320 80BA2DC0 03E00008 */  jr      $ra                        
/* 00324 80BA2DC4 00000000 */  nop
