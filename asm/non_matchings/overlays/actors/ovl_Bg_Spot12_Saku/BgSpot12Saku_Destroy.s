glabel BgSpot12Saku_Destroy
/* 00100 808B3520 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00104 808B3524 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00108 808B3528 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0010C 808B352C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00110 808B3530 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00114 808B3534 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00118 808B3538 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0011C 808B353C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00120 808B3540 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00124 808B3544 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00128 808B3548 03E00008 */  jr      $ra                        
/* 0012C 808B354C 00000000 */  nop


