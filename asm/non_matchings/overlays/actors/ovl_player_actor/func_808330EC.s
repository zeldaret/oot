glabel func_808330EC
/* 00EDC 808330EC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00EE0 808330F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00EE4 808330F4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00EE8 808330F8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00EEC 808330FC 0C20CC2B */  jal     func_808330AC              
/* 00EF0 80833100 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00EF4 80833104 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EF8 80833108 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00EFC 8083310C 03E00008 */  jr      $ra                        
/* 00F00 80833110 00000000 */  nop


