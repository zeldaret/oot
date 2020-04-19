.rdata
glabel D_8089A070
    .asciz "女神リフト DT\n"
    .balign 4

.text
glabel BgJyaLift_Destroy
/* 00124 80899CC4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00128 80899CC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0012C 80899CCC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00130 80899CD0 908E016A */  lbu     $t6, 0x016A($a0)           ## 0000016A
/* 00134 80899CD4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00138 80899CD8 3C04808A */  lui     $a0, %hi(D_8089A070)       ## $a0 = 808A0000
/* 0013C 80899CDC 11C0000A */  beq     $t6, $zero, .L80899D08     
/* 00140 80899CE0 2484A070 */  addiu   $a0, $a0, %lo(D_8089A070)  ## $a0 = 8089A070
/* 00144 80899CE4 0C00084C */  jal     osSyncPrintf
              
/* 00148 80899CE8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0014C 80899CEC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00150 80899CF0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00154 80899CF4 3C01808A */  lui     $at, %hi(D_8089A020)       ## $at = 808A0000
/* 00158 80899CF8 A420A020 */  sh      $zero, %lo(D_8089A020)($at) 
/* 0015C 80899CFC 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00160 80899D00 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00164 80899D04 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
.L80899D08:
/* 00168 80899D08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0016C 80899D0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00170 80899D10 03E00008 */  jr      $ra                        
/* 00174 80899D14 00000000 */  nop
