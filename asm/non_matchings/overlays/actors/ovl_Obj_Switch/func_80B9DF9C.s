glabel func_80B9DF9C
/* 00D8C 80B9DF9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D90 80B9DFA0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00D94 80B9DFA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D98 80B9DFA8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00D9C 80B9DFAC 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 00DA0 80B9DFB0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00DA4 80B9DFB4 00052A03 */  sra     $a1, $a1,  8               
/* 00DA8 80B9DFB8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00DAC 80B9DFBC 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00DB0 80B9DFC0 10400005 */  beq     $v0, $zero, .L80B9DFD8     
/* 00DB4 80B9DFC4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00DB8 80B9DFC8 0C2E7840 */  jal     func_80B9E100              
/* 00DBC 80B9DFCC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00DC0 80B9DFD0 10000004 */  beq     $zero, $zero, .L80B9DFE4   
/* 00DC4 80B9DFD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9DFD8:
/* 00DC8 80B9DFD8 0C2E77FC */  jal     func_80B9DFF0              
/* 00DCC 80B9DFDC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00DD0 80B9DFE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9DFE4:
/* 00DD4 80B9DFE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DD8 80B9DFE8 03E00008 */  jr      $ra                        
/* 00DDC 80B9DFEC 00000000 */  nop


