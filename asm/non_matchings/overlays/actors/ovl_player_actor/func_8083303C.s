glabel func_8083303C
/* 00E2C 8083303C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00E30 80833040 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00E34 80833044 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E38 80833048 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E3C 8083304C 0C20CBFF */  jal     func_80832FFC              
/* 00E40 80833050 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00E44 80833054 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E48 80833058 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E4C 8083305C 03E00008 */  jr      $ra                        
/* 00E50 80833060 00000000 */  nop
