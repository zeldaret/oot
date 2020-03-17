glabel EnElf_Destroy
/* 00DA0 80A029D0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00DA4 80A029D4 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00DA8 80A029D8 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 00DAC 80A029DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DB0 80A029E0 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00DB4 80A029E4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00DB8 80A029E8 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 00DBC 80A029EC 8DC60274 */  lw      $a2, 0x0274($t6)           ## 00000274
/* 00DC0 80A029F0 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 00DC4 80A029F4 0C01E9F1 */  jal     Lights_Remove
              
/* 00DC8 80A029F8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00DCC 80A029FC 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 00DD0 80A02A00 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00DD4 80A02A04 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00DD8 80A02A08 0C01E9F1 */  jal     Lights_Remove
              
/* 00DDC 80A02A0C 8DE60288 */  lw      $a2, 0x0288($t7)           ## 00000288
/* 00DE0 80A02A10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DE4 80A02A14 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00DE8 80A02A18 03E00008 */  jr      $ra                        
/* 00DEC 80A02A1C 00000000 */  nop


