glabel BgIceShutter_Destroy
/* 00204 80891CC4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00208 80891CC8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0020C 80891CCC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00210 80891CD0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00214 80891CD4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00218 80891CD8 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0021C 80891CDC 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00220 80891CE0 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00224 80891CE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00228 80891CE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0022C 80891CEC 03E00008 */  jr      $ra                        
/* 00230 80891CF0 00000000 */  nop


