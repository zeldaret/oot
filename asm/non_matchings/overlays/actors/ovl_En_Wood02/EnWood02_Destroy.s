glabel EnWood02_Destroy
/* 00778 80B3B6E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0077C 80B3B6EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00780 80B3B6F0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00784 80B3B6F4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00788 80B3B6F8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0078C 80B3B6FC 29C1000B */  slti    $at, $t6, 0x000B           
/* 00790 80B3B700 50200004 */  beql    $at, $zero, .L80B3B714     
/* 00794 80B3B704 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00798 80B3B708 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0079C 80B3B70C 24C50158 */  addiu   $a1, $a2, 0x0158           ## $a1 = 00000158
/* 007A0 80B3B710 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3B714:
/* 007A4 80B3B714 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007A8 80B3B718 03E00008 */  jr      $ra                        
/* 007AC 80B3B71C 00000000 */  nop
