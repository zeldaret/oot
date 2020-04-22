glabel ObjIcePoly_Destroy
/* 001C0 80B94420 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001C4 80B94424 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001C8 80B94428 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001CC 80B9442C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 001D0 80B94430 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001D4 80B94434 0440000A */  bltz    $v0, .L80B94460            
/* 001D8 80B94438 28410003 */  slti    $at, $v0, 0x0003           
/* 001DC 80B9443C 10200008 */  beq     $at, $zero, .L80B94460     
/* 001E0 80B94440 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001E4 80B94444 24C50154 */  addiu   $a1, $a2, 0x0154           ## $a1 = 00000154
/* 001E8 80B94448 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001EC 80B9444C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 001F0 80B94450 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 001F4 80B94454 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001F8 80B94458 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001FC 80B9445C 24C501A0 */  addiu   $a1, $a2, 0x01A0           ## $a1 = 000001A0
.L80B94460:
/* 00200 80B94460 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00204 80B94464 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00208 80B94468 03E00008 */  jr      $ra                        
/* 0020C 80B9446C 00000000 */  nop
