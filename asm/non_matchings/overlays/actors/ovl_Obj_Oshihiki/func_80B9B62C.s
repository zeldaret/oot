glabel func_80B9B62C
/* 004AC 80B9B62C AFA50004 */  sw      $a1, 0x0004($sp)           
/* 004B0 80B9B630 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 004B4 80B9B634 31CF000F */  andi    $t7, $t6, 0x000F           ## $t7 = 00000000
/* 004B8 80B9B638 2DE10008 */  sltiu   $at, $t7, 0x0008           
/* 004BC 80B9B63C 10200011 */  beq     $at, $zero, .L80B9B684     
/* 004C0 80B9B640 000F7880 */  sll     $t7, $t7,  2               
/* 004C4 80B9B644 3C0180BA */  lui     $at, %hi(jtbl_80B9CCDC)       ## $at = 80BA0000
/* 004C8 80B9B648 002F0821 */  addu    $at, $at, $t7              
/* 004CC 80B9B64C 8C2FCCDC */  lw      $t7, %lo(jtbl_80B9CCDC)($at)  
/* 004D0 80B9B650 01E00008 */  jr      $t7                        
/* 004D4 80B9B654 00000000 */  nop
glabel L80B9B658
/* 004D8 80B9B658 3C180500 */  lui     $t8, 0x0500                ## $t8 = 05000000
/* 004DC 80B9B65C 27183350 */  addiu   $t8, $t8, 0x3350           ## $t8 = 05003350
/* 004E0 80B9B660 03E00008 */  jr      $ra                        
/* 004E4 80B9B664 AC9801CC */  sw      $t8, 0x01CC($a0)           ## 000001CC


