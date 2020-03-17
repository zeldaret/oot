glabel BgSpot08Iceblock_Destroy
/* 009F8 808B1358 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009FC 808B135C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A00 808B1360 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00A04 808B1364 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A08 808B1368 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00A0C 808B136C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00A10 808B1370 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00A14 808B1374 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00A18 808B1378 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A1C 808B137C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A20 808B1380 03E00008 */  jr      $ra                        
/* 00A24 808B1384 00000000 */  nop


