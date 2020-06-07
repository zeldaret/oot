glabel func_80851050
/* 1EE40 80851050 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1EE44 80851054 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1EE48 80851058 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1EE4C 8085105C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1EE50 80851060 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1EE54 80851064 0C20CB6C */  jal     func_80832DB0              
/* 1EE58 80851068 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1EE5C 8085106C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 1EE60 80851070 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1EE64 80851074 0C20CB0B */  jal     func_80832C2C              
/* 1EE68 80851078 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 1EE6C 8085107C 0C20C884 */  jal     func_80832210              
/* 1EE70 80851080 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1EE74 80851084 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1EE78 80851088 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1EE7C 8085108C 03E00008 */  jr      $ra                        
/* 1EE80 80851090 00000000 */  nop
