.rdata
glabel D_808A35E0
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

.balign 4

glabel D_808A3620
    .asciz "../z_bg_mori_hashira4.c"
    .balign 4

.text
glabel func_808A3068
/* 00008 808A3068 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 808A306C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00010 808A3070 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00014 808A3074 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00018 808A3078 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 808A307C AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00020 808A3080 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00024 808A3084 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00028 808A3088 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0002C 808A308C 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 00030 808A3090 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00034 808A3094 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 00038 808A3098 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0003C 808A309C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00040 808A30A0 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 00044 808A30A4 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00048 808A30A8 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0004C 808A30AC 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00050 808A30B0 1441000A */  bne     $v0, $at, .L808A30DC       
/* 00054 808A30B4 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00058 808A30B8 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 0005C 808A30BC 3C04808A */  lui     $a0, %hi(D_808A35E0)       ## $a0 = 808A0000
/* 00060 808A30C0 3C05808A */  lui     $a1, %hi(D_808A3620)       ## $a1 = 808A0000
/* 00064 808A30C4 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 00068 808A30C8 24A53620 */  addiu   $a1, $a1, %lo(D_808A3620)  ## $a1 = 808A3620
/* 0006C 808A30CC 248435E0 */  addiu   $a0, $a0, %lo(D_808A35E0)  ## $a0 = 808A35E0
/* 00070 808A30D0 2406009B */  addiu   $a2, $zero, 0x009B         ## $a2 = 0000009B
/* 00074 808A30D4 0C00084C */  jal     osSyncPrintf
              
/* 00078 808A30D8 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L808A30DC:
/* 0007C 808A30DC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00080 808A30E0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00084 808A30E4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00088 808A30E8 03E00008 */  jr      $ra                        
/* 0008C 808A30EC 00000000 */  nop
