glabel EnVali_Destroy
/* 00178 80B26828 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0017C 80B2682C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00180 80B26830 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00184 80B26834 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00188 80B26838 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0018C 80B2683C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00190 80B26840 0C017418 */  jal     func_8005D060              
/* 00194 80B26844 24A502FC */  addiu   $a1, $a1, 0x02FC           ## $a1 = 000002FC
/* 00198 80B26848 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0019C 80B2684C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001A0 80B26850 0C017418 */  jal     func_8005D060              
/* 001A4 80B26854 24A5037C */  addiu   $a1, $a1, 0x037C           ## $a1 = 0000037C
/* 001A8 80B26858 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001AC 80B2685C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001B0 80B26860 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001B4 80B26864 24A503FC */  addiu   $a1, $a1, 0x03FC           ## $a1 = 000003FC
/* 001B8 80B26868 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001BC 80B2686C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C0 80B26870 03E00008 */  jr      $ra                        
/* 001C4 80B26874 00000000 */  nop


