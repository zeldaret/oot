glabel ObjHamishi_Destroy
/* 00564 80B934F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00568 80B934F8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0056C 80B934FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00570 80B93500 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00574 80B93504 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00578 80B93508 24E5014C */  addiu   $a1, $a3, 0x014C           ## $a1 = 0000014C
/* 0057C 80B9350C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00580 80B93510 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00584 80B93514 03E00008 */  jr      $ra                        
/* 00588 80B93518 00000000 */  nop
