glabel func_80A33B7C
/* 00FAC 80A33B7C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00FB0 80A33B80 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FB4 80A33B84 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00FB8 80A33B88 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00FBC 80A33B8C 948E02F4 */  lhu     $t6, 0x02F4($a0)           ## 000002F4
/* 00FC0 80A33B90 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00FC4 80A33B94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FC8 80A33B98 35CF0008 */  ori     $t7, $t6, 0x0008           ## $t7 = 00000008
/* 00FCC 80A33B9C A48F02F4 */  sh      $t7, 0x02F4($a0)           ## 000002F4
/* 00FD0 80A33BA0 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 00FD4 80A33BA4 0C28CAF4 */  jal     func_80A32BD0              
/* 00FD8 80A33BA8 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00FDC 80A33BAC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00FE0 80A33BB0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00FE4 80A33BB4 0C00B7D5 */  jal     func_8002DF54              
/* 00FE8 80A33BB8 2406005F */  addiu   $a2, $zero, 0x005F         ## $a2 = 0000005F
/* 00FEC 80A33BBC 0C01E221 */  jal     func_80078884              
/* 00FF0 80A33BC0 2404482C */  addiu   $a0, $zero, 0x482C         ## $a0 = 0000482C
/* 00FF4 80A33BC4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00FF8 80A33BC8 24056000 */  addiu   $a1, $zero, 0x6000         ## $a1 = 00006000
/* 00FFC 80A33BCC 0C042DA0 */  jal     func_8010B680              
/* 01000 80A33BD0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 01004 80A33BD4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01008 80A33BD8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0100C 80A33BDC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01010 80A33BE0 03E00008 */  jr      $ra                        
/* 01014 80A33BE4 00000000 */  nop
