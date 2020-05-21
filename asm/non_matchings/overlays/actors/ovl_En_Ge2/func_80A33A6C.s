glabel func_80A33A6C
/* 00E9C 80A33A6C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00EA0 80A33A70 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00EA4 80A33A74 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00EA8 80A33A78 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00EAC 80A33A7C 0C042F6F */  jal     func_8010BDBC              
/* 00EB0 80A33A80 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00EB4 80A33A84 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00EB8 80A33A88 54410019 */  bnel    $v0, $at, .L80A33AF0       
/* 00EBC 80A33A8C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EC0 80A33A90 0C041AF2 */  jal     func_80106BC8              
/* 00EC4 80A33A94 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00EC8 80A33A98 50400015 */  beql    $v0, $zero, .L80A33AF0     
/* 00ECC 80A33A9C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00ED0 80A33AA0 0C041B33 */  jal     func_80106CCC              
/* 00ED4 80A33AA4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00ED8 80A33AA8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00EDC 80A33AAC 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00EE0 80A33AB0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00EE4 80A33AB4 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00EE8 80A33AB8 3C1880A3 */  lui     $t8, %hi(func_80A33A0C)    ## $t8 = 80A30000
/* 00EEC 80A33ABC 27183A0C */  addiu   $t8, $t8, %lo(func_80A33A0C) ## $t8 = 80A33A0C
/* 00EF0 80A33AC0 01C17824 */  and     $t7, $t6, $at              
/* 00EF4 80A33AC4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00EF8 80A33AC8 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00EFC 80A33ACC 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00F00 80A33AD0 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00F04 80A33AD4 AC980308 */  sw      $t8, 0x0308($a0)           ## 00000308
/* 00F08 80A33AD8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00F0C 80A33ADC 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 00F10 80A33AE0 2406003A */  addiu   $a2, $zero, 0x003A         ## $a2 = 0000003A
/* 00F14 80A33AE4 0C00BD0D */  jal     func_8002F434              
/* 00F18 80A33AE8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00F1C 80A33AEC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A33AF0:
/* 00F20 80A33AF0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F24 80A33AF4 03E00008 */  jr      $ra                        
/* 00F28 80A33AF8 00000000 */  nop
