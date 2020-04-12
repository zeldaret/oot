.rdata
glabel D_80B9EE00
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B9EE40
    .asciz "../z_obj_switch.c"
    .balign 4

.text
glabel func_80B9D294
/* 00084 80B9D294 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00088 80B9D298 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0008C 80B9D29C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00090 80B9D2A0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00094 80B9D2A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00098 80B9D2A8 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 0009C 80B9D2AC AFA00030 */  sw      $zero, 0x0030($sp)         
/* 000A0 80B9D2B0 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 000A4 80B9D2B4 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 000A8 80B9D2B8 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 000AC 80B9D2BC 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 000B0 80B9D2C0 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 000B4 80B9D2C4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 000B8 80B9D2C8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000BC 80B9D2CC 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 000C0 80B9D2D0 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 000C4 80B9D2D4 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 000C8 80B9D2D8 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 000CC 80B9D2DC 1441000A */  bne     $v0, $at, .L80B9D308       
/* 000D0 80B9D2E0 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 000D4 80B9D2E4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 000D8 80B9D2E8 3C0480BA */  lui     $a0, %hi(D_80B9EE00)       ## $a0 = 80BA0000
/* 000DC 80B9D2EC 3C0580BA */  lui     $a1, %hi(D_80B9EE40)       ## $a1 = 80BA0000
/* 000E0 80B9D2F0 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 000E4 80B9D2F4 24A5EE40 */  addiu   $a1, $a1, %lo(D_80B9EE40)  ## $a1 = 80B9EE40
/* 000E8 80B9D2F8 2484EE00 */  addiu   $a0, $a0, %lo(D_80B9EE00)  ## $a0 = 80B9EE00
/* 000EC 80B9D2FC 24060213 */  addiu   $a2, $zero, 0x0213         ## $a2 = 00000213
/* 000F0 80B9D300 0C00084C */  jal     osSyncPrintf
              
/* 000F4 80B9D304 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L80B9D308:
/* 000F8 80B9D308 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 000FC 80B9D30C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00100 80B9D310 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00104 80B9D314 03E00008 */  jr      $ra                        
/* 00108 80B9D318 00000000 */  nop
