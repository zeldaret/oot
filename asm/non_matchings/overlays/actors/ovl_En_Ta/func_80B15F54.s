glabel func_80B15F54
/* 024B4 80B15F54 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 024B8 80B15F58 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 024BC 80B15F5C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 024C0 80B15F60 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 024C4 80B15F64 0C042F6F */  jal     func_8010BDBC              
/* 024C8 80B15F68 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 024CC 80B15F6C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 024D0 80B15F70 5441001A */  bnel    $v0, $at, .L80B15FDC       
/* 024D4 80B15F74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 024D8 80B15F78 0C041AF2 */  jal     func_80106BC8              
/* 024DC 80B15F7C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 024E0 80B15F80 50400016 */  beql    $v0, $zero, .L80B15FDC     
/* 024E4 80B15F84 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 024E8 80B15F88 0C041B33 */  jal     func_80106CCC              
/* 024EC 80B15F8C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 024F0 80B15F90 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 024F4 80B15F94 3C0580B1 */  lui     $a1, %hi(func_80B15E80)    ## $a1 = 80B10000
/* 024F8 80B15F98 3C0680B1 */  lui     $a2, %hi(func_80B16938)    ## $a2 = 80B10000
/* 024FC 80B15F9C 948E02E0 */  lhu     $t6, 0x02E0($a0)           ## 000002E0
/* 02500 80B15FA0 24C66938 */  addiu   $a2, $a2, %lo(func_80B16938) ## $a2 = 80B16938
/* 02504 80B15FA4 24A55E80 */  addiu   $a1, $a1, %lo(func_80B15E80) ## $a1 = 80B15E80
/* 02508 80B15FA8 31CFFFFD */  andi    $t7, $t6, 0xFFFD           ## $t7 = 00000000
/* 0250C 80B15FAC 0C2C4EA8 */  jal     func_80B13AA0              
/* 02510 80B15FB0 A48F02E0 */  sh      $t7, 0x02E0($a0)           ## 000002E0
/* 02514 80B15FB4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02518 80B15FB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 0251C 80B15FBC 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 02520 80B15FC0 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 02524 80B15FC4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02528 80B15FC8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0252C 80B15FCC 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 02530 80B15FD0 0C00BD0D */  jal     func_8002F434              
/* 02534 80B15FD4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 02538 80B15FD8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B15FDC:
/* 0253C 80B15FDC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02540 80B15FE0 03E00008 */  jr      $ra                        
/* 02544 80B15FE4 00000000 */  nop
