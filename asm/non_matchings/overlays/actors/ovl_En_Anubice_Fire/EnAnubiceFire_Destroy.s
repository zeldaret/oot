glabel EnAnubiceFire_Destroy
/* 00124 809B26C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00128 809B26C8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0012C 809B26CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00130 809B26D0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00134 809B26D4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00138 809B26D8 24C501A8 */  addiu   $a1, $a2, 0x01A8           ## $a1 = 000001A8
/* 0013C 809B26DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00140 809B26E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00144 809B26E4 03E00008 */  jr      $ra                        
/* 00148 809B26E8 00000000 */  nop
