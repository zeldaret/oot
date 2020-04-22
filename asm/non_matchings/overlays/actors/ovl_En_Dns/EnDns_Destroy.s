glabel EnDns_Destroy
/* 001A4 809EF4F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001A8 809EF4F8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001AC 809EF4FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001B0 809EF500 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001B4 809EF504 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001B8 809EF508 24C5026C */  addiu   $a1, $a2, 0x026C           ## $a1 = 0000026C
/* 001BC 809EF50C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001C0 809EF510 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C4 809EF514 03E00008 */  jr      $ra                        
/* 001C8 809EF518 00000000 */  nop
