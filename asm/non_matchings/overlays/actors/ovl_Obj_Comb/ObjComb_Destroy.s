glabel ObjComb_Destroy
/* 00428 80B91F88 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0042C 80B91F8C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00430 80B91F90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00434 80B91F94 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00438 80B91F98 0C016F32 */  jal     func_8005BCC8              
/* 0043C 80B91F9C 24E50150 */  addiu   $a1, $a3, 0x0150           ## $a1 = 00000150
/* 00440 80B91FA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00444 80B91FA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00448 80B91FA8 03E00008 */  jr      $ra                        
/* 0044C 80B91FAC 00000000 */  nop


