glabel func_80B3C7BC
/* 005DC 80B3C7BC 8C8E0260 */  lw      $t6, 0x0260($a0)           ## 00000260
/* 005E0 80B3C7C0 10AE0002 */  beq     $a1, $t6, .L80B3C7CC       
/* 005E4 80B3C7C4 00000000 */  nop
/* 005E8 80B3C7C8 AC860260 */  sw      $a2, 0x0260($a0)           ## 00000260
.L80B3C7CC:
/* 005EC 80B3C7CC 03E00008 */  jr      $ra                        
/* 005F0 80B3C7D0 00000000 */  nop


