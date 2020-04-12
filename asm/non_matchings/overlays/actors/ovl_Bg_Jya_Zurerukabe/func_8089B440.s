.rdata
glabel D_8089BA50
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

.balign 4

glabel D_8089BA90
    .asciz "../z_bg_jya_zurerukabe.c"
    .balign 4

.text
glabel func_8089B440
/* 00000 8089B440 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 8089B444 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00008 8089B448 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0000C 8089B44C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00010 8089B450 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 8089B454 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00018 8089B458 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 0001C 8089B45C 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00020 8089B460 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00024 8089B464 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 00028 8089B468 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0002C 8089B46C 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 00030 8089B470 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00034 8089B474 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00038 8089B478 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 0003C 8089B47C 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00040 8089B480 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00044 8089B484 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00048 8089B488 1441000A */  bne     $v0, $at, .L8089B4B4       
/* 0004C 8089B48C AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00050 8089B490 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00054 8089B494 3C04808A */  lui     $a0, %hi(D_8089BA50)       ## $a0 = 808A0000
/* 00058 8089B498 3C05808A */  lui     $a1, %hi(D_8089BA90)       ## $a1 = 808A0000
/* 0005C 8089B49C 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 00060 8089B4A0 24A5BA90 */  addiu   $a1, $a1, %lo(D_8089BA90)  ## $a1 = 8089BA90
/* 00064 8089B4A4 2484BA50 */  addiu   $a0, $a0, %lo(D_8089BA50)  ## $a0 = 8089BA50
/* 00068 8089B4A8 240600C2 */  addiu   $a2, $zero, 0x00C2         ## $a2 = 000000C2
/* 0006C 8089B4AC 0C00084C */  jal     osSyncPrintf
              
/* 00070 8089B4B0 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L8089B4B4:
/* 00074 8089B4B4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00078 8089B4B8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0007C 8089B4BC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00080 8089B4C0 03E00008 */  jr      $ra                        
/* 00084 8089B4C4 00000000 */  nop
