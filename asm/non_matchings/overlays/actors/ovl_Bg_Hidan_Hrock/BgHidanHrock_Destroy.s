glabel BgHidanHrock_Destroy
/* 0032C 8088945C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00330 80889460 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00334 80889464 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00338 80889468 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0033C 8088946C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00340 80889470 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00344 80889474 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00348 80889478 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 0034C 8088947C 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00350 80889480 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00354 80889484 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00358 80889488 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0035C 8088948C 0C017232 */  jal     Collider_DestroyTris              
/* 00360 80889490 24A5016C */  addiu   $a1, $a1, 0x016C           ## $a1 = 0000016C
/* 00364 80889494 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00368 80889498 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0036C 8088949C 03E00008 */  jr      $ra                        
/* 00370 808894A0 00000000 */  nop
