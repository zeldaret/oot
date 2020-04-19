glabel BgJyaMegami_Destroy
/* 00474 8089A5A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00478 8089A5A8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0047C 8089A5AC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00480 8089A5B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00484 8089A5B4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00488 8089A5B8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0048C 8089A5BC 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00490 8089A5C0 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00494 8089A5C4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00498 8089A5C8 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0049C 8089A5CC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 004A0 8089A5D0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 004A4 8089A5D4 0C016F32 */  jal     func_8005BCC8              
/* 004A8 8089A5D8 24A50168 */  addiu   $a1, $a1, 0x0168           ## $a1 = 00000168
/* 004AC 8089A5DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004B0 8089A5E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004B4 8089A5E4 03E00008 */  jr      $ra                        
/* 004B8 8089A5E8 00000000 */  nop
