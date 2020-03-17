glabel func_80838144
/* 05F34 80838144 2482FFFE */  addiu   $v0, $a0, 0xFFFE           ## $v0 = FFFFFFFE
/* 05F38 80838148 04400005 */  bltz    $v0, .L80838160            
/* 05F3C 8083814C 28410002 */  slti    $at, $v0, 0x0002           
/* 05F40 80838150 50200004 */  beql    $at, $zero, .L80838164     
/* 05F44 80838154 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 05F48 80838158 03E00008 */  jr      $ra                        
/* 05F4C 8083815C 00000000 */  nop
.L80838160:
/* 05F50 80838160 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80838164:
/* 05F54 80838164 03E00008 */  jr      $ra                        
/* 05F58 80838168 00000000 */  nop


