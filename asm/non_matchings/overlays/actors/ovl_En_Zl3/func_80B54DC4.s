glabel func_80B54DC4
/* 01A14 80B54DC4 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 01A18 80B54DC8 00031903 */  sra     $v1, $v1,  4               
/* 01A1C 80B54DCC 03E00008 */  jr      $ra                        
/* 01A20 80B54DD0 3062000F */  andi    $v0, $v1, 0x000F           ## $v0 = 00000000
