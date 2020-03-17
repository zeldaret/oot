glabel BgHidanFirewall_Destroy
/* 000A0 80886700 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000A4 80886704 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000A8 80886708 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000AC 8088670C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000B0 80886710 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000B4 80886714 24C50154 */  addiu   $a1, $a2, 0x0154           ## $a1 = 00000154
/* 000B8 80886718 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000BC 8088671C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000C0 80886720 03E00008 */  jr      $ra                        
/* 000C4 80886724 00000000 */  nop


