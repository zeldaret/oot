glabel func_8093C79C
/* 03ACC 8093C79C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03AD0 8093C7A0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03AD4 8093C7A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03AD8 8093C7A8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03ADC 8093C7AC 3C0E8094 */  lui     $t6, %hi(func_8093C7E4)    ## $t6 = 80940000
/* 03AE0 8093C7B0 25CEC7E4 */  addiu   $t6, $t6, %lo(func_8093C7E4) ## $t6 = 8093C7E4
/* 03AE4 8093C7B4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 03AE8 8093C7B8 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 03AEC 8093C7BC 24A56F28 */  addiu   $a1, $a1, 0x6F28           ## $a1 = 06006F28
/* 03AF0 8093C7C0 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 03AF4 8093C7C4 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 03AF8 8093C7C8 E480FF60 */  swc1    $f0, -0x00A0($a0)          ## 000004C8
/* 03AFC 8093C7CC 0C0294D3 */  jal     func_800A534C              
/* 03B00 8093C7D0 E480FB00 */  swc1    $f0, -0x0500($a0)          ## 00000068
/* 03B04 8093C7D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03B08 8093C7D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03B0C 8093C7DC 03E00008 */  jr      $ra                        
/* 03B10 8093C7E0 00000000 */  nop


