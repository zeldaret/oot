glabel func_80B58E7C
/* 05ACC 80B58E7C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05AD0 80B58E80 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05AD4 80B58E84 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 05AD8 80B58E88 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 05ADC 80B58E8C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05AE0 80B58E90 0C2D5378 */  jal     func_80B54DE0              
/* 05AE4 80B58E94 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 05AE8 80B58E98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05AEC 80B58E9C 0C2D4DD9 */  jal     func_80B53764              
/* 05AF0 80B58EA0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05AF4 80B58EA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05AF8 80B58EA8 0C2D4CFF */  jal     func_80B533FC              
/* 05AFC 80B58EAC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05B00 80B58EB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B04 80B58EB4 0C2D4D9B */  jal     func_80B5366C              
/* 05B08 80B58EB8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05B0C 80B58EBC 0C2D4D33 */  jal     func_80B534CC              
/* 05B10 80B58EC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B14 80B58EC4 0C2D4E53 */  jal     func_80B5394C              
/* 05B18 80B58EC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B1C 80B58ECC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B20 80B58ED0 0C2D6005 */  jal     func_80B58014              
/* 05B24 80B58ED4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05B28 80B58ED8 0C2D4DAD */  jal     func_80B536B4              
/* 05B2C 80B58EDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B30 80B58EE0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05B34 80B58EE4 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 05B38 80B58EE8 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 05B3C 80B58EEC 03E00008 */  jr      $ra                        
/* 05B40 80B58EF0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


