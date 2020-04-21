glabel func_80AB3660
/* 028D0 80AB3660 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 028D4 80AB3664 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 028D8 80AB3668 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 028DC 80AB366C 0C01E245 */  jal     func_80078914              
/* 028E0 80AB3670 2405685C */  addiu   $a1, $zero, 0x685C         ## $a1 = 0000685C
/* 028E4 80AB3674 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 028E8 80AB3678 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 028EC 80AB367C 03E00008 */  jr      $ra                        
/* 028F0 80AB3680 00000000 */  nop
