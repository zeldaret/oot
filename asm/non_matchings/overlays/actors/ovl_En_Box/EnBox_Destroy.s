glabel EnBox_Destroy
/* 00504 809C92C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00508 809C92C8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0050C 809C92CC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00510 809C92D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00514 809C92D4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00518 809C92D8 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0051C 809C92DC 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00520 809C92E0 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00524 809C92E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00528 809C92E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0052C 809C92EC 03E00008 */  jr      $ra                        
/* 00530 809C92F0 00000000 */  nop
