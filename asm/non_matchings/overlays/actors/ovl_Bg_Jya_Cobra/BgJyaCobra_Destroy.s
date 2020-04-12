glabel BgJyaCobra_Destroy
/* 00FF8 808968E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FFC 808968EC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01000 808968F0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 01004 808968F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01008 808968F8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0100C 808968FC 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 01010 80896900 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 01014 80896904 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 01018 80896908 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0101C 8089690C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01020 80896910 03E00008 */  jr      $ra                        
/* 01024 80896914 00000000 */  nop
