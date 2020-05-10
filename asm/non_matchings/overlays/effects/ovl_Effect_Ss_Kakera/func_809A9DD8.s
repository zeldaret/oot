glabel func_809A9DD8
/* 00758 809A9DD8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0075C 809A9DDC 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00760 809A9DE0 E7AC0000 */  swc1    $f12, 0x0000($sp)          
/* 00764 809A9DE4 03E00008 */  jr      $ra                        
/* 00768 809A9DE8 AFA50004 */  sw      $a1, 0x0004($sp)           
