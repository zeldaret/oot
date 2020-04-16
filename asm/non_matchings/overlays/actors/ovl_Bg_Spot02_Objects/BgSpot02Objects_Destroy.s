glabel BgSpot02Objects_Destroy
/* 0026C 808AC8CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00270 808AC8D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00274 808AC8D4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00278 808AC8D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0027C 808AC8DC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00280 808AC8E0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00284 808AC8E4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00288 808AC8E8 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0028C 808AC8EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00290 808AC8F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00294 808AC8F4 03E00008 */  jr      $ra                        
/* 00298 808AC8F8 00000000 */  nop
