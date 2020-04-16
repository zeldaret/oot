glabel ObjHsblock_Destroy
/* 00200 80B93D60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00204 80B93D64 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00208 80B93D68 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0020C 80B93D6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00210 80B93D70 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00214 80B93D74 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00218 80B93D78 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0021C 80B93D7C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00220 80B93D80 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00224 80B93D84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00228 80B93D88 03E00008 */  jr      $ra                        
/* 0022C 80B93D8C 00000000 */  nop
