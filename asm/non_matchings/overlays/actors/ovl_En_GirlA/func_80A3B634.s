glabel func_80A3B634
/* 00EE4 80A3B634 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EE8 80A3B638 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EEC 80A3B63C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00EF0 80A3B640 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00EF4 80A3B644 84A501CA */  lh      $a1, 0x01CA($a1)           ## 000001CA
/* 00EF8 80A3B648 0C021CCC */  jal     Inventory_ChangeAmmo              
/* 00EFC 80A3B64C 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 00F00 80A3B650 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 00F04 80A3B654 85E401C8 */  lh      $a0, 0x01C8($t7)           ## 000001C8
/* 00F08 80A3B658 00042023 */  subu    $a0, $zero, $a0            
/* 00F0C 80A3B65C 00042400 */  sll     $a0, $a0, 16               
/* 00F10 80A3B660 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00F14 80A3B664 00042403 */  sra     $a0, $a0, 16               
/* 00F18 80A3B668 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F1C 80A3B66C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F20 80A3B670 03E00008 */  jr      $ra                        
/* 00F24 80A3B674 00000000 */  nop


