glabel BgSstFloor_Destroy
/* 00068 808B9978 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0006C 808B997C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00070 808B9980 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00074 808B9984 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00078 808B9988 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0007C 808B998C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00080 808B9990 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 00084 808B9994 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00088 808B9998 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0008C 808B999C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00090 808B99A0 03E00008 */  jr      $ra                        
/* 00094 808B99A4 00000000 */  nop
