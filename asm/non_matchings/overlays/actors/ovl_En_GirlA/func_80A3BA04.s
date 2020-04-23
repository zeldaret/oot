glabel func_80A3BA04
/* 012B4 80A3BA04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012B8 80A3BA08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012BC 80A3BA0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 012C0 80A3BA10 0C021344 */  jal     Item_Give              
/* 012C4 80A3BA14 24050095 */  addiu   $a1, $zero, 0x0095         ## $a1 = 00000095
/* 012C8 80A3BA18 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 012CC 80A3BA1C 85C401C8 */  lh      $a0, 0x01C8($t6)           ## 000001C8
/* 012D0 80A3BA20 00042023 */  subu    $a0, $zero, $a0            
/* 012D4 80A3BA24 00042400 */  sll     $a0, $a0, 16               
/* 012D8 80A3BA28 0C021CC3 */  jal     Rupees_ChangeBy              
/* 012DC 80A3BA2C 00042403 */  sra     $a0, $a0, 16               
/* 012E0 80A3BA30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 012E4 80A3BA34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 012E8 80A3BA38 03E00008 */  jr      $ra                        
/* 012EC 80A3BA3C 00000000 */  nop
