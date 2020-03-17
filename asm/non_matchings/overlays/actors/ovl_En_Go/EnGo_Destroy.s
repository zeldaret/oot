glabel EnGo_Destroy
/* 0190C 80A3FE7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01910 80A3FE80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01914 80A3FE84 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01918 80A3FE88 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0191C 80A3FE8C 0C0295BC */  jal     func_800A56F0              
/* 01920 80A3FE90 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01924 80A3FE94 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 01928 80A3FE98 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0192C 80A3FE9C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 01930 80A3FEA0 24A50194 */  addiu   $a1, $a1, 0x0194           ## $a1 = 00000194
/* 01934 80A3FEA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01938 80A3FEA8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0193C 80A3FEAC 03E00008 */  jr      $ra                        
/* 01940 80A3FEB0 00000000 */  nop


