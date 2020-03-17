glabel func_808A2560
/* 00000 808A2560 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 808A2564 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00008 808A2568 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0000C 808A256C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00010 808A2570 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 808A2574 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00018 808A2578 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 0001C 808A257C 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00020 808A2580 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00024 808A2584 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 00028 808A2588 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0002C 808A258C 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 00030 808A2590 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00034 808A2594 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00038 808A2598 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 0003C 808A259C 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00040 808A25A0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00044 808A25A4 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00048 808A25A8 1441000A */  bne     $v0, $at, .L808A25D4       
/* 0004C 808A25AC AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00050 808A25B0 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00054 808A25B4 3C04808A */  lui     $a0, %hi(D_808A2E10)       ## $a0 = 808A0000
/* 00058 808A25B8 3C05808A */  lui     $a1, %hi(D_808A2E50)       ## $a1 = 808A0000
/* 0005C 808A25BC 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 00060 808A25C0 24A52E50 */  addiu   $a1, $a1, %lo(D_808A2E50)  ## $a1 = 808A2E50
/* 00064 808A25C4 24842E10 */  addiu   $a0, $a0, %lo(D_808A2E10)  ## $a0 = 808A2E10
/* 00068 808A25C8 240600A4 */  addiu   $a2, $zero, 0x00A4         ## $a2 = 000000A4
/* 0006C 808A25CC 0C00084C */  jal     osSyncPrintf
              
/* 00070 808A25D0 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L808A25D4:
/* 00074 808A25D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00078 808A25D8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0007C 808A25DC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00080 808A25E0 03E00008 */  jr      $ra                        
/* 00084 808A25E4 00000000 */  nop


