glabel EnKanban_Destroy
/* 001EC 80A9218C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001F0 80A92190 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001F4 80A92194 908E0154 */  lbu     $t6, 0x0154($a0)           ## 00000154
/* 001F8 80A92198 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001FC 80A9219C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00200 80A921A0 55C00004 */  bnel    $t6, $zero, .L80A921B4     
/* 00204 80A921A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00208 80A921A8 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0020C 80A921AC 24C501A0 */  addiu   $a1, $a2, 0x01A0           ## $a1 = 000001A0
/* 00210 80A921B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A921B4:
/* 00214 80A921B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00218 80A921B8 03E00008 */  jr      $ra                        
/* 0021C 80A921BC 00000000 */  nop
