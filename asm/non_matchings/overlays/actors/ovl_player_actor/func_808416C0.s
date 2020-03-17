glabel func_808416C0
/* 0F4B0 808416C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0F4B4 808416C4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0F4B8 808416C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0F4BC 808416CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0F4C0 808416D0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0F4C4 808416D4 3C068084 */  lui     $a2, %hi(func_808417FC)    ## $a2 = 80840000
/* 0F4C8 808416D8 24C617FC */  addiu   $a2, $a2, %lo(func_808417FC) ## $a2 = 808417FC
/* 0F4CC 808416DC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0F4D0 808416E0 0C20D716 */  jal     func_80835C58              
/* 0F4D4 808416E4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0F4D8 808416E8 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0F4DC 808416EC 24C62DA8 */  addiu   $a2, $a2, 0x2DA8           ## $a2 = 04002DA8
/* 0F4E0 808416F0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0F4E4 808416F4 0C20C899 */  jal     func_80832264              
/* 0F4E8 808416F8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0F4EC 808416FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0F4F0 80841700 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0F4F4 80841704 03E00008 */  jr      $ra                        
/* 0F4F8 80841708 00000000 */  nop


