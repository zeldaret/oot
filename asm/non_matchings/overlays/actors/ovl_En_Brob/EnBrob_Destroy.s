glabel EnBrob_Destroy
/* 00274 809CAD84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00278 809CAD88 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0027C 809CAD8C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00280 809CAD90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00284 809CAD94 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00288 809CAD98 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0028C 809CAD9C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00290 809CADA0 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00294 809CADA4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00298 809CADA8 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0029C 809CADAC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 002A0 809CADB0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002A4 809CADB4 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 002A8 809CADB8 24A50228 */  addiu   $a1, $a1, 0x0228           ## $a1 = 00000228
/* 002AC 809CADBC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 002B0 809CADC0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002B4 809CADC4 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 002B8 809CADC8 24A50274 */  addiu   $a1, $a1, 0x0274           ## $a1 = 00000274
/* 002BC 809CADCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002C0 809CADD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002C4 809CADD4 03E00008 */  jr      $ra                        
/* 002C8 809CADD8 00000000 */  nop
