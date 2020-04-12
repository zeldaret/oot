glabel BgJyaBombiwa_Destroy
/* 001B4 80895354 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001B8 80895358 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001BC 8089535C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 001C0 80895360 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001C4 80895364 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 001C8 80895368 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001CC 8089536C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 001D0 80895370 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 001D4 80895374 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 001D8 80895378 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 001DC 8089537C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001E0 80895380 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001E4 80895384 0C016F32 */  jal     func_8005BCC8              
/* 001E8 80895388 24A50168 */  addiu   $a1, $a1, 0x0168           ## $a1 = 00000168
/* 001EC 8089538C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001F0 80895390 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001F4 80895394 03E00008 */  jr      $ra                        
/* 001F8 80895398 00000000 */  nop
