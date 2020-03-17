glabel BgSpot18Shutter_Destroy
/* 001AC 808B957C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001B0 808B9580 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001B4 808B9584 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 001B8 808B9588 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001BC 808B958C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001C0 808B9590 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 001C4 808B9594 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 001C8 808B9598 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 001CC 808B959C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001D0 808B95A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001D4 808B95A4 03E00008 */  jr      $ra                        
/* 001D8 808B95A8 00000000 */  nop


