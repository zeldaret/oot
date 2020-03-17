glabel BgSpot03Taki_Destroy
/* 003E0 808ADEC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003E4 808ADEC4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003E8 808ADEC8 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 003EC 808ADECC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003F0 808ADED0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003F4 808ADED4 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 003F8 808ADED8 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 003FC 808ADEDC 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00400 808ADEE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00404 808ADEE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00408 808ADEE8 03E00008 */  jr      $ra                        
/* 0040C 808ADEEC 00000000 */  nop


