glabel func_80A33AFC
/* 00F2C 80A33AFC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F30 80A33B00 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F34 80A33B04 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F38 80A33B08 0C00BC65 */  jal     func_8002F194              
/* 00F3C 80A33B0C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00F40 80A33B10 10400005 */  beq     $v0, $zero, .L80A33B28     
/* 00F44 80A33B14 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00F48 80A33B18 3C0E80A3 */  lui     $t6, %hi(func_80A33A6C)    ## $t6 = 80A30000
/* 00F4C 80A33B1C 25CE3A6C */  addiu   $t6, $t6, %lo(func_80A33A6C) ## $t6 = 80A33A6C
/* 00F50 80A33B20 10000010 */  beq     $zero, $zero, .L80A33B64   
/* 00F54 80A33B24 AC8E0308 */  sw      $t6, 0x0308($a0)           ## 00000308
.L80A33B28:
/* 00F58 80A33B28 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00F5C 80A33B2C 44810000 */  mtc1    $at, $f0                   ## $f0 = 300.00
/* 00F60 80A33B30 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 00F64 80A33B34 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F68 80A33B38 240F6004 */  addiu   $t7, $zero, 0x6004         ## $t7 = 00006004
/* 00F6C 80A33B3C 0301C825 */  or      $t9, $t8, $at              ## $t9 = 00010000
/* 00F70 80A33B40 A48F010E */  sh      $t7, 0x010E($a0)           ## 0000010E
/* 00F74 80A33B44 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 00F78 80A33B48 44060000 */  mfc1    $a2, $f0                   
/* 00F7C 80A33B4C 44070000 */  mfc1    $a3, $f0                   
/* 00F80 80A33B50 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00F84 80A33B54 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00F88 80A33B58 0C00BC71 */  jal     func_8002F1C4              
/* 00F8C 80A33B5C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00F90 80A33B60 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80A33B64:
/* 00F94 80A33B64 0C28CE07 */  jal     func_80A3381C              
/* 00F98 80A33B68 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00F9C 80A33B6C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FA0 80A33B70 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00FA4 80A33B74 03E00008 */  jr      $ra                        
/* 00FA8 80A33B78 00000000 */  nop
