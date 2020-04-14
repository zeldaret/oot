glabel BgDdanKd_Destroy
/* 000FC 808711EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00100 808711F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00104 808711F4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00108 808711F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0010C 808711FC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00110 80871200 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00114 80871204 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00118 80871208 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 0011C 8087120C 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00120 80871210 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00124 80871214 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00128 80871218 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0012C 8087121C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00130 80871220 24A50178 */  addiu   $a1, $a1, 0x0178           ## $a1 = 00000178
/* 00134 80871224 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00138 80871228 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0013C 8087122C 03E00008 */  jr      $ra                        
/* 00140 80871230 00000000 */  nop
