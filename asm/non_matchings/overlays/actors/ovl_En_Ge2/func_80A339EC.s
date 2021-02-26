glabel func_80A339EC
/* 00E1C 80A339EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E20 80A339F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E24 80A339F4 0C28CE07 */  jal     func_80A3381C              
/* 00E28 80A339F8 00000000 */  nop
/* 00E2C 80A339FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E30 80A33A00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E34 80A33A04 03E00008 */  jr      $ra                        
/* 00E38 80A33A08 00000000 */  nop
