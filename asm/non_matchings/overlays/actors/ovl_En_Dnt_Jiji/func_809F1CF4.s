glabel func_809F1CF4
/* 00214 809F1CF4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00218 809F1CF8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0021C 809F1CFC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00220 809F1D00 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00224 809F1D04 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00228 809F1D08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0022C 809F1D0C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00230 809F1D10 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00234 809F1D14 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 00238 809F1D18 86180240 */  lh      $t8, 0x0240($s0)           ## 00000240
/* 0023C 809F1D1C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00240 809F1D20 1701001C */  bne     $t8, $at, .L809F1D94       
/* 00244 809F1D24 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00248 809F1D28 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 0024C 809F1D2C C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00250 809F1D30 4606203C */  c.lt.s  $f4, $f6                   
/* 00254 809F1D34 00000000 */  nop
/* 00258 809F1D38 45020017 */  bc1fl   .L809F1D98                 
/* 0025C 809F1D3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00260 809F1D40 0C02FF21 */  jal     Gameplay_InCsMode              
/* 00264 809F1D44 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00268 809F1D48 14400012 */  bne     $v0, $zero, .L809F1D94     
/* 0026C 809F1D4C 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 00270 809F1D50 8F28067C */  lw      $t0, 0x067C($t9)           ## 0000067C
/* 00274 809F1D54 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00278 809F1D58 240508B6 */  addiu   $a1, $zero, 0x08B6         ## $a1 = 000008B6
/* 0027C 809F1D5C 31090800 */  andi    $t1, $t0, 0x0800           ## $t1 = 00000000
/* 00280 809F1D60 1520000C */  bne     $t1, $zero, .L809F1D94     
/* 00284 809F1D64 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 00288 809F1D68 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 0028C 809F1D6C 0C02003E */  jal     func_800800F8              
/* 00290 809F1D70 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00294 809F1D74 A6000240 */  sh      $zero, 0x0240($s0)         ## 00000240
/* 00298 809F1D78 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0029C 809F1D7C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 002A0 809F1D80 0C00B7D5 */  jal     func_8002DF54              
/* 002A4 809F1D84 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 002A8 809F1D88 3C0A809F */  lui     $t2, %hi(func_809F1EFC)    ## $t2 = 809F0000
/* 002AC 809F1D8C 254A1EFC */  addiu   $t2, $t2, %lo(func_809F1EFC) ## $t2 = 809F1EFC
/* 002B0 809F1D90 AE0A022C */  sw      $t2, 0x022C($s0)           ## 0000022C
.L809F1D94:
/* 002B4 809F1D94 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F1D98:
/* 002B8 809F1D98 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 002BC 809F1D9C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 002C0 809F1DA0 03E00008 */  jr      $ra                        
/* 002C4 809F1DA4 00000000 */  nop
