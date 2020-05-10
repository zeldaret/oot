glabel func_809EFA9C
/* 0074C 809EFA9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00750 809EFAA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00754 809EFAA4 8C8E02C0 */  lw      $t6, 0x02C0($a0)           ## 000002C0
/* 00758 809EFAA8 85C40000 */  lh      $a0, 0x0000($t6)           ## 00000000
/* 0075C 809EFAAC 00042023 */  subu    $a0, $zero, $a0            
/* 00760 809EFAB0 00042400 */  sll     $a0, $a0, 16               
/* 00764 809EFAB4 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00768 809EFAB8 00042403 */  sra     $a0, $a0, 16               
/* 0076C 809EFABC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00770 809EFAC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00774 809EFAC4 03E00008 */  jr      $ra                        
/* 00778 809EFAC8 00000000 */  nop
