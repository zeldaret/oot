glabel func_80B3F144
/* 02F64 80B3F144 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F68 80B3F148 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F6C 80B3F14C 0C2CFB5A */  jal     func_80B3ED68              
/* 02F70 80B3F150 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02F74 80B3F154 0C2CFBA9 */  jal     func_80B3EEA4              
/* 02F78 80B3F158 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02F7C 80B3F15C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02F80 80B3F160 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F84 80B3F164 03E00008 */  jr      $ra                        
/* 02F88 80B3F168 00000000 */  nop
