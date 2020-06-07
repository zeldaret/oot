glabel func_809EF9F8
/* 006A8 809EF9F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006AC 809EF9FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006B0 809EFA00 8C8E02C0 */  lw      $t6, 0x02C0($a0)           ## 000002C0
/* 006B4 809EFA04 85C40000 */  lh      $a0, 0x0000($t6)           ## 00000000
/* 006B8 809EFA08 00042023 */  subu    $a0, $zero, $a0            
/* 006BC 809EFA0C 00042400 */  sll     $a0, $a0, 16               
/* 006C0 809EFA10 0C021CC3 */  jal     Rupees_ChangeBy              
/* 006C4 809EFA14 00042403 */  sra     $a0, $a0, 16               
/* 006C8 809EFA18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006CC 809EFA1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006D0 809EFA20 03E00008 */  jr      $ra                        
/* 006D4 809EFA24 00000000 */  nop
