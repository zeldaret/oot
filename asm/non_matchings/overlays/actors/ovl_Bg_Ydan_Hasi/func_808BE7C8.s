glabel func_808BE7C8
/* 002C8 808BE7C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002CC 808BE7CC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002D0 808BE7D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002D4 808BE7D4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002D8 808BE7D8 90C50168 */  lbu     $a1, 0x0168($a2)           ## 00000168
/* 002DC 808BE7DC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 002E0 808BE7E0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 002E4 808BE7E4 10400006 */  beq     $v0, $zero, .L808BE800     
/* 002E8 808BE7E8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 002EC 808BE7EC 3C0F808C */  lui     $t7, %hi(func_808BE810)    ## $t7 = 808C0000
/* 002F0 808BE7F0 240E0258 */  addiu   $t6, $zero, 0x0258         ## $t6 = 00000258
/* 002F4 808BE7F4 25EFE810 */  addiu   $t7, $t7, %lo(func_808BE810) ## $t7 = 808BE810
/* 002F8 808BE7F8 A4CE016A */  sh      $t6, 0x016A($a2)           ## 0000016A
/* 002FC 808BE7FC ACCF0164 */  sw      $t7, 0x0164($a2)           ## 00000164
.L808BE800:
/* 00300 808BE800 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00304 808BE804 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00308 808BE808 03E00008 */  jr      $ra                        
/* 0030C 808BE80C 00000000 */  nop


