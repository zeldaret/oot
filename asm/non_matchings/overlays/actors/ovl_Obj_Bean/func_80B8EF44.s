glabel func_80B8EF44
/* 004C4 80B8EF44 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 004C8 80B8EF48 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 004CC 80B8EF4C 01C57021 */  addu    $t6, $t6, $a1              
/* 004D0 80B8EF50 8DCE1E08 */  lw      $t6, 0x1E08($t6)           ## 00011E08
/* 004D4 80B8EF54 000FC203 */  sra     $t8, $t7,  8               
/* 004D8 80B8EF58 3319001F */  andi    $t9, $t8, 0x001F           ## $t9 = 00000000
/* 004DC 80B8EF5C 001940C0 */  sll     $t0, $t9,  3               
/* 004E0 80B8EF60 01C84821 */  addu    $t1, $t6, $t0              
/* 004E4 80B8EF64 912A0000 */  lbu     $t2, 0x0000($t1)           ## 00000000
/* 004E8 80B8EF68 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 004EC 80B8EF6C A48001F2 */  sh      $zero, 0x01F2($a0)         ## 000001F2
/* 004F0 80B8EF70 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFF
/* 004F4 80B8EF74 A48B01F0 */  sh      $t3, 0x01F0($a0)           ## 000001F0
/* 004F8 80B8EF78 03E00008 */  jr      $ra                        
/* 004FC 80B8EF7C A48C01F4 */  sh      $t4, 0x01F4($a0)           ## 000001F4


