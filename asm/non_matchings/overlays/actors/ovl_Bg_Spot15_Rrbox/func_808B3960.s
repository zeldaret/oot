glabel func_808B3960
/* 00000 808B3960 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 808B3964 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00008 808B3968 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0000C 808B396C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00010 808B3970 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 808B3974 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00018 808B3978 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 0001C 808B397C 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00020 808B3980 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00024 808B3984 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 00028 808B3988 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0002C 808B398C 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 00030 808B3990 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00034 808B3994 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00038 808B3998 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 0003C 808B399C 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00040 808B39A0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00044 808B39A4 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00048 808B39A8 1441000A */  bne     $v0, $at, .L808B39D4       
/* 0004C 808B39AC AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00050 808B39B0 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00054 808B39B4 3C04808B */  lui     $a0, %hi(D_808B4620)       ## $a0 = 808B0000
/* 00058 808B39B8 3C05808B */  lui     $a1, %hi(D_808B4660)       ## $a1 = 808B0000
/* 0005C 808B39BC 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 00060 808B39C0 24A54660 */  addiu   $a1, $a1, %lo(D_808B4660)  ## $a1 = 808B4660
/* 00064 808B39C4 24844620 */  addiu   $a0, $a0, %lo(D_808B4620)  ## $a0 = 808B4620
/* 00068 808B39C8 240600AB */  addiu   $a2, $zero, 0x00AB         ## $a2 = 000000AB
/* 0006C 808B39CC 0C00084C */  jal     osSyncPrintf
              
/* 00070 808B39D0 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L808B39D4:
/* 00074 808B39D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00078 808B39D8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0007C 808B39DC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00080 808B39E0 03E00008 */  jr      $ra                        
/* 00084 808B39E4 00000000 */  nop


