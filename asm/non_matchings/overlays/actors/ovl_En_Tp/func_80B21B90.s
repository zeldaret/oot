glabel func_80B21B90
/* 00DB0 80B21B90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DB4 80B21B94 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DB8 80B21B98 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00DBC 80B21B9C 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00DC0 80B21BA0 240FC000 */  addiu   $t7, $zero, 0xC000         ## $t7 = FFFFC000
/* 00DC4 80B21BA4 2418003C */  addiu   $t8, $zero, 0x003C         ## $t8 = 0000003C
/* 00DC8 80B21BA8 3C0580B2 */  lui     $a1, %hi(func_80B21BDC)    ## $a1 = 80B20000
/* 00DCC 80B21BAC AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00DD0 80B21BB0 AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 00DD4 80B21BB4 A48F00B4 */  sh      $t7, 0x00B4($a0)           ## 000000B4
/* 00DD8 80B21BB8 A498015A */  sh      $t8, 0x015A($a0)           ## 0000015A
/* 00DDC 80B21BBC A480015C */  sh      $zero, 0x015C($a0)         ## 0000015C
/* 00DE0 80B21BC0 24A51BDC */  addiu   $a1, $a1, %lo(func_80B21BDC) ## $a1 = 80B21BDC
/* 00DE4 80B21BC4 0C2C8378 */  jal     func_80B20DE0              
/* 00DE8 80B21BC8 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00DEC 80B21BCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DF0 80B21BD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DF4 80B21BD4 03E00008 */  jr      $ra                        
/* 00DF8 80B21BD8 00000000 */  nop


