glabel func_80B3EFC8
/* 02DE8 80B3EFC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02DEC 80B3EFCC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02DF0 80B3EFD0 24050026 */  addiu   $a1, $zero, 0x0026         ## $a1 = 00000026
/* 02DF4 80B3EFD4 0C2CF1EF */  jal     func_80B3C7BC              
/* 02DF8 80B3EFD8 24060027 */  addiu   $a2, $zero, 0x0027         ## $a2 = 00000027
/* 02DFC 80B3EFDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02E00 80B3EFE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02E04 80B3EFE4 03E00008 */  jr      $ra                        
/* 02E08 80B3EFE8 00000000 */  nop
