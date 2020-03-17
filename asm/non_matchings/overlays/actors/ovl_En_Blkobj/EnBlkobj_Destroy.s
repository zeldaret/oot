glabel EnBlkobj_Destroy
/* 000B8 809C2118 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000BC 809C211C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000C0 809C2120 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000C4 809C2124 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000C8 809C2128 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000CC 809C212C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000D0 809C2130 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000D4 809C2134 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000D8 809C2138 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000DC 809C213C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000E0 809C2140 03E00008 */  jr      $ra                        
/* 000E4 809C2144 00000000 */  nop


