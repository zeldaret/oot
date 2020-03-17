glabel BgIceObjects_Destroy
/* 00088 8088F898 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0008C 8088F89C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00090 8088F8A0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00094 8088F8A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00098 8088F8A8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0009C 8088F8AC 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000A0 8088F8B0 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000A4 8088F8B4 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000A8 8088F8B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000AC 8088F8BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B0 8088F8C0 03E00008 */  jr      $ra                        
/* 000B4 8088F8C4 00000000 */  nop


