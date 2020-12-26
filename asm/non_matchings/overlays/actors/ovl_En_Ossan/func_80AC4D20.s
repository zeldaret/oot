glabel func_80AC4D20
/* 02080 80AC4D20 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02084 80AC4D24 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02088 80AC4D28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0208C 80AC4D2C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02090 80AC4D30 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02094 80AC4D34 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02098 80AC4D38 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 0209C 80AC4D3C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 020A0 80AC4D40 248402D4 */  addiu   $a0, $a0, 0x02D4           ## $a0 = 000002D4
/* 020A4 80AC4D44 0C01E107 */  jal     Math_ApproachF
              
/* 020A8 80AC4D48 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 020AC 80AC4D4C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 020B0 80AC4D50 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 020B4 80AC4D54 C60002D4 */  lwc1    $f0, 0x02D4($s0)           ## 000002D4
/* 020B8 80AC4D58 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 020BC 80AC4D5C 4604003C */  c.lt.s  $f0, $f4                   
/* 020C0 80AC4D60 00000000 */  nop
/* 020C4 80AC4D64 4502000C */  bc1fl   .L80AC4D98                 
/* 020C8 80AC4D68 44060000 */  mfc1    $a2, $f0                   
/* 020CC 80AC4D6C 44813000 */  mtc1    $at, $f6                   ## $f6 = -0.50
/* 020D0 80AC4D70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020D4 80AC4D74 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 020D8 80AC4D78 4600303C */  c.lt.s  $f6, $f0                   
/* 020DC 80AC4D7C 00000000 */  nop
/* 020E0 80AC4D80 45020005 */  bc1fl   .L80AC4D98                 
/* 020E4 80AC4D84 44060000 */  mfc1    $a2, $f0                   
/* 020E8 80AC4D88 0C2B0CD4 */  jal     func_80AC3350              
/* 020EC 80AC4D8C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 020F0 80AC4D90 C60002D4 */  lwc1    $f0, 0x02D4($s0)           ## 000002D4
/* 020F4 80AC4D94 44060000 */  mfc1    $a2, $f0                   
.L80AC4D98:
/* 020F8 80AC4D98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020FC 80AC4D9C 0C2B0CD4 */  jal     func_80AC3350              
/* 02100 80AC4DA0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02104 80AC4DA4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 02108 80AC4DA8 C60A02D4 */  lwc1    $f10, 0x02D4($s0)          ## 000002D4
/* 0210C 80AC4DAC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02110 80AC4DB0 460A4032 */  c.eq.s  $f8, $f10                  
/* 02114 80AC4DB4 00000000 */  nop
/* 02118 80AC4DB8 45020004 */  bc1fl   .L80AC4DCC                 
/* 0211C 80AC4DBC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02120 80AC4DC0 0C2B0E6B */  jal     func_80AC39AC              
/* 02124 80AC4DC4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02128 80AC4DC8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC4DCC:
/* 0212C 80AC4DCC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02130 80AC4DD0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02134 80AC4DD4 03E00008 */  jr      $ra                        
/* 02138 80AC4DD8 00000000 */  nop
