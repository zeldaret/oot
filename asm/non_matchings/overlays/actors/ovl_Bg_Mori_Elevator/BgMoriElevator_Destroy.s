glabel BgMoriElevator_Destroy
/* 002AC 808A1AAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002B0 808A1AB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002B4 808A1AB4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002B8 808A1AB8 848E0172 */  lh      $t6, 0x0172($a0)           ## 00000172
/* 002BC 808A1ABC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 002C0 808A1AC0 3C04808A */  lui     $a0, %hi(D_808A22B4)       ## $a0 = 808A0000
/* 002C4 808A1AC4 15C0000A */  bne     $t6, $zero, .L808A1AF0     
/* 002C8 808A1AC8 248422B4 */  addiu   $a0, $a0, %lo(D_808A22B4)  ## $a0 = 808A22B4
/* 002CC 808A1ACC 0C00084C */  jal     osSyncPrintf
              
/* 002D0 808A1AD0 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 002D4 808A1AD4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002D8 808A1AD8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 002DC 808A1ADC 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 002E0 808A1AE0 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 002E4 808A1AE4 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 002E8 808A1AE8 3C01808A */  lui     $at, %hi(D_808A2210)       ## $at = 808A0000
/* 002EC 808A1AEC A4202210 */  sh      $zero, %lo(D_808A2210)($at) 
.L808A1AF0:
/* 002F0 808A1AF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002F4 808A1AF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F8 808A1AF8 03E00008 */  jr      $ra                        
/* 002FC 808A1AFC 00000000 */  nop


