.rdata
glabel D_80897570
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808975B0
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

.text
glabel func_8089593C
/* 0004C 8089593C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00050 80895940 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00054 80895944 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00058 80895948 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0005C 8089594C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00060 80895950 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00064 80895954 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00068 80895958 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0006C 8089595C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00070 80895960 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 00074 80895964 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00078 80895968 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 0007C 8089596C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00080 80895970 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00084 80895974 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 00088 80895978 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0008C 8089597C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00090 80895980 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00094 80895984 1441000A */  bne     $v0, $at, .L808959B0       
/* 00098 80895988 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0009C 8089598C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 000A0 80895990 3C048089 */  lui     $a0, %hi(D_80897570)       ## $a0 = 80890000
/* 000A4 80895994 3C058089 */  lui     $a1, %hi(D_808975B0)       ## $a1 = 80890000
/* 000A8 80895998 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 000AC 8089599C 24A575B0 */  addiu   $a1, $a1, %lo(D_808975B0)  ## $a1 = 808975B0
/* 000B0 808959A0 24847570 */  addiu   $a0, $a0, %lo(D_80897570)  ## $a0 = 80897570
/* 000B4 808959A4 240600F7 */  addiu   $a2, $zero, 0x00F7         ## $a2 = 000000F7
/* 000B8 808959A8 0C00084C */  jal     osSyncPrintf
              
/* 000BC 808959AC AFAE0010 */  sw      $t6, 0x0010($sp)           
.L808959B0:
/* 000C0 808959B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 000C4 808959B4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 000C8 808959B8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 000CC 808959BC 03E00008 */  jr      $ra                        
/* 000D0 808959C0 00000000 */  nop
