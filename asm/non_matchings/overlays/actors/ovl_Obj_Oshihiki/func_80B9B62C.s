.late_rodata
.late_rodata_alignment 4
glabel jtbl_80B9CCDC
    .word L80B9B658
    .word L80B9B658
    .word L80B9B668
    .word L80B9B678
    .word L80B9B658
    .word L80B9B658
    .word L80B9B668
    .word L80B9B678

.text
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
glabel L80B9B668
/* 004E8 80B9B668 3C190500 */  lui     $t9, 0x0500                ## $t9 = 05000000
/* 004EC 80B9B66C 27393B50 */  addiu   $t9, $t9, 0x3B50           ## $t9 = 05003B50
/* 004F0 80B9B670 03E00008 */  jr      $ra                        
/* 004F4 80B9B674 AC9901CC */  sw      $t9, 0x01CC($a0)           ## 000001CC
glabel L80B9B678
/* 004F8 80B9B678 3C080500 */  lui     $t0, 0x0500                ## $t0 = 05000000
/* 004FC 80B9B67C 25084350 */  addiu   $t0, $t0, 0x4350           ## $t0 = 05004350
/* 00500 80B9B680 AC8801CC */  sw      $t0, 0x01CC($a0)           ## 000001CC
.L80B9B684:
/* 00504 80B9B684 03E00008 */  jr      $ra                        
/* 00508 80B9B688 00000000 */  nop
