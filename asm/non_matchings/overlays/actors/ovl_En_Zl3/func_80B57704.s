glabel func_80B57704
/* 04354 80B57704 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04358 80B57708 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0435C 80B5770C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 04360 80B57710 8C8503C4 */  lw      $a1, 0x03C4($a0)           ## 000003C4
/* 04364 80B57714 0C00B2DD */  jal     Flags_SetSwitch
              
/* 04368 80B57718 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0436C 80B5771C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04370 80B57720 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04374 80B57724 03E00008 */  jr      $ra                        
/* 04378 80B57728 00000000 */  nop


