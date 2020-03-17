glabel EnDoor_Update
/* 00A48 809FCC18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A4C 809FCC1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A50 809FCC20 8C9901D4 */  lw      $t9, 0x01D4($a0)           ## 000001D4
/* 00A54 809FCC24 0320F809 */  jalr    $ra, $t9                   
/* 00A58 809FCC28 00000000 */  nop
/* 00A5C 809FCC2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A60 809FCC30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A64 809FCC34 03E00008 */  jr      $ra                        
/* 00A68 809FCC38 00000000 */  nop


