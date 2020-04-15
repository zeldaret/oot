glabel BgMizuBwall_Destroy
/* 0093C 8089CDBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00940 8089CDC0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00944 8089CDC4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00948 8089CDC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0094C 8089CDCC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00950 8089CDD0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00954 8089CDD4 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00958 8089CDD8 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 0095C 8089CDDC 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00960 8089CDE0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00964 8089CDE4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00968 8089CDE8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0096C 8089CDEC 0C017232 */  jal     func_8005C8C8              
/* 00970 8089CDF0 24A50164 */  addiu   $a1, $a1, 0x0164           ## $a1 = 00000164
/* 00974 8089CDF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00978 8089CDF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0097C 8089CDFC 03E00008 */  jr      $ra                        
/* 00980 8089CE00 00000000 */  nop
