.rdata
glabel D_80B99AB0
    .asciz "Error : カリングの設定がされていません。(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B99AF4
    .asciz "../z_obj_mure.c"
    .balign 4

.text
glabel func_80B98AA0
/* 00000 80B98AA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80B98AA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 80B98AA8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0000C 80B98AAC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00010 80B98AB0 84820156 */  lh      $v0, 0x0156($a0)           ## 00000156
/* 00014 80B98AB4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00018 80B98AB8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0001C 80B98ABC 10410006 */  beq     $v0, $at, .L80B98AD8       
/* 00020 80B98AC0 3C0580BA */  lui     $a1, %hi(D_80B99A8C)       ## $a1 = 80BA0000
/* 00024 80B98AC4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00028 80B98AC8 10410003 */  beq     $v0, $at, .L80B98AD8       
/* 0002C 80B98ACC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00030 80B98AD0 14410005 */  bne     $v0, $at, .L80B98AE8       
/* 00034 80B98AD4 240600CC */  addiu   $a2, $zero, 0x00CC         ## $a2 = 000000CC
.L80B98AD8:
/* 00038 80B98AD8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0003C 80B98ADC 24A59A8C */  addiu   $a1, $a1, %lo(D_80B99A8C)  ## $a1 = 80B99A8C
/* 00040 80B98AE0 1000000A */  beq     $zero, $zero, .L80B98B0C   
/* 00044 80B98AE4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B98AE8:
/* 00048 80B98AE8 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 0004C 80B98AEC 3C0480BA */  lui     $a0, %hi(D_80B99AB0)       ## $a0 = 80BA0000
/* 00050 80B98AF0 3C0580BA */  lui     $a1, %hi(D_80B99AF4)       ## $a1 = 80BA0000
/* 00054 80B98AF4 24A59AF4 */  addiu   $a1, $a1, %lo(D_80B99AF4)  ## $a1 = 80B99AF4
/* 00058 80B98AF8 24849AB0 */  addiu   $a0, $a0, %lo(D_80B99AB0)  ## $a0 = 80B99AB0
/* 0005C 80B98AFC 0C00084C */  jal     osSyncPrintf
              
/* 00060 80B98B00 85E7001C */  lh      $a3, 0x001C($t7)           ## 0000001C
/* 00064 80B98B04 10000001 */  beq     $zero, $zero, .L80B98B0C   
/* 00068 80B98B08 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B98B0C:
/* 0006C 80B98B0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00070 80B98B10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00074 80B98B14 03E00008 */  jr      $ra                        
/* 00078 80B98B18 00000000 */  nop
