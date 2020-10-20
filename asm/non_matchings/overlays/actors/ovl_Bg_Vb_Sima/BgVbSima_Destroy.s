glabel BgVbSima_Destroy
/* 00068 808BDDC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0006C 808BDDCC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00070 808BDDD0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00074 808BDDD4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00078 808BDDD8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0007C 808BDDDC 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00080 808BDDE0 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 00084 808BDDE4 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00088 808BDDE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0008C 808BDDEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00090 808BDDF0 03E00008 */  jr      $ra                        
/* 00094 808BDDF4 00000000 */  nop
