glabel BgYdanSp_Destroy
/* 003E4 808BF7F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003E8 808BF7F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003EC 808BF7FC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 003F0 808BF800 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003F4 808BF804 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 003F8 808BF808 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003FC 808BF80C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00400 808BF810 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00404 808BF814 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00408 808BF818 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0040C 808BF81C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00410 808BF820 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00414 808BF824 0C017232 */  jal     func_8005C8C8              
/* 00418 808BF828 24A50170 */  addiu   $a1, $a1, 0x0170           ## $a1 = 00000170
/* 0041C 808BF82C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00420 808BF830 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00424 808BF834 03E00008 */  jr      $ra                        
/* 00428 808BF838 00000000 */  nop


