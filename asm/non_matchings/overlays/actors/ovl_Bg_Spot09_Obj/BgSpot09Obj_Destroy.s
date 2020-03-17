glabel BgSpot09Obj_Destroy
/* 0035C 808B1E3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00360 808B1E40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00364 808B1E44 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00368 808B1E48 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 0036C 808B1E4C 00807025 */  or      $t6, $a0, $zero            ## $t6 = 00000000
/* 00370 808B1E50 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00374 808B1E54 11E00003 */  beq     $t7, $zero, .L808B1E64     
/* 00378 808B1E58 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0037C 808B1E5C 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00380 808B1E60 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
.L808B1E64:
/* 00384 808B1E64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00388 808B1E68 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0038C 808B1E6C 03E00008 */  jr      $ra                        
/* 00390 808B1E70 00000000 */  nop


