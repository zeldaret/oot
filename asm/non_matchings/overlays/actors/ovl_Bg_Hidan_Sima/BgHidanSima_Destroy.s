glabel BgHidanSima_Destroy
/* 00100 8088E4D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00104 8088E4D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00108 8088E4D8 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0010C 8088E4DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00110 8088E4E0 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00114 8088E4E4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00118 8088E4E8 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0011C 8088E4EC AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00120 8088E4F0 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 00124 8088E4F4 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00128 8088E4F8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0012C 8088E4FC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00130 8088E500 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00134 8088E504 24A5016C */  addiu   $a1, $a1, 0x016C           ## $a1 = 0000016C
/* 00138 8088E508 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0013C 8088E50C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00140 8088E510 03E00008 */  jr      $ra                        
/* 00144 8088E514 00000000 */  nop
