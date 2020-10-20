glabel BgJyaIronobj_Destroy
/* 009F0 80899290 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009F4 80899294 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009F8 80899298 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 009FC 8089929C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00A00 808992A0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00A04 808992A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A08 808992A8 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00A0C 808992AC 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00A10 808992B0 24A50168 */  addiu   $a1, $a1, 0x0168           ## $a1 = 00000168
/* 00A14 808992B4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00A18 808992B8 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00A1C 808992BC 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00A20 808992C0 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 00A24 808992C4 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00A28 808992C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A2C 808992CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A30 808992D0 03E00008 */  jr      $ra                        
/* 00A34 808992D4 00000000 */  nop
