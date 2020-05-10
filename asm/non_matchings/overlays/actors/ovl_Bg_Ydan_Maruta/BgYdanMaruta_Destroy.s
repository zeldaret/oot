glabel BgYdanMaruta_Destroy
/* 00260 808BEFA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00264 808BEFA4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00268 808BEFA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0026C 808BEFAC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00270 808BEFB0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00274 808BEFB4 24E5016C */  addiu   $a1, $a3, 0x016C           ## $a1 = 0000016C
/* 00278 808BEFB8 0C017232 */  jal     Collider_DestroyTris              
/* 0027C 808BEFBC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00280 808BEFC0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00284 808BEFC4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00288 808BEFC8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0028C 808BEFCC 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 00290 808BEFD0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00294 808BEFD4 55C10004 */  bnel    $t6, $at, .L808BEFE8       
/* 00298 808BEFD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0029C 808BEFDC 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 002A0 808BEFE0 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 002A4 808BEFE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BEFE8:
/* 002A8 808BEFE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002AC 808BEFEC 03E00008 */  jr      $ra                        
/* 002B0 808BEFF0 00000000 */  nop
