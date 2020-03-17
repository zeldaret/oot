glabel func_80AAD014
/* 00714 80AAD014 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00718 80AAD018 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0071C 80AAD01C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00720 80AAD020 0C00BCCD */  jal     func_8002F334              
/* 00724 80AAD024 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00728 80AAD028 1040000E */  beq     $v0, $zero, .L80AAD064     
/* 0072C 80AAD02C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00730 80AAD030 3C0E80AB */  lui     $t6, %hi(func_80AACFA0)    ## $t6 = 80AB0000
/* 00734 80AAD034 25CECFA0 */  addiu   $t6, $t6, %lo(func_80AACFA0) ## $t6 = 80AACFA0
/* 00738 80AAD038 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0073C 80AAD03C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00740 80AAD040 AC8E0284 */  sw      $t6, 0x0284($a0)           ## 00000284
/* 00744 80AAD044 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00748 80AAD048 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 0074C 80AAD04C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00750 80AAD050 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00754 80AAD054 2406003E */  addiu   $a2, $zero, 0x003E         ## $a2 = 0000003E
/* 00758 80AAD058 0C00BD0D */  jal     func_8002F434              
/* 0075C 80AAD05C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00760 80AAD060 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80AAD064:
/* 00764 80AAD064 948F027E */  lhu     $t7, 0x027E($a0)           ## 0000027E
/* 00768 80AAD068 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0076C 80AAD06C A498027E */  sh      $t8, 0x027E($a0)           ## 0000027E
/* 00770 80AAD070 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00774 80AAD074 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00778 80AAD078 03E00008 */  jr      $ra                        
/* 0077C 80AAD07C 00000000 */  nop


