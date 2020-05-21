glabel BgTreemouth_Destroy
/* 0012C 808BC62C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00130 808BC630 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00134 808BC634 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00138 808BC638 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0013C 808BC63C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00140 808BC640 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00144 808BC644 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00148 808BC648 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0014C 808BC64C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00150 808BC650 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00154 808BC654 03E00008 */  jr      $ra                        
/* 00158 808BC658 00000000 */  nop
