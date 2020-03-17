glabel EnBom_Destroy
/* 0011C 809C27EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00120 809C27F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00124 809C27F4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00128 809C27F8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0012C 809C27FC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00130 809C2800 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00134 809C2804 0C016F32 */  jal     func_8005BCC8              
/* 00138 809C2808 24A50198 */  addiu   $a1, $a1, 0x0198           ## $a1 = 00000198
/* 0013C 809C280C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00140 809C2810 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00144 809C2814 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00148 809C2818 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 0014C 809C281C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00150 809C2820 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00154 809C2824 03E00008 */  jr      $ra                        
/* 00158 809C2828 00000000 */  nop


