glabel func_80A33A0C
/* 00E3C 80A33A0C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E40 80A33A10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E44 80A33A14 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00E48 80A33A18 0C00BD04 */  jal     func_8002F410              
/* 00E4C 80A33A1C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00E50 80A33A20 10400006 */  beq     $v0, $zero, .L80A33A3C     
/* 00E54 80A33A24 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00E58 80A33A28 3C0E80A3 */  lui     $t6, %hi(func_80A33930)    ## $t6 = 80A30000
/* 00E5C 80A33A2C 25CE3930 */  addiu   $t6, $t6, %lo(func_80A33930) ## $t6 = 80A33930
/* 00E60 80A33A30 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 00E64 80A33A34 10000009 */  beq     $zero, $zero, .L80A33A5C   
/* 00E68 80A33A38 AC8E0308 */  sw      $t6, 0x0308($a0)           ## 00000308
.L80A33A3C:
/* 00E6C 80A33A3C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00E70 80A33A40 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00E74 80A33A44 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00E78 80A33A48 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 00E7C 80A33A4C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00E80 80A33A50 2406003A */  addiu   $a2, $zero, 0x003A         ## $a2 = 0000003A
/* 00E84 80A33A54 0C00BD0D */  jal     func_8002F434              
/* 00E88 80A33A58 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A33A5C:
/* 00E8C 80A33A5C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E90 80A33A60 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E94 80A33A64 03E00008 */  jr      $ra                        
/* 00E98 80A33A68 00000000 */  nop


