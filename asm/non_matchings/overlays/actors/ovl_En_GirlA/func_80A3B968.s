glabel func_80A3B968
/* 01218 80A3B968 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0121C 80A3B96C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01220 80A3B970 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01224 80A3B974 0C021344 */  jal     Item_Give              
/* 01228 80A3B978 24050021 */  addiu   $a1, $zero, 0x0021         ## $a1 = 00000021
/* 0122C 80A3B97C 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 01230 80A3B980 85C401C8 */  lh      $a0, 0x01C8($t6)           ## 000001C8
/* 01234 80A3B984 00042023 */  subu    $a0, $zero, $a0            
/* 01238 80A3B988 00042400 */  sll     $a0, $a0, 16               
/* 0123C 80A3B98C 0C021CC3 */  jal     Rupees_ChangeBy              
/* 01240 80A3B990 00042403 */  sra     $a0, $a0, 16               
/* 01244 80A3B994 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01248 80A3B998 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0124C 80A3B99C 03E00008 */  jr      $ra                        
/* 01250 80A3B9A0 00000000 */  nop


