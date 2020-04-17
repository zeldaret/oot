glabel func_809BCEBC
/* 0025C 809BCEBC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00260 809BCEC0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00264 809BCEC4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00268 809BCEC8 C4880024 */  lwc1    $f8, 0x0024($a0)           ## 00000024
/* 0026C 809BCECC C486000C */  lwc1    $f6, 0x000C($a0)           ## 0000000C
/* 00270 809BCED0 C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000028
/* 00274 809BCED4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00278 809BCED8 E7A80024 */  swc1    $f8, 0x0024($sp)           
/* 0027C 809BCEDC C48A000C */  lwc1    $f10, 0x000C($a0)          ## 0000000C
/* 00280 809BCEE0 44818000 */  mtc1    $at, $f16                  ## $f16 = 3.00
/* 00284 809BCEE4 46062001 */  sub.s   $f0, $f4, $f6              
/* 00288 809BCEE8 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 0028C 809BCEEC 01E57821 */  addu    $t7, $t7, $a1              
/* 00290 809BCEF0 46105480 */  add.s   $f18, $f10, $f16           
/* 00294 809BCEF4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00298 809BCEF8 E7B20028 */  swc1    $f18, 0x0028($sp)          
/* 0029C 809BCEFC C484002C */  lwc1    $f4, 0x002C($a0)           ## 0000002C
/* 002A0 809BCF00 E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 002A4 809BCF04 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 002A8 809BCF08 01E1001B */  divu    $zero, $t7, $at            
/* 002AC 809BCF0C 0000C010 */  mfhi    $t8                        
/* 002B0 809BCF10 57000012 */  bnel    $t8, $zero, .L809BCF5C     
/* 002B4 809BCF14 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002B8 809BCF18 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 002BC 809BCF1C 3C01C2C8 */  lui     $at, 0xC2C8                ## $at = C2C80000
/* 002C0 809BCF20 4606003E */  c.le.s  $f0, $f6                   
/* 002C4 809BCF24 00000000 */  nop
/* 002C8 809BCF28 4502000C */  bc1fl   .L809BCF5C                 
/* 002CC 809BCF2C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002D0 809BCF30 44814000 */  mtc1    $at, $f8                   ## $f8 = -100.00
/* 002D4 809BCF34 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002D8 809BCF38 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 002DC 809BCF3C 4600403C */  c.lt.s  $f8, $f0                   
/* 002E0 809BCF40 24060320 */  addiu   $a2, $zero, 0x0320         ## $a2 = 00000320
/* 002E4 809BCF44 24070514 */  addiu   $a3, $zero, 0x0514         ## $a3 = 00000514
/* 002E8 809BCF48 45020004 */  bc1fl   .L809BCF5C                 
/* 002EC 809BCF4C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002F0 809BCF50 0C00A511 */  jal     func_80029444              
/* 002F4 809BCF54 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 002F8 809BCF58 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BCF5C:
/* 002FC 809BCF5C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00300 809BCF60 03E00008 */  jr      $ra                        
/* 00304 809BCF64 00000000 */  nop
