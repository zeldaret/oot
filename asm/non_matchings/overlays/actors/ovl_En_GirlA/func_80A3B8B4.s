glabel func_80A3B8B4
/* 01164 80A3B8B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01168 80A3B8B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0116C 80A3B8BC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01170 80A3B8C0 0C021344 */  jal     Item_Give              
/* 01174 80A3B8C4 24050043 */  addiu   $a1, $zero, 0x0043         ## $a1 = 00000043
/* 01178 80A3B8C8 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 0117C 80A3B8CC 85C401C8 */  lh      $a0, 0x01C8($t6)           ## 000001C8
/* 01180 80A3B8D0 00042023 */  subu    $a0, $zero, $a0            
/* 01184 80A3B8D4 00042400 */  sll     $a0, $a0, 16               
/* 01188 80A3B8D8 0C021CC3 */  jal     Rupees_ChangeBy              
/* 0118C 80A3B8DC 00042403 */  sra     $a0, $a0, 16               
/* 01190 80A3B8E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01194 80A3B8E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01198 80A3B8E8 03E00008 */  jr      $ra                        
/* 0119C 80A3B8EC 00000000 */  nop


