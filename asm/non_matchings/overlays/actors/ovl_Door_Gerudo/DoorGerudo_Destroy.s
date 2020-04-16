glabel DoorGerudo_Destroy
/* 000AC 8099468C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000B0 80994690 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000B4 80994694 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000B8 80994698 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000BC 8099469C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000C0 809946A0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000C4 809946A4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000C8 809946A8 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000CC 809946AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000D0 809946B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000D4 809946B4 03E00008 */  jr      $ra                        
/* 000D8 809946B8 00000000 */  nop
