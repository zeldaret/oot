glabel DoorKiller_Update
/* 011CC 80995E1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 011D0 80995E20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 011D4 80995E24 8C990280 */  lw      $t9, 0x0280($a0)           ## 00000280
/* 011D8 80995E28 0320F809 */  jalr    $ra, $t9                   
/* 011DC 80995E2C 00000000 */  nop
/* 011E0 80995E30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 011E4 80995E34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 011E8 80995E38 03E00008 */  jr      $ra                        
/* 011EC 80995E3C 00000000 */  nop


