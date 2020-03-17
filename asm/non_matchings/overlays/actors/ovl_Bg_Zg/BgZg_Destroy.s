glabel BgZg_Destroy
/* 00000 808C0C20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 808C0C24 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00008 808C0C28 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0000C 808C0C2C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00010 808C0C30 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00014 808C0C34 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00018 808C0C38 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0001C 808C0C3C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00020 808C0C40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00024 808C0C44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00028 808C0C48 03E00008 */  jr      $ra                        
/* 0002C 808C0C4C 00000000 */  nop


