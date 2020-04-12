glabel func_80A3B92C
/* 011DC 80A3B92C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 011E0 80A3B930 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 011E4 80A3B934 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 011E8 80A3B938 0C021344 */  jal     Item_Give              
/* 011EC 80A3B93C 2405001A */  addiu   $a1, $zero, 0x001A         ## $a1 = 0000001A
/* 011F0 80A3B940 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 011F4 80A3B944 85C401C8 */  lh      $a0, 0x01C8($t6)           ## 000001C8
/* 011F8 80A3B948 00042023 */  subu    $a0, $zero, $a0            
/* 011FC 80A3B94C 00042400 */  sll     $a0, $a0, 16               
/* 01200 80A3B950 0C021CC3 */  jal     Rupees_ChangeBy              
/* 01204 80A3B954 00042403 */  sra     $a0, $a0, 16               
/* 01208 80A3B958 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0120C 80A3B95C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01210 80A3B960 03E00008 */  jr      $ra                        
/* 01214 80A3B964 00000000 */  nop
