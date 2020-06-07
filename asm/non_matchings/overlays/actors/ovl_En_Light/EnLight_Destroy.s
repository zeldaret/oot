glabel EnLight_Destroy
/* 001E0 80A9DD20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001E4 80A9DD24 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001E8 80A9DD28 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 001EC 80A9DD2C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001F0 80A9DD30 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001F4 80A9DD34 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 001F8 80A9DD38 0C01E9F1 */  jal     Lights_Remove
              
/* 001FC 80A9DD3C 8DC60150 */  lw      $a2, 0x0150($t6)           ## 00000150
/* 00200 80A9DD40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00204 80A9DD44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00208 80A9DD48 03E00008 */  jr      $ra                        
/* 0020C 80A9DD4C 00000000 */  nop
