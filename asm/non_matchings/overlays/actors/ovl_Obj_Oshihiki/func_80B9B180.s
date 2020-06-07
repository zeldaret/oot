glabel func_80B9B180
/* 00000 80B9B180 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80B9B184 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00008 80B9B188 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0000C 80B9B18C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00010 80B9B190 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 80B9B194 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00018 80B9B198 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 0001C 80B9B19C 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00020 80B9B1A0 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00024 80B9B1A4 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 00028 80B9B1A8 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0002C 80B9B1AC 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 00030 80B9B1B0 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00034 80B9B1B4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00038 80B9B1B8 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 0003C 80B9B1BC 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00040 80B9B1C0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00044 80B9B1C4 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00048 80B9B1C8 1441000A */  bne     $v0, $at, .L80B9B1F4       
/* 0004C 80B9B1CC AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00050 80B9B1D0 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00054 80B9B1D4 3C0480BA */  lui     $a0, %hi(D_80B9CAF0)       ## $a0 = 80BA0000
/* 00058 80B9B1D8 3C0580BA */  lui     $a1, %hi(D_80B9CB30)       ## $a1 = 80BA0000
/* 0005C 80B9B1DC 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 00060 80B9B1E0 24A5CB30 */  addiu   $a1, $a1, %lo(D_80B9CB30)  ## $a1 = 80B9CB30
/* 00064 80B9B1E4 2484CAF0 */  addiu   $a0, $a0, %lo(D_80B9CAF0)  ## $a0 = 80B9CAF0
/* 00068 80B9B1E8 24060118 */  addiu   $a2, $zero, 0x0118         ## $a2 = 00000118
/* 0006C 80B9B1EC 0C00084C */  jal     osSyncPrintf
              
/* 00070 80B9B1F0 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L80B9B1F4:
/* 00074 80B9B1F4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00078 80B9B1F8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0007C 80B9B1FC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00080 80B9B200 03E00008 */  jr      $ra                        
/* 00084 80B9B204 00000000 */  nop
