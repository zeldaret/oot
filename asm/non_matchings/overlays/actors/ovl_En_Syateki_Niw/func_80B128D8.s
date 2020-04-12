glabel func_80B128D8
/* 00FE8 80B128D8 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00FEC 80B128DC 848E025E */  lh      $t6, 0x025E($a0)           ## 0000025E
/* 00FF0 80B128E0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00FF4 80B128E4 15C10002 */  bne     $t6, $at, .L80B128F0       
/* 00FF8 80B128E8 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00FFC 80B128EC A420FA2E */  sh      $zero, -0x05D2($at)        ## 8015FA2E
.L80B128F0:
/* 01000 80B128F0 03E00008 */  jr      $ra                        
/* 01004 80B128F4 00000000 */  nop
