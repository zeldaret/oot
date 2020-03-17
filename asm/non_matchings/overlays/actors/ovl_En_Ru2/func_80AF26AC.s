glabel func_80AF26AC
/* 0015C 80AF26AC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00160 80AF26B0 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 00164 80AF26B4 AC8E02A8 */  sw      $t6, 0x02A8($a0)           ## 000002A8
/* 00168 80AF26B8 AC8002AC */  sw      $zero, 0x02AC($a0)         ## 000002AC
/* 0016C 80AF26BC AC8002B4 */  sw      $zero, 0x02B4($a0)         ## 000002B4
/* 00170 80AF26C0 AC8002B8 */  sw      $zero, 0x02B8($a0)         ## 000002B8
/* 00174 80AF26C4 A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 00178 80AF26C8 03E00008 */  jr      $ra                        
/* 0017C 80AF26CC E48402B0 */  swc1    $f4, 0x02B0($a0)           ## 000002B0


