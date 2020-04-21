glabel EnJsjutan_Destroy
/* 00090 80A89830 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00094 80A89834 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00098 80A89838 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0009C 80A8983C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000A0 80A89840 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000A4 80A89844 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000A8 80A89848 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000AC 80A8984C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000B0 80A89850 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000B4 80A89854 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000B8 80A89858 03E00008 */  jr      $ra                        
/* 000BC 80A8985C 00000000 */  nop
