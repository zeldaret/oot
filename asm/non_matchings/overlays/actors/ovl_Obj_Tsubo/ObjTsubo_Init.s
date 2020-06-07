.rdata
glabel D_80BA1BF0
    .asciz "Error : バンク危険！ (arg_data 0x%04x)(%s %d)\n"
    .balign 4

glabel D_80BA1C20
    .asciz "../z_obj_tsubo.c"
    .balign 4

glabel D_80BA1C34
    .asciz "(dungeon keep 壷)(arg_data 0x%04x)\n"
    .balign 4

.text
glabel ObjTsubo_Init
/* 00190 80BA0EF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00194 80BA0EF4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00198 80BA0EF8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0019C 80BA0EFC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 001A0 80BA0F00 3C0580BA */  lui     $a1, %hi(D_80BA1BC8)       ## $a1 = 80BA0000
/* 001A4 80BA0F04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001A8 80BA0F08 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 001AC 80BA0F0C 24A51BC8 */  addiu   $a1, $a1, %lo(D_80BA1BC8)  ## $a1 = 80BA1BC8
/* 001B0 80BA0F10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001B4 80BA0F14 0C2E83A6 */  jal     func_80BA0E98              
/* 001B8 80BA0F18 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 001BC 80BA0F1C 3C0680BA */  lui     $a2, %hi(D_80BA1BC0)       ## $a2 = 80BA0000
/* 001C0 80BA0F20 24C61BC0 */  addiu   $a2, $a2, %lo(D_80BA1BC0)  ## $a2 = 80BA1BC0
/* 001C4 80BA0F24 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 001C8 80BA0F28 0C0187B5 */  jal     func_80061ED4              
/* 001CC 80BA0F2C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 001D0 80BA0F30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001D4 80BA0F34 0C2E837D */  jal     func_80BA0DF4              
/* 001D8 80BA0F38 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 001DC 80BA0F3C 14400005 */  bne     $v0, $zero, .L80BA0F54     
/* 001E0 80BA0F40 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 001E4 80BA0F44 0C00B55C */  jal     Actor_Kill
              
/* 001E8 80BA0F48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001EC 80BA0F4C 10000021 */  beq     $zero, $zero, .L80BA0FD4   
/* 001F0 80BA0F50 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80BA0F54:
/* 001F4 80BA0F54 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 001F8 80BA0F58 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001FC 80BA0F5C 3C0580BA */  lui     $a1, %hi(D_80BA1B80)       ## $a1 = 80BA0000
/* 00200 80BA0F60 000E7A03 */  sra     $t7, $t6,  8               
/* 00204 80BA0F64 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00208 80BA0F68 0018C840 */  sll     $t9, $t8,  1               
/* 0020C 80BA0F6C 00B92821 */  addu    $a1, $a1, $t9              
/* 00210 80BA0F70 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00214 80BA0F74 00812021 */  addu    $a0, $a0, $at              
/* 00218 80BA0F78 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 0021C 80BA0F7C 84A51B80 */  lh      $a1, %lo(D_80BA1B80)($a1)  
/* 00220 80BA0F80 A202019C */  sb      $v0, 0x019C($s0)           ## 0000019C
/* 00224 80BA0F84 8208019C */  lb      $t0, 0x019C($s0)           ## 0000019C
/* 00228 80BA0F88 3C0480BA */  lui     $a0, %hi(D_80BA1BF0)       ## $a0 = 80BA0000
/* 0022C 80BA0F8C 24841BF0 */  addiu   $a0, $a0, %lo(D_80BA1BF0)  ## $a0 = 80BA1BF0
/* 00230 80BA0F90 05010009 */  bgez    $t0, .L80BA0FB8            
/* 00234 80BA0F94 3C0680BA */  lui     $a2, %hi(D_80BA1C20)       ## $a2 = 80BA0000
/* 00238 80BA0F98 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 0023C 80BA0F9C 24C61C20 */  addiu   $a2, $a2, %lo(D_80BA1C20)  ## $a2 = 80BA1C20
/* 00240 80BA0FA0 0C00084C */  jal     osSyncPrintf
              
/* 00244 80BA0FA4 2407019A */  addiu   $a3, $zero, 0x019A         ## $a3 = 0000019A
/* 00248 80BA0FA8 0C00B55C */  jal     Actor_Kill
              
/* 0024C 80BA0FAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00250 80BA0FB0 10000008 */  beq     $zero, $zero, .L80BA0FD4   
/* 00254 80BA0FB4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80BA0FB8:
/* 00258 80BA0FB8 0C2E854B */  jal     func_80BA152C              
/* 0025C 80BA0FBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00260 80BA0FC0 3C0480BA */  lui     $a0, %hi(D_80BA1C34)       ## $a0 = 80BA0000
/* 00264 80BA0FC4 24841C34 */  addiu   $a0, $a0, %lo(D_80BA1C34)  ## $a0 = 80BA1C34
/* 00268 80BA0FC8 0C00084C */  jal     osSyncPrintf
              
/* 0026C 80BA0FCC 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00270 80BA0FD0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80BA0FD4:
/* 00274 80BA0FD4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00278 80BA0FD8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0027C 80BA0FDC 03E00008 */  jr      $ra                        
/* 00280 80BA0FE0 00000000 */  nop
