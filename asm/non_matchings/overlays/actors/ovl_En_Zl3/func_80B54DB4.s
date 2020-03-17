glabel func_80B54DB4
/* 01A04 80B54DB4 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 01A08 80B54DB8 00031A03 */  sra     $v1, $v1,  8               
/* 01A0C 80B54DBC 03E00008 */  jr      $ra                        
/* 01A10 80B54DC0 306200FF */  andi    $v0, $v1, 0x00FF           ## $v0 = 00000000


