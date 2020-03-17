glabel BgHakaTubo_Destroy
/* 000F8 80881348 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000FC 8088134C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00100 80881350 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00104 80881354 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00108 80881358 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 0010C 8088135C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00110 80881360 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00114 80881364 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00118 80881368 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0011C 8088136C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00120 80881370 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00124 80881374 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00128 80881378 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0012C 8088137C 24A5016C */  addiu   $a1, $a1, 0x016C           ## $a1 = 0000016C
/* 00130 80881380 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00134 80881384 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00138 80881388 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0013C 8088138C 24A501B8 */  addiu   $a1, $a1, 0x01B8           ## $a1 = 000001B8
/* 00140 80881390 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00144 80881394 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00148 80881398 03E00008 */  jr      $ra                        
/* 0014C 8088139C 00000000 */  nop


