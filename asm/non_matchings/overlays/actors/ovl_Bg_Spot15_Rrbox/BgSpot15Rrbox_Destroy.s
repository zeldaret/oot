glabel BgSpot15Rrbox_Destroy
/* 0030C 808B3C6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00310 808B3C70 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00314 808B3C74 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00318 808B3C78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0031C 808B3C7C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00320 808B3C80 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00324 808B3C84 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00328 808B3C88 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0032C 808B3C8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00330 808B3C90 3C01808B */  lui     $at, %hi(D_808B4590)       ## $at = 808B0000
/* 00334 808B3C94 A4204590 */  sh      $zero, %lo(D_808B4590)($at) 
/* 00338 808B3C98 03E00008 */  jr      $ra                        
/* 0033C 808B3C9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


