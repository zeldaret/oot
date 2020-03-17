glabel EnEncount2_Draw
/* 00CE4 80A08674 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CE8 80A08678 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CEC 80A0867C 0C282247 */  jal     func_80A0891C              
/* 00CF0 80A08680 00000000 */  nop
/* 00CF4 80A08684 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CF8 80A08688 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CFC 80A0868C 03E00008 */  jr      $ra                        
/* 00D00 80A08690 00000000 */  nop


