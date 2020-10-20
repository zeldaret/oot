.rdata
glabel D_80B90EC0
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B90F00
    .asciz "../z_obj_bean.c"
    .balign 4

.text
glabel func_80B8EAD8
/* 00058 80B8EAD8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0005C 80B8EADC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00060 80B8EAE0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00064 80B8EAE4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00068 80B8EAE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0006C 80B8EAEC AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00070 80B8EAF0 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00074 80B8EAF4 0C010D20 */  jal     DynaPolyActor_Init
              
/* 00078 80B8EAF8 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0007C 80B8EAFC 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 00080 80B8EB00 0C010620 */  jal     CollisionHeader_GetVirtual
              
/* 00084 80B8EB04 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 00088 80B8EB08 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0008C 80B8EB0C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00090 80B8EB10 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 00094 80B8EB14 0C00FA9D */  jal     DynaPoly_SetBgActor
              ## DynaPoly_SetBgActor
/* 00098 80B8EB18 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0009C 80B8EB1C 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 000A0 80B8EB20 1441000A */  bne     $v0, $at, .L80B8EB4C       
/* 000A4 80B8EB24 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 000A8 80B8EB28 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 000AC 80B8EB2C 3C0480B9 */  lui     $a0, %hi(D_80B90EC0)       ## $a0 = 80B90000
/* 000B0 80B8EB30 3C0580B9 */  lui     $a1, %hi(D_80B90F00)       ## $a1 = 80B90000
/* 000B4 80B8EB34 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 000B8 80B8EB38 24A50F00 */  addiu   $a1, $a1, %lo(D_80B90F00)  ## $a1 = 80B90F00
/* 000BC 80B8EB3C 24840EC0 */  addiu   $a0, $a0, %lo(D_80B90EC0)  ## $a0 = 80B90EC0
/* 000C0 80B8EB40 24060176 */  addiu   $a2, $zero, 0x0176         ## $a2 = 00000176
/* 000C4 80B8EB44 0C00084C */  jal     osSyncPrintf
              
/* 000C8 80B8EB48 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L80B8EB4C:
/* 000CC 80B8EB4C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 000D0 80B8EB50 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 000D4 80B8EB54 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 000D8 80B8EB58 03E00008 */  jr      $ra                        
/* 000DC 80B8EB5C 00000000 */  nop
