glabel EnAm_Destroy
/* 002F8 809AE218 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002FC 809AE21C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00300 809AE220 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00304 809AE224 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00308 809AE228 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 0030C 809AE22C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00310 809AE230 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00314 809AE234 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00318 809AE238 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 0031C 809AE23C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00320 809AE240 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00324 809AE244 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00328 809AE248 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0032C 809AE24C 24A50274 */  addiu   $a1, $a1, 0x0274           ## $a1 = 00000274
/* 00330 809AE250 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00334 809AE254 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00338 809AE258 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0033C 809AE25C 24A502C0 */  addiu   $a1, $a1, 0x02C0           ## $a1 = 000002C0
/* 00340 809AE260 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00344 809AE264 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00348 809AE268 03E00008 */  jr      $ra                        
/* 0034C 809AE26C 00000000 */  nop
