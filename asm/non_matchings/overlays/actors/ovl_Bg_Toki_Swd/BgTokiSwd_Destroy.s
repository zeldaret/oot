glabel BgTokiSwd_Destroy
/* 000D8 808BAF18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000DC 808BAF1C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000E0 808BAF20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000E4 808BAF24 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000E8 808BAF28 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000EC 808BAF2C 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 000F0 808BAF30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000F4 808BAF34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000F8 808BAF38 03E00008 */  jr      $ra                        
/* 000FC 808BAF3C 00000000 */  nop


