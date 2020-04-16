glabel EnBw_Destroy
/* 00164 809CE844 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00168 809CE848 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0016C 809CE84C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00170 809CE850 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00174 809CE854 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00178 809CE858 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0017C 809CE85C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00180 809CE860 24A50294 */  addiu   $a1, $a1, 0x0294           ## $a1 = 00000294
/* 00184 809CE864 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00188 809CE868 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0018C 809CE86C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00190 809CE870 24A502E0 */  addiu   $a1, $a1, 0x02E0           ## $a1 = 000002E0
/* 00194 809CE874 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00198 809CE878 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0019C 809CE87C 03E00008 */  jr      $ra                        
/* 001A0 809CE880 00000000 */  nop
