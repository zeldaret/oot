glabel EnMd_Destroy
/* 015FC 80AAB84C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01600 80AAB850 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01604 80AAB854 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01608 80AAB858 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0160C 80AAB85C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 01610 80AAB860 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 01614 80AAB864 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01618 80AAB868 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0161C 80AAB86C 03E00008 */  jr      $ra                        
/* 01620 80AAB870 00000000 */  nop
