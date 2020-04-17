glabel BgSpot18Basket_Destroy
/* 00394 808B7AA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00398 808B7AA8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0039C 808B7AAC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 003A0 808B7AB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003A4 808B7AB4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 003A8 808B7AB8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003AC 808B7ABC 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 003B0 808B7AC0 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 003B4 808B7AC4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 003B8 808B7AC8 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 003BC 808B7ACC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 003C0 808B7AD0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 003C4 808B7AD4 0C016F32 */  jal     func_8005BCC8              
/* 003C8 808B7AD8 24A50164 */  addiu   $a1, $a1, 0x0164           ## $a1 = 00000164
/* 003CC 808B7ADC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003D0 808B7AE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003D4 808B7AE4 03E00008 */  jr      $ra                        
/* 003D8 808B7AE8 00000000 */  nop
