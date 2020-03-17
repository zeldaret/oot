glabel func_80A3BC0C
/* 014BC 80A3BC0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014C0 80A3BC10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 014C4 80A3BC14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 014C8 80A3BC18 84A401C8 */  lh      $a0, 0x01C8($a1)           ## 000001C8
/* 014CC 80A3BC1C 00042023 */  subu    $a0, $zero, $a0            
/* 014D0 80A3BC20 00042400 */  sll     $a0, $a0, 16               
/* 014D4 80A3BC24 0C021CC3 */  jal     Rupees_ChangeBy              
/* 014D8 80A3BC28 00042403 */  sra     $a0, $a0, 16               
/* 014DC 80A3BC2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 014E0 80A3BC30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 014E4 80A3BC34 03E00008 */  jr      $ra                        
/* 014E8 80A3BC38 00000000 */  nop


