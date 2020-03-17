glabel EnFr_Destroy
/* 0059C 80A1AF3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005A0 80A1AF40 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005A4 80A1AF44 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 005A8 80A1AF48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005AC 80A1AF4C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005B0 80A1AF50 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 005B4 80A1AF54 0C01E9F1 */  jal     Lights_Remove
              
/* 005B8 80A1AF58 8DC60358 */  lw      $a2, 0x0358($t6)           ## 00000358
/* 005BC 80A1AF5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005C0 80A1AF60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005C4 80A1AF64 03E00008 */  jr      $ra                        
/* 005C8 80A1AF68 00000000 */  nop


