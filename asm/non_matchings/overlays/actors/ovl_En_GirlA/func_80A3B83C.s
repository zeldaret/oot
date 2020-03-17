glabel func_80A3B83C
/* 010EC 80A3B83C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 010F0 80A3B840 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 010F4 80A3B844 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 010F8 80A3B848 0C021344 */  jal     Item_Give              
/* 010FC 80A3B84C 2405003E */  addiu   $a1, $zero, 0x003E         ## $a1 = 0000003E
/* 01100 80A3B850 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 01104 80A3B854 85C401C8 */  lh      $a0, 0x01C8($t6)           ## 000001C8
/* 01108 80A3B858 00042023 */  subu    $a0, $zero, $a0            
/* 0110C 80A3B85C 00042400 */  sll     $a0, $a0, 16               
/* 01110 80A3B860 0C021CC3 */  jal     Rupees_ChangeBy              
/* 01114 80A3B864 00042403 */  sra     $a0, $a0, 16               
/* 01118 80A3B868 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0111C 80A3B86C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01120 80A3B870 03E00008 */  jr      $ra                        
/* 01124 80A3B874 00000000 */  nop


