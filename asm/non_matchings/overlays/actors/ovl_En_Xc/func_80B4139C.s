glabel func_80B4139C
/* 051BC 80B4139C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 051C0 80B413A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 051C4 80B413A4 0C2CF99A */  jal     func_80B3E668              
/* 051C8 80B413A8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 051CC 80B413AC 0C2D035D */  jal     func_80B40D74              
/* 051D0 80B413B0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 051D4 80B413B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 051D8 80B413B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 051DC 80B413BC 03E00008 */  jr      $ra                        
/* 051E0 80B413C0 00000000 */  nop
