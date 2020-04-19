glabel func_80B3F6DC
/* 034FC 80B3F6DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03500 80B3F6E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03504 80B3F6E4 24050030 */  addiu   $a1, $zero, 0x0030         ## $a1 = 00000030
/* 03508 80B3F6E8 0C2CF1EF */  jal     func_80B3C7BC              
/* 0350C 80B3F6EC 24060031 */  addiu   $a2, $zero, 0x0031         ## $a2 = 00000031
/* 03510 80B3F6F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03514 80B3F6F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03518 80B3F6F8 03E00008 */  jr      $ra                        
/* 0351C 80B3F6FC 00000000 */  nop
