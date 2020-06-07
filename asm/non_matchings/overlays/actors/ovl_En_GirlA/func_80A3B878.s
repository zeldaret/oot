glabel func_80A3B878
/* 01128 80A3B878 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0112C 80A3B87C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01130 80A3B880 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01134 80A3B884 0C021344 */  jal     Item_Give              
/* 01138 80A3B888 24050042 */  addiu   $a1, $zero, 0x0042         ## $a1 = 00000042
/* 0113C 80A3B88C 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 01140 80A3B890 85C401C8 */  lh      $a0, 0x01C8($t6)           ## 000001C8
/* 01144 80A3B894 00042023 */  subu    $a0, $zero, $a0            
/* 01148 80A3B898 00042400 */  sll     $a0, $a0, 16               
/* 0114C 80A3B89C 0C021CC3 */  jal     Rupees_ChangeBy              
/* 01150 80A3B8A0 00042403 */  sra     $a0, $a0, 16               
/* 01154 80A3B8A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01158 80A3B8A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0115C 80A3B8AC 03E00008 */  jr      $ra                        
/* 01160 80A3B8B0 00000000 */  nop
