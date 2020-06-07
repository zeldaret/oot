glabel func_80A3B9D4
/* 01284 80A3B9D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01288 80A3B9D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0128C 80A3B9DC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01290 80A3B9E0 84A401C8 */  lh      $a0, 0x01C8($a1)           ## 000001C8
/* 01294 80A3B9E4 00042023 */  subu    $a0, $zero, $a0            
/* 01298 80A3B9E8 00042400 */  sll     $a0, $a0, 16               
/* 0129C 80A3B9EC 0C021CC3 */  jal     Rupees_ChangeBy              
/* 012A0 80A3B9F0 00042403 */  sra     $a0, $a0, 16               
/* 012A4 80A3B9F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 012A8 80A3B9F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 012AC 80A3B9FC 03E00008 */  jr      $ra                        
/* 012B0 80A3BA00 00000000 */  nop
