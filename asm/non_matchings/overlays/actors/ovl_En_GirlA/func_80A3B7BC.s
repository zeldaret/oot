glabel func_80A3B7BC
/* 0106C 80A3B7BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01070 80A3B7C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01074 80A3B7C4 0C02127B */  jal     func_800849EC              
/* 01078 80A3B7C8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0107C 80A3B7CC 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 01080 80A3B7D0 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 01084 80A3B7D4 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 01088 80A3B7D8 A42EE696 */  sh      $t6, -0x196A($at)          ## 8015E696
/* 0108C 80A3B7DC 85E401C8 */  lh      $a0, 0x01C8($t7)           ## 000001C8
/* 01090 80A3B7E0 00042023 */  subu    $a0, $zero, $a0            
/* 01094 80A3B7E4 00042400 */  sll     $a0, $a0, 16               
/* 01098 80A3B7E8 0C021CC3 */  jal     Rupees_ChangeBy              
/* 0109C 80A3B7EC 00042403 */  sra     $a0, $a0, 16               
/* 010A0 80A3B7F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 010A4 80A3B7F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010A8 80A3B7F8 03E00008 */  jr      $ra                        
/* 010AC 80A3B7FC 00000000 */  nop


