glabel func_80A3B9A4
/* 01254 80A3B9A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01258 80A3B9A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0125C 80A3B9AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01260 80A3B9B0 84A401C8 */  lh      $a0, 0x01C8($a1)           ## 000001C8
/* 01264 80A3B9B4 00042023 */  subu    $a0, $zero, $a0            
/* 01268 80A3B9B8 00042400 */  sll     $a0, $a0, 16               
/* 0126C 80A3B9BC 0C021CC3 */  jal     Rupees_ChangeBy              
/* 01270 80A3B9C0 00042403 */  sra     $a0, $a0, 16               
/* 01274 80A3B9C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01278 80A3B9C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0127C 80A3B9CC 03E00008 */  jr      $ra                        
/* 01280 80A3B9D0 00000000 */  nop
