glabel BgSpot08Bakudankabe_Destroy
/* 003E8 808B06B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003EC 808B06BC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003F0 808B06C0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 003F4 808B06C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003F8 808B06C8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 003FC 808B06CC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00400 808B06D0 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00404 808B06D4 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00408 808B06D8 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0040C 808B06DC 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00410 808B06E0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00414 808B06E4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00418 808B06E8 0C016F32 */  jal     func_8005BCC8              
/* 0041C 808B06EC 24A50164 */  addiu   $a1, $a1, 0x0164           ## $a1 = 00000164
/* 00420 808B06F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00424 808B06F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00428 808B06F8 03E00008 */  jr      $ra                        
/* 0042C 808B06FC 00000000 */  nop
