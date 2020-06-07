glabel BgHakaZou_Destroy
/* 002E4 808828A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002E8 808828A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002EC 808828AC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002F0 808828B0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 002F4 808828B4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 002F8 808828B8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 002FC 808828BC 11C10009 */  beq     $t6, $at, .L808828E4       
/* 00300 808828C0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00304 808828C4 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 00308 808828C8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0030C 808828CC 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00310 808828D0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00314 808828D4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00318 808828D8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0031C 808828DC 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00320 808828E0 24E5016C */  addiu   $a1, $a3, 0x016C           ## $a1 = 0000016C
.L808828E4:
/* 00324 808828E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00328 808828E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0032C 808828EC 03E00008 */  jr      $ra                        
/* 00330 808828F0 00000000 */  nop
