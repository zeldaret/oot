glabel BgSpot12Gate_Destroy
/* 00100 808B3090 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00104 808B3094 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00108 808B3098 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0010C 808B309C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00110 808B30A0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00114 808B30A4 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00118 808B30A8 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0011C 808B30AC 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00120 808B30B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00124 808B30B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00128 808B30B8 03E00008 */  jr      $ra                        
/* 0012C 808B30BC 00000000 */  nop


