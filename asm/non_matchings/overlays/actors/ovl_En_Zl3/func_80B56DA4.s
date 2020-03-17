glabel func_80B56DA4
/* 039F4 80B56DA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 039F8 80B56DA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 039FC 80B56DAC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03A00 80B56DB0 0C01E233 */  jal     func_800788CC              
/* 03A04 80B56DB4 240428D9 */  addiu   $a0, $zero, 0x28D9         ## $a0 = 000028D9
/* 03A08 80B56DB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03A0C 80B56DBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03A10 80B56DC0 03E00008 */  jr      $ra                        
/* 03A14 80B56DC4 00000000 */  nop


