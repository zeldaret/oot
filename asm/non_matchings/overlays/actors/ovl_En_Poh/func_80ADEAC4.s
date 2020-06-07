glabel func_80ADEAC4
/* 00D74 80ADEAC4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D78 80ADEAC8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D7C 80ADEACC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D80 80ADEAD0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D84 80ADEAD4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D88 80ADEAD8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00D8C 80ADEADC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D90 80ADEAE0 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00D94 80ADEAE4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00D98 80ADEAE8 0C0295B2 */  jal     func_800A56C8              
/* 00D9C 80ADEAEC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00DA0 80ADEAF0 10400005 */  beq     $v0, $zero, .L80ADEB08     
/* 00DA4 80ADEAF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DA8 80ADEAF8 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 00DAC 80ADEAFC 10400002 */  beq     $v0, $zero, .L80ADEB08     
/* 00DB0 80ADEB00 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00DB4 80ADEB04 A60E0198 */  sh      $t6, 0x0198($s0)           ## 00000198
.L80ADEB08:
/* 00DB8 80ADEB08 0C2B7A73 */  jal     func_80ADE9CC              
/* 00DBC 80ADEB0C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00DC0 80ADEB10 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00DC4 80ADEB14 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 00DC8 80ADEB18 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00DCC 80ADEB1C 4606203C */  c.lt.s  $f4, $f6                   
/* 00DD0 80ADEB20 00000000 */  nop
/* 00DD4 80ADEB24 45020006 */  bc1fl   .L80ADEB40                 
/* 00DD8 80ADEB28 860F0198 */  lh      $t7, 0x0198($s0)           ## 00000198
/* 00DDC 80ADEB2C 0C2B786F */  jal     func_80ADE1BC              
/* 00DE0 80ADEB30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DE4 80ADEB34 10000007 */  beq     $zero, $zero, .L80ADEB54   
/* 00DE8 80ADEB38 9218029D */  lbu     $t8, 0x029D($s0)           ## 0000029D
/* 00DEC 80ADEB3C 860F0198 */  lh      $t7, 0x0198($s0)           ## 00000198
.L80ADEB40:
/* 00DF0 80ADEB40 55E00004 */  bnel    $t7, $zero, .L80ADEB54     
/* 00DF4 80ADEB44 9218029D */  lbu     $t8, 0x029D($s0)           ## 0000029D
/* 00DF8 80ADEB48 0C2B785B */  jal     func_80ADE16C              
/* 00DFC 80ADEB4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E00 80ADEB50 9218029D */  lbu     $t8, 0x029D($s0)           ## 0000029D
.L80ADEB54:
/* 00E04 80ADEB54 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00E08 80ADEB58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E0C 80ADEB5C 57010004 */  bnel    $t8, $at, .L80ADEB70       
/* 00E10 80ADEB60 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E14 80ADEB64 0C00BE5D */  jal     func_8002F974              
/* 00E18 80ADEB68 24053071 */  addiu   $a1, $zero, 0x3071         ## $a1 = 00003071
/* 00E1C 80ADEB6C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADEB70:
/* 00E20 80ADEB70 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00E24 80ADEB74 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E28 80ADEB78 03E00008 */  jr      $ra                        
/* 00E2C 80ADEB7C 00000000 */  nop
