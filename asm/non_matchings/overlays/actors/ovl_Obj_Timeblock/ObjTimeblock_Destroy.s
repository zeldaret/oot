glabel ObjTimeblock_Destroy
/* 0035C 80BA02FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00360 80BA0300 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00364 80BA0304 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00368 80BA0308 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0036C 80BA030C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00370 80BA0310 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00374 80BA0314 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00378 80BA0318 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0037C 80BA031C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00380 80BA0320 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00384 80BA0324 03E00008 */  jr      $ra                        
/* 00388 80BA0328 00000000 */  nop
