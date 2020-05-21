glabel EnHs2_Destroy
/* 000EC 80A6F08C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000F0 80A6F090 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000F4 80A6F094 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000F8 80A6F098 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000FC 80A6F09C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00100 80A6F0A0 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 00104 80A6F0A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00108 80A6F0A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0010C 80A6F0AC 03E00008 */  jr      $ra                        
/* 00110 80A6F0B0 00000000 */  nop
