glabel func_80AF8388
/* 00B98 80AF8388 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00B9C 80AF838C 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 00BA0 80AF8390 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 00BA4 80AF8394 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00BA8 80AF8398 4600403E */  c.le.s  $f8, $f0                   
/* 00BAC 80AF839C 00000000 */  nop
/* 00BB0 80AF83A0 4502000A */  bc1fl   .L80AF83CC                 
/* 00BB4 80AF83A4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00BB8 80AF83A8 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 00BBC 80AF83AC 00000000 */  nop
/* 00BC0 80AF83B0 460A003E */  c.le.s  $f0, $f10                  
/* 00BC4 80AF83B4 00000000 */  nop
/* 00BC8 80AF83B8 45020004 */  bc1fl   .L80AF83CC                 
/* 00BCC 80AF83BC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00BD0 80AF83C0 03E00008 */  jr      $ra                        
/* 00BD4 80AF83C4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AF83C8:
/* 00BD8 80AF83C8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AF83CC:
/* 00BDC 80AF83CC 03E00008 */  jr      $ra                        
/* 00BE0 80AF83D0 00000000 */  nop


