glabel BgSpot07Taki_Destroy
/* 000A8 808AFCD8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000AC 808AFCDC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000B0 808AFCE0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000B4 808AFCE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000B8 808AFCE8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000BC 808AFCEC 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000C0 808AFCF0 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 000C4 808AFCF4 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000C8 808AFCF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000CC 808AFCFC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000D0 808AFD00 03E00008 */  jr      $ra                        
/* 000D4 808AFD04 00000000 */  nop
