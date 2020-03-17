glabel EnBombf_Destroy
/* 001E0 809C7140 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001E4 809C7144 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001E8 809C7148 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001EC 809C714C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001F0 809C7150 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001F4 809C7154 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001F8 809C7158 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001FC 809C715C 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 00200 809C7160 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00204 809C7164 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00208 809C7168 0C016F32 */  jal     func_8005BCC8              
/* 0020C 809C716C 24A50198 */  addiu   $a1, $a1, 0x0198           ## $a1 = 00000198
/* 00210 809C7170 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00214 809C7174 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00218 809C7178 03E00008 */  jr      $ra                        
/* 0021C 809C717C 00000000 */  nop


