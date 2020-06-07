glabel func_80A1C524
/* 01B84 80A1C524 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01B88 80A1C528 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01B8C 80A1C52C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01B90 80A1C530 0C041B33 */  jal     func_80106CCC              
/* 01B94 80A1C534 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01B98 80A1C538 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 01B9C 80A1C53C 24044827 */  addiu   $a0, $zero, 0x4827         ## $a0 = 00004827
/* 01BA0 80A1C540 0C01E221 */  jal     func_80078884              
/* 01BA4 80A1C544 ADC00388 */  sw      $zero, 0x0388($t6)         ## 00000388
/* 01BA8 80A1C548 0C03B616 */  jal     func_800ED858              
/* 01BAC 80A1C54C 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 01BB0 80A1C550 240F000C */  addiu   $t7, $zero, 0x000C         ## $t7 = 0000000C
/* 01BB4 80A1C554 3C0180A2 */  lui     $at, %hi(D_80A1CFF0)       ## $at = 80A20000
/* 01BB8 80A1C558 0C2870D1 */  jal     func_80A1C344              
/* 01BBC 80A1C55C A02FCFF0 */  sb      $t7, %lo(D_80A1CFF0)($at)  
/* 01BC0 80A1C560 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 01BC4 80A1C564 3C1880A2 */  lui     $t8, %hi(func_80A1C944)    ## $t8 = 80A20000
/* 01BC8 80A1C568 2718C944 */  addiu   $t8, $t8, %lo(func_80A1C944) ## $t8 = 80A1C944
/* 01BCC 80A1C56C AF380354 */  sw      $t8, 0x0354($t9)           ## 00000354
/* 01BD0 80A1C570 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01BD4 80A1C574 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01BD8 80A1C578 03E00008 */  jr      $ra                        
/* 01BDC 80A1C57C 00000000 */  nop
