glabel func_80B02834
/* 005C4 80B02834 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005C8 80B02838 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005CC 80B0283C 0C2C09C0 */  jal     func_80B02700              
/* 005D0 80B02840 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 005D4 80B02844 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005D8 80B02848 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005DC 80B0284C 03E00008 */  jr      $ra                        
/* 005E0 80B02850 00000000 */  nop
