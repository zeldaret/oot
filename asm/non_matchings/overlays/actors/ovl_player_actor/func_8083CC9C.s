glabel func_8083CC9C
/* 0AA8C 8083CC9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0AA90 8083CCA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0AA94 8083CCA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0AA98 8083CCA8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0AA9C 8083CCAC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0AAA0 8083CCB0 3C068084 */  lui     $a2, %hi(func_8084193C)    ## $a2 = 80840000
/* 0AAA4 8083CCB4 24C6193C */  addiu   $a2, $a2, %lo(func_8084193C) ## $a2 = 8084193C
/* 0AAA8 8083CCB8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0AAAC 8083CCBC 0C20D716 */  jal     func_80835C58              
/* 0AAB0 8083CCC0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0AAB4 8083CCC4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0AAB8 8083CCC8 3C068085 */  lui     $a2, %hi(D_80853B6C)       ## $a2 = 80850000
/* 0AABC 8083CCCC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0AAC0 8083CCD0 90AE015B */  lbu     $t6, 0x015B($a1)           ## 0000015B
/* 0AAC4 8083CCD4 000E7880 */  sll     $t7, $t6,  2               
/* 0AAC8 8083CCD8 00CF3021 */  addu    $a2, $a2, $t7              
/* 0AACC 8083CCDC 0C20CAFA */  jal     func_80832BE8              
/* 0AAD0 8083CCE0 8CC63B6C */  lw      $a2, %lo(D_80853B6C)($a2)  
/* 0AAD4 8083CCE4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0AAD8 8083CCE8 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 0AADC 8083CCEC E7040868 */  swc1    $f4, 0x0868($t8)           ## 00000868
/* 0AAE0 8083CCF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0AAE4 8083CCF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0AAE8 8083CCF8 03E00008 */  jr      $ra                        
/* 0AAEC 8083CCFC 00000000 */  nop


