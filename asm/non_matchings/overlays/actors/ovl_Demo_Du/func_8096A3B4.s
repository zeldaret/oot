glabel func_8096A3B4
/* 008E4 8096A3B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008E8 8096A3B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008EC 8096A3BC 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 008F0 8096A3C0 0C01E245 */  jal     func_80078914              
/* 008F4 8096A3C4 24053879 */  addiu   $a1, $zero, 0x3879         ## $a1 = 00003879
/* 008F8 8096A3C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008FC 8096A3CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00900 8096A3D0 03E00008 */  jr      $ra                        
/* 00904 8096A3D4 00000000 */  nop


