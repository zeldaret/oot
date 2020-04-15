.rdata
glabel D_808A1500
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808A1540
    .asciz "../z_bg_mori_bigst.c"
    .balign 4

.text
glabel func_808A0BC8
/* 00008 808A0BC8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 808A0BCC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00010 808A0BD0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00014 808A0BD4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00018 808A0BD8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 808A0BDC AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00020 808A0BE0 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00024 808A0BE4 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00028 808A0BE8 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0002C 808A0BEC 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 00030 808A0BF0 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00034 808A0BF4 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 00038 808A0BF8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0003C 808A0BFC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00040 808A0C00 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 00044 808A0C04 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00048 808A0C08 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0004C 808A0C0C 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00050 808A0C10 1441000A */  bne     $v0, $at, .L808A0C3C       
/* 00054 808A0C14 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00058 808A0C18 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 0005C 808A0C1C 3C04808A */  lui     $a0, %hi(D_808A1500)       ## $a0 = 808A0000
/* 00060 808A0C20 3C05808A */  lui     $a1, %hi(D_808A1540)       ## $a1 = 808A0000
/* 00064 808A0C24 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 00068 808A0C28 24A51540 */  addiu   $a1, $a1, %lo(D_808A1540)  ## $a1 = 808A1540
/* 0006C 808A0C2C 24841500 */  addiu   $a0, $a0, %lo(D_808A1500)  ## $a0 = 808A1500
/* 00070 808A0C30 240600BE */  addiu   $a2, $zero, 0x00BE         ## $a2 = 000000BE
/* 00074 808A0C34 0C00084C */  jal     osSyncPrintf
              
/* 00078 808A0C38 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L808A0C3C:
/* 0007C 808A0C3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00080 808A0C40 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00084 808A0C44 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00088 808A0C48 03E00008 */  jr      $ra                        
/* 0008C 808A0C4C 00000000 */  nop
