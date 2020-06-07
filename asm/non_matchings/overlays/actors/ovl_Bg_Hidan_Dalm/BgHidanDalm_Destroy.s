glabel BgHidanDalm_Destroy
/* 000E4 80885F04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000E8 80885F08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000EC 80885F0C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000F0 80885F10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000F4 80885F14 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 000F8 80885F18 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000FC 80885F1C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00100 80885F20 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00104 80885F24 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00108 80885F28 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0010C 80885F2C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00110 80885F30 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00114 80885F34 0C017232 */  jal     Collider_DestroyTris              
/* 00118 80885F38 24A5016C */  addiu   $a1, $a1, 0x016C           ## $a1 = 0000016C
/* 0011C 80885F3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00120 80885F40 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00124 80885F44 03E00008 */  jr      $ra                        
/* 00128 80885F48 00000000 */  nop
