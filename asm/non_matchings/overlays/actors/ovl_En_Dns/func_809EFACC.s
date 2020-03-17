glabel func_809EFACC
/* 0077C 809EFACC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00780 809EFAD0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00784 809EFAD4 8C8E02C0 */  lw      $t6, 0x02C0($a0)           ## 000002C0
/* 00788 809EFAD8 85C40000 */  lh      $a0, 0x0000($t6)           ## 00000000
/* 0078C 809EFADC 00042023 */  subu    $a0, $zero, $a0            
/* 00790 809EFAE0 00042400 */  sll     $a0, $a0, 16               
/* 00794 809EFAE4 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00798 809EFAE8 00042403 */  sra     $a0, $a0, 16               
/* 0079C 809EFAEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007A0 809EFAF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007A4 809EFAF4 03E00008 */  jr      $ra                        
/* 007A8 809EFAF8 00000000 */  nop


