glabel BgSpot17Bakudankabe_Destroy
/* 003C0 808B6F80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003C4 808B6F84 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003C8 808B6F88 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 003CC 808B6F8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003D0 808B6F90 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003D4 808B6F94 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 003D8 808B6F98 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 003DC 808B6F9C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 003E0 808B6FA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003E4 808B6FA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003E8 808B6FA8 03E00008 */  jr      $ra                        
/* 003EC 808B6FAC 00000000 */  nop
