glabel func_808B2F90
/* 00000 808B2F90 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 808B2F94 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00008 808B2F98 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0000C 808B2F9C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00010 808B2FA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 808B2FA4 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00018 808B2FA8 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 0001C 808B2FAC 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00020 808B2FB0 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00024 808B2FB4 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 00028 808B2FB8 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0002C 808B2FBC 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 00030 808B2FC0 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00034 808B2FC4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00038 808B2FC8 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 0003C 808B2FCC 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00040 808B2FD0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00044 808B2FD4 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00048 808B2FD8 1441000A */  bne     $v0, $at, .L808B3004       
/* 0004C 808B2FDC AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00050 808B2FE0 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00054 808B2FE4 3C04808B */  lui     $a0, %hi(D_808B3340)       ## $a0 = 808B0000
/* 00058 808B2FE8 3C05808B */  lui     $a1, %hi(D_808B3380)       ## $a1 = 808B0000
/* 0005C 808B2FEC 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 00060 808B2FF0 24A53380 */  addiu   $a1, $a1, %lo(D_808B3380)  ## $a1 = 808B3380
/* 00064 808B2FF4 24843340 */  addiu   $a0, $a0, %lo(D_808B3340)  ## $a0 = 808B3340
/* 00068 808B2FF8 24060091 */  addiu   $a2, $zero, 0x0091         ## $a2 = 00000091
/* 0006C 808B2FFC 0C00084C */  jal     osSyncPrintf
              
/* 00070 808B3000 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L808B3004:
/* 00074 808B3004 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00078 808B3008 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0007C 808B300C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00080 808B3010 03E00008 */  jr      $ra                        
/* 00084 808B3014 00000000 */  nop


