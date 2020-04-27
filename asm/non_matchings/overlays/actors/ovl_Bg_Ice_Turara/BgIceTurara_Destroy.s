glabel BgIceTurara_Destroy
/* 000D8 80891FF8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000DC 80891FFC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000E0 80892000 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000E4 80892004 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000E8 80892008 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 000EC 8089200C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000F0 80892010 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000F4 80892014 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 000F8 80892018 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000FC 8089201C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00100 80892020 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00104 80892024 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00108 80892028 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0010C 8089202C 24A5016C */  addiu   $a1, $a1, 0x016C           ## $a1 = 0000016C
/* 00110 80892030 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00114 80892034 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00118 80892038 03E00008 */  jr      $ra                        
/* 0011C 8089203C 00000000 */  nop
