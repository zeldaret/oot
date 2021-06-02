glabel ObjLift_Destroy
/* 0041C 80B964EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00420 80B964F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00424 80B964F4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00428 80B964F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0042C 80B964FC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00430 80B96500 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00434 80B96504 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 00438 80B96508 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0043C 80B9650C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00440 80B96510 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00444 80B96514 03E00008 */  jr      $ra                        
/* 00448 80B96518 00000000 */  nop
