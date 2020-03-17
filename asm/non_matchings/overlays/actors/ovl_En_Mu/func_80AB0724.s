glabel func_80AB0724
/* 00304 80AB0724 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00308 80AB0728 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0030C 80AB072C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00310 80AB0730 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00314 80AB0734 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00318 80AB0738 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0031C 80AB073C 24070010 */  addiu   $a3, $zero, 0x0010         ## $a3 = 00000010
/* 00320 80AB0740 25C5020A */  addiu   $a1, $t6, 0x020A           ## $a1 = 0000020A
/* 00324 80AB0744 0C00D3D5 */  jal     func_80034F54              
/* 00328 80AB0748 25C6022A */  addiu   $a2, $t6, 0x022A           ## $a2 = 0000022A
/* 0032C 80AB074C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00330 80AB0750 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00334 80AB0754 03E00008 */  jr      $ra                        
/* 00338 80AB0758 00000000 */  nop


