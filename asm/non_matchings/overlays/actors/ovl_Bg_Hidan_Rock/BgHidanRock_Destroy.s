glabel BgHidanRock_Destroy
/* 00178 8088B1F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0017C 8088B1FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00180 8088B200 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00184 8088B204 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00188 8088B208 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 0018C 8088B20C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00190 8088B210 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00194 8088B214 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00198 8088B218 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 0019C 8088B21C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 001A0 8088B220 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001A4 8088B224 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001A8 8088B228 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 001AC 8088B22C 24A5017C */  addiu   $a1, $a1, 0x017C           ## $a1 = 0000017C
/* 001B0 8088B230 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 001B4 8088B234 0C03E27A */  jal     func_800F89E8              
/* 001B8 8088B238 24840170 */  addiu   $a0, $a0, 0x0170           ## $a0 = 00000170
/* 001BC 8088B23C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001C0 8088B240 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C4 8088B244 03E00008 */  jr      $ra                        
/* 001C8 8088B248 00000000 */  nop
