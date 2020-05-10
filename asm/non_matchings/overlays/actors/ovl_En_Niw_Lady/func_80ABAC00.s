glabel func_80ABAC00
/* 00FC0 80ABAC00 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00FC4 80ABAC04 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FC8 80ABAC08 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00FCC 80ABAC0C 0C00BD04 */  jal     func_8002F410              
/* 00FD0 80ABAC10 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00FD4 80ABAC14 10400005 */  beq     $v0, $zero, .L80ABAC2C     
/* 00FD8 80ABAC18 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00FDC 80ABAC1C 3C0E80AC */  lui     $t6, %hi(func_80ABAC84)    ## $t6 = 80AC0000
/* 00FE0 80ABAC20 25CEAC84 */  addiu   $t6, $t6, %lo(func_80ABAC84) ## $t6 = 80ABAC84
/* 00FE4 80ABAC24 10000013 */  beq     $zero, $zero, .L80ABAC74   
/* 00FE8 80ABAC28 AC8E0250 */  sw      $t6, 0x0250($a0)           ## 00000250
.L80ABAC2C:
/* 00FEC 80ABAC2C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00FF0 80ABAC30 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00FF4 80ABAC34 8C4F0004 */  lw      $t7, 0x0004($v0)           ## 8015E664
/* 00FF8 80ABAC38 8C860284 */  lw      $a2, 0x0284($a0)           ## 00000284
/* 00FFC 80ABAC3C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01000 80ABAC40 15E00008 */  bne     $t7, $zero, .L80ABAC64     
/* 01004 80ABAC44 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01008 80ABAC48 94580EF4 */  lhu     $t8, 0x0EF4($v0)           ## 8015F554
/* 0100C 80ABAC4C 2406000E */  addiu   $a2, $zero, 0x000E         ## $a2 = 0000000E
/* 01010 80ABAC50 33191000 */  andi    $t9, $t8, 0x1000           ## $t9 = 00000000
/* 01014 80ABAC54 17200003 */  bne     $t9, $zero, .L80ABAC64     
/* 01018 80ABAC58 00000000 */  nop
/* 0101C 80ABAC5C 10000001 */  beq     $zero, $zero, .L80ABAC64   
/* 01020 80ABAC60 2406001D */  addiu   $a2, $zero, 0x001D         ## $a2 = 0000001D
.L80ABAC64:
/* 01024 80ABAC64 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 01028 80ABAC68 3C074348 */  lui     $a3, 0x4348                ## $a3 = 43480000
/* 0102C 80ABAC6C 0C00BD0D */  jal     func_8002F434              
/* 01030 80ABAC70 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80ABAC74:
/* 01034 80ABAC74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01038 80ABAC78 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0103C 80ABAC7C 03E00008 */  jr      $ra                        
/* 01040 80ABAC80 00000000 */  nop
