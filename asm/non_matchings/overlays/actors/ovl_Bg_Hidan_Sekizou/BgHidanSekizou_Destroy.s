glabel BgHidanSekizou_Destroy
/* 0052C 8088D3EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00530 8088D3F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00534 8088D3F4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00538 8088D3F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0053C 8088D3FC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00540 8088D400 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00544 8088D404 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00548 8088D408 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 0054C 8088D40C 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 00550 8088D410 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00554 8088D414 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00558 8088D418 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0055C 8088D41C 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00560 8088D420 24A50174 */  addiu   $a1, $a1, 0x0174           ## $a1 = 00000174
/* 00564 8088D424 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00568 8088D428 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0056C 8088D42C 03E00008 */  jr      $ra                        
/* 00570 8088D430 00000000 */  nop
