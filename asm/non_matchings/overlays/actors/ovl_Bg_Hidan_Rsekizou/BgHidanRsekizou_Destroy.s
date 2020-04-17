glabel BgHidanRsekizou_Destroy
/* 00104 8088C304 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00108 8088C308 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0010C 8088C30C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00110 8088C310 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00114 8088C314 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00118 8088C318 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0011C 8088C31C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00120 8088C320 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00124 8088C324 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00128 8088C328 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0012C 8088C32C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00130 8088C330 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00134 8088C334 0C016F32 */  jal     func_8005BCC8              
/* 00138 8088C338 24A50168 */  addiu   $a1, $a1, 0x0168           ## $a1 = 00000168
/* 0013C 8088C33C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00140 8088C340 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00144 8088C344 03E00008 */  jr      $ra                        
/* 00148 8088C348 00000000 */  nop
