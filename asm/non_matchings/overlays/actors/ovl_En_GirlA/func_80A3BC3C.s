glabel func_80A3BC3C
/* 014EC 80A3BC3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014F0 80A3BC40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 014F4 80A3BC44 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 014F8 80A3BC48 84A401C8 */  lh      $a0, 0x01C8($a1)           ## 000001C8
/* 014FC 80A3BC4C 00042023 */  subu    $a0, $zero, $a0            
/* 01500 80A3BC50 00042400 */  sll     $a0, $a0, 16               
/* 01504 80A3BC54 0C021CC3 */  jal     Rupees_ChangeBy              
/* 01508 80A3BC58 00042403 */  sra     $a0, $a0, 16               
/* 0150C 80A3BC5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01510 80A3BC60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01514 80A3BC64 03E00008 */  jr      $ra                        
/* 01518 80A3BC68 00000000 */  nop


