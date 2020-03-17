glabel func_8097B864
/* 02F34 8097B864 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F38 8097B868 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F3C 8097B86C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02F40 8097B870 0C25E3B9 */  jal     func_80978EE4              
/* 02F44 8097B874 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02F48 8097B878 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02F4C 8097B87C 0C25EDB1 */  jal     func_8097B6C4              
/* 02F50 8097B880 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02F54 8097B884 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02F58 8097B888 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F5C 8097B88C 03E00008 */  jr      $ra                        
/* 02F60 8097B890 00000000 */  nop


