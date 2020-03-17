glabel BgGateShutter_Destroy
/* 000FC 8087825C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00100 80878260 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00104 80878264 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00108 80878268 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0010C 8087826C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00110 80878270 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00114 80878274 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00118 80878278 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0011C 8087827C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00120 80878280 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00124 80878284 03E00008 */  jr      $ra                        
/* 00128 80878288 00000000 */  nop


