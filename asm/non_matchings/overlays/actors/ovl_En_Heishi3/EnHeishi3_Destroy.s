glabel EnHeishi3_Destroy
/* 00138 80A55778 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0013C 80A5577C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00140 80A55780 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00144 80A55784 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00148 80A55788 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0014C 80A5578C 24C5027C */  addiu   $a1, $a2, 0x027C           ## $a1 = 0000027C
/* 00150 80A55790 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00154 80A55794 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00158 80A55798 03E00008 */  jr      $ra                        
/* 0015C 80A5579C 00000000 */  nop
