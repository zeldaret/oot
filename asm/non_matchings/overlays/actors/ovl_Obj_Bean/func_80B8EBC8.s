glabel func_80B8EBC8
/* 00148 80B8EBC8 A48001BA */  sh      $zero, 0x01BA($a0)         ## 000001BA
/* 0014C 80B8EBCC 848201BA */  lh      $v0, 0x01BA($a0)           ## 000001BA
/* 00150 80B8EBD0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00154 80B8EBD4 A48201B8 */  sh      $v0, 0x01B8($a0)           ## 000001B8
/* 00158 80B8EBD8 A48201B6 */  sh      $v0, 0x01B6($a0)           ## 000001B6
/* 0015C 80B8EBDC 03E00008 */  jr      $ra                        
/* 00160 80B8EBE0 E48401E4 */  swc1    $f4, 0x01E4($a0)           ## 000001E4


