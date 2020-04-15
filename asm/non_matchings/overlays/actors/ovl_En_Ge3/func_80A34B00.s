glabel func_80A34B00
/* 004E0 80A34B00 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004E4 80A34B04 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 004E8 80A34B08 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 004EC 80A34B0C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 004F0 80A34B10 0C042F6F */  jal     func_8010BDBC              
/* 004F4 80A34B14 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 004F8 80A34B18 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 004FC 80A34B1C 54410019 */  bnel    $v0, $at, .L80A34B84       
/* 00500 80A34B20 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00504 80A34B24 0C041AF2 */  jal     func_80106BC8              
/* 00508 80A34B28 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0050C 80A34B2C 50400015 */  beql    $v0, $zero, .L80A34B84     
/* 00510 80A34B30 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00514 80A34B34 0C041B33 */  jal     func_80106CCC              
/* 00518 80A34B38 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0051C 80A34B3C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00520 80A34B40 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00524 80A34B44 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00528 80A34B48 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 0052C 80A34B4C 3C1880A3 */  lui     $t8, %hi(func_80A34AA0)    ## $t8 = 80A30000
/* 00530 80A34B50 27184AA0 */  addiu   $t8, $t8, %lo(func_80A34AA0) ## $t8 = 80A34AA0
/* 00534 80A34B54 01C17824 */  and     $t7, $t6, $at              
/* 00538 80A34B58 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0053C 80A34B5C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00540 80A34B60 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00544 80A34B64 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00548 80A34B68 AC980310 */  sw      $t8, 0x0310($a0)           ## 00000310
/* 0054C 80A34B6C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00550 80A34B70 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 00554 80A34B74 2406003A */  addiu   $a2, $zero, 0x003A         ## $a2 = 0000003A
/* 00558 80A34B78 0C00BD0D */  jal     func_8002F434              
/* 0055C 80A34B7C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00560 80A34B80 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A34B84:
/* 00564 80A34B84 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00568 80A34B88 03E00008 */  jr      $ra                        
/* 0056C 80A34B8C 00000000 */  nop
