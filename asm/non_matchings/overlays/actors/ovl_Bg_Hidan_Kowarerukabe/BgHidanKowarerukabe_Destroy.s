glabel BgHidanKowarerukabe_Destroy
/* 00228 8088A248 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0022C 8088A24C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00230 8088A250 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00234 8088A254 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00238 8088A258 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 0023C 8088A25C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00240 8088A260 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00244 8088A264 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00248 8088A268 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0024C 8088A26C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00250 8088A270 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00254 8088A274 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00258 8088A278 0C016F32 */  jal     func_8005BCC8              
/* 0025C 8088A27C 24A50164 */  addiu   $a1, $a1, 0x0164           ## $a1 = 00000164
/* 00260 8088A280 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00264 8088A284 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00268 8088A288 03E00008 */  jr      $ra                        
/* 0026C 8088A28C 00000000 */  nop


