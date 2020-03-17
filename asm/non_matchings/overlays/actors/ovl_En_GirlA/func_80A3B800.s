glabel func_80A3B800
/* 010B0 80A3B800 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 010B4 80A3B804 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 010B8 80A3B808 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 010BC 80A3B80C 0C021344 */  jal     Item_Give              
/* 010C0 80A3B810 2405003F */  addiu   $a1, $zero, 0x003F         ## $a1 = 0000003F
/* 010C4 80A3B814 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 010C8 80A3B818 85C401C8 */  lh      $a0, 0x01C8($t6)           ## 000001C8
/* 010CC 80A3B81C 00042023 */  subu    $a0, $zero, $a0            
/* 010D0 80A3B820 00042400 */  sll     $a0, $a0, 16               
/* 010D4 80A3B824 0C021CC3 */  jal     Rupees_ChangeBy              
/* 010D8 80A3B828 00042403 */  sra     $a0, $a0, 16               
/* 010DC 80A3B82C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 010E0 80A3B830 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010E4 80A3B834 03E00008 */  jr      $ra                        
/* 010E8 80A3B838 00000000 */  nop


