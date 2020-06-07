glabel func_80A3B780
/* 01030 80A3B780 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01034 80A3B784 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01038 80A3B788 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0103C 80A3B78C 0C021344 */  jal     Item_Give              
/* 01040 80A3B790 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01044 80A3B794 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 01048 80A3B798 85C401C8 */  lh      $a0, 0x01C8($t6)           ## 000001C8
/* 0104C 80A3B79C 00042023 */  subu    $a0, $zero, $a0            
/* 01050 80A3B7A0 00042400 */  sll     $a0, $a0, 16               
/* 01054 80A3B7A4 0C021CC3 */  jal     Rupees_ChangeBy              
/* 01058 80A3B7A8 00042403 */  sra     $a0, $a0, 16               
/* 0105C 80A3B7AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01060 80A3B7B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01064 80A3B7B4 03E00008 */  jr      $ra                        
/* 01068 80A3B7B8 00000000 */  nop
