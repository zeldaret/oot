glabel func_80B3EFEC
/* 02E0C 80B3EFEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02E10 80B3EFF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02E14 80B3EFF4 24050027 */  addiu   $a1, $zero, 0x0027         ## $a1 = 00000027
/* 02E18 80B3EFF8 0C2CF1EF */  jal     func_80B3C7BC              
/* 02E1C 80B3EFFC 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 02E20 80B3F000 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02E24 80B3F004 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02E28 80B3F008 03E00008 */  jr      $ra                        
/* 02E2C 80B3F00C 00000000 */  nop
