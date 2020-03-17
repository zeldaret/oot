glabel func_809EFA28
/* 006D8 809EFA28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006DC 809EFA2C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006E0 809EFA30 8C8E02C0 */  lw      $t6, 0x02C0($a0)           ## 000002C0
/* 006E4 809EFA34 85C40000 */  lh      $a0, 0x0000($t6)           ## 00000000
/* 006E8 809EFA38 00042023 */  subu    $a0, $zero, $a0            
/* 006EC 809EFA3C 00042400 */  sll     $a0, $a0, 16               
/* 006F0 809EFA40 0C021CC3 */  jal     Rupees_ChangeBy              
/* 006F4 809EFA44 00042403 */  sra     $a0, $a0, 16               
/* 006F8 809EFA48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006FC 809EFA4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00700 809EFA50 03E00008 */  jr      $ra                        
/* 00704 809EFA54 00000000 */  nop


