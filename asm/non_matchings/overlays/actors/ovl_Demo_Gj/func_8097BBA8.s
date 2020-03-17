glabel func_8097BBA8
/* 03278 8097BBA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0327C 8097BBAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03280 8097BBB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03284 8097BBB4 0C25EE92 */  jal     func_8097BA48              
/* 03288 8097BBB8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0328C 8097BBBC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03290 8097BBC0 0C25EE4C */  jal     func_8097B930              
/* 03294 8097BBC4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03298 8097BBC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0329C 8097BBCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 032A0 8097BBD0 03E00008 */  jr      $ra                        
/* 032A4 8097BBD4 00000000 */  nop


