.rdata
glabel D_80B96A20
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B96A60
    .asciz "../z_obj_lift.c"
    .balign 4

.text
glabel func_80B960D8
/* 00008 80B960D8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 80B960DC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00010 80B960E0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00014 80B960E4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00018 80B960E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80B960EC AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00020 80B960F0 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00024 80B960F4 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00028 80B960F8 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0002C 80B960FC 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 00030 80B96100 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00034 80B96104 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 00038 80B96108 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0003C 80B9610C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00040 80B96110 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 00044 80B96114 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00048 80B96118 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0004C 80B9611C 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00050 80B96120 1441000A */  bne     $v0, $at, .L80B9614C       
/* 00054 80B96124 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00058 80B96128 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 0005C 80B9612C 3C0480B9 */  lui     $a0, %hi(D_80B96A20)       ## $a0 = 80B90000
/* 00060 80B96130 3C0580B9 */  lui     $a1, %hi(D_80B96A60)       ## $a1 = 80B90000
/* 00064 80B96134 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 00068 80B96138 24A56A60 */  addiu   $a1, $a1, %lo(D_80B96A60)  ## $a1 = 80B96A60
/* 0006C 80B9613C 24846A20 */  addiu   $a0, $a0, %lo(D_80B96A20)  ## $a0 = 80B96A20
/* 00070 80B96140 240600BC */  addiu   $a2, $zero, 0x00BC         ## $a2 = 000000BC
/* 00074 80B96144 0C00084C */  jal     osSyncPrintf
              
/* 00078 80B96148 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L80B9614C:
/* 0007C 80B9614C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00080 80B96150 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00084 80B96154 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00088 80B96158 03E00008 */  jr      $ra                        
/* 0008C 80B9615C 00000000 */  nop
