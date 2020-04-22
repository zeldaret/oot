glabel BgHidanFwbig_Destroy
/* 00198 80887488 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0019C 8088748C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001A0 80887490 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001A4 80887494 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001A8 80887498 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001AC 8088749C 24C50154 */  addiu   $a1, $a2, 0x0154           ## $a1 = 00000154
/* 001B0 808874A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001B4 808874A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001B8 808874A8 03E00008 */  jr      $ra                        
/* 001BC 808874AC 00000000 */  nop
