glabel EnGb_Destroy
/* 0042C 80A2F5AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00430 80A2F5B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00434 80A2F5B4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00438 80A2F5B8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0043C 80A2F5BC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00440 80A2F5C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00444 80A2F5C4 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00448 80A2F5C8 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0044C 80A2F5CC 24A5023C */  addiu   $a1, $a1, 0x023C           ## $a1 = 0000023C
/* 00450 80A2F5D0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00454 80A2F5D4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00458 80A2F5D8 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 0045C 80A2F5DC 0C01E9F1 */  jal     LightContext_RemoveLight
              
/* 00460 80A2F5E0 8DC6036C */  lw      $a2, 0x036C($t6)           ## 0000036C
/* 00464 80A2F5E4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00468 80A2F5E8 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 0046C 80A2F5EC 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00470 80A2F5F0 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 00474 80A2F5F4 8DE6014C */  lw      $a2, 0x014C($t7)           ## 0000014C
/* 00478 80A2F5F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0047C 80A2F5FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00480 80A2F600 03E00008 */  jr      $ra                        
/* 00484 80A2F604 00000000 */  nop
