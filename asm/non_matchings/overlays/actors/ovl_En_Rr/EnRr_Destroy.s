glabel EnRr_Destroy
/* 0019C 80AE85DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001A0 80AE85E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001A4 80AE85E4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001A8 80AE85E8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001AC 80AE85EC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001B0 80AE85F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001B4 80AE85F4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001B8 80AE85F8 24A50150 */  addiu   $a1, $a1, 0x0150           ## $a1 = 00000150
/* 001BC 80AE85FC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001C0 80AE8600 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001C4 80AE8604 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001C8 80AE8608 24A5019C */  addiu   $a1, $a1, 0x019C           ## $a1 = 0000019C
/* 001CC 80AE860C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001D0 80AE8610 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001D4 80AE8614 03E00008 */  jr      $ra                        
/* 001D8 80AE8618 00000000 */  nop
