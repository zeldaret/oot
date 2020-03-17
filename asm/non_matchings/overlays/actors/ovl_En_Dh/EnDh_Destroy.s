glabel EnDh_Destroy
/* 00140 809EAE80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00144 809EAE84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00148 809EAE88 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0014C 809EAE8C 0C03D6D6 */  jal     func_800F5B58              
/* 00150 809EAE90 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00154 809EAE94 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00158 809EAE98 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0015C 809EAE9C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00160 809EAEA0 24A50260 */  addiu   $a1, $a1, 0x0260           ## $a1 = 00000260
/* 00164 809EAEA4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00168 809EAEA8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0016C 809EAEAC 0C016F32 */  jal     func_8005BCC8              
/* 00170 809EAEB0 24A502AC */  addiu   $a1, $a1, 0x02AC           ## $a1 = 000002AC
/* 00174 809EAEB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00178 809EAEB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0017C 809EAEBC 03E00008 */  jr      $ra                        
/* 00180 809EAEC0 00000000 */  nop


