glabel func_80A3B8F0
/* 011A0 80A3B8F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 011A4 80A3B8F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 011A8 80A3B8F8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 011AC 80A3B8FC 0C021C5D */  jal     Health_ChangeBy              
/* 011B0 80A3B900 84A501CA */  lh      $a1, 0x01CA($a1)           ## 000001CA
/* 011B4 80A3B904 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 011B8 80A3B908 85E401C8 */  lh      $a0, 0x01C8($t7)           ## 000001C8
/* 011BC 80A3B90C 00042023 */  subu    $a0, $zero, $a0            
/* 011C0 80A3B910 00042400 */  sll     $a0, $a0, 16               
/* 011C4 80A3B914 0C021CC3 */  jal     Rupees_ChangeBy              
/* 011C8 80A3B918 00042403 */  sra     $a0, $a0, 16               
/* 011CC 80A3B91C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 011D0 80A3B920 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 011D4 80A3B924 03E00008 */  jr      $ra                        
/* 011D8 80A3B928 00000000 */  nop
