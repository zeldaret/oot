glabel func_809815C8
/* 03F58 809815C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03F5C 809815CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03F60 809815D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03F64 809815D4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03F68 809815D8 0C25FB59 */  jal     func_8097ED64              
/* 03F6C 809815DC 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 03F70 809815E0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03F74 809815E4 0C260509 */  jal     func_80981424              
/* 03F78 809815E8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03F7C 809815EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03F80 809815F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03F84 809815F4 03E00008 */  jr      $ra                        
/* 03F88 809815F8 00000000 */  nop


