.rdata
glabel D_808B85F0
    .asciz "\x1b[31m"
    .balign 4

glabel D_808B85F8
    .asciz "Ｅｒｒｏｒ : 変化壷蓋発生失敗(%s %d)\n"
    .balign 4

glabel D_808B8620
    .asciz "../z_bg_spot18_basket.c"
    .balign 4

glabel D_808B8638
    .asciz "\x1b[m"
    .balign 4

.late_rodata
glabel D_808B863C
    .float 0.01

.text
glabel BgSpot18Basket_Init
/* 0021C 808B792C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00220 808B7930 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00224 808B7934 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00228 808B7938 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0022C 808B793C AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00230 808B7940 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00234 808B7944 AFA00044 */  sw      $zero, 0x0044($sp)         
/* 00238 808B7948 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0023C 808B794C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00240 808B7950 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00244 808B7954 0C22DDC4 */  jal     func_808B7710              
/* 00248 808B7958 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0024C 808B795C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00250 808B7960 24842154 */  addiu   $a0, $a0, 0x2154           ## $a0 = 06002154
/* 00254 808B7964 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00258 808B7968 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFF4
/* 0025C 808B796C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00260 808B7970 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 00264 808B7974 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00268 808B7978 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0026C 808B797C 8FA70044 */  lw      $a3, 0x0044($sp)           
/* 00270 808B7980 3C05808C */  lui     $a1, %hi(D_808B85D4)       ## $a1 = 808C0000
/* 00274 808B7984 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00278 808B7988 24A585D4 */  addiu   $a1, $a1, %lo(D_808B85D4)  ## $a1 = 808B85D4
/* 0027C 808B798C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00280 808B7990 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00284 808B7994 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00288 808B7998 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0028C 808B799C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00290 808B79A0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00294 808B79A4 0C00AC78 */  jal     ActorShape_Init
              
/* 00298 808B79A8 3C074170 */  lui     $a3, 0x4170                ## $a3 = 41700000
/* 0029C 808B79AC 3C01808C */  lui     $at, %hi(D_808B863C)       ## $at = 808C0000
/* 002A0 808B79B0 C426863C */  lwc1    $f6, %lo(D_808B863C)($at)  
/* 002A4 808B79B4 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 002A8 808B79B8 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 002AC 808B79BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002B0 808B79C0 46062200 */  add.s   $f8, $f4, $f6              
/* 002B4 808B79C4 00052A03 */  sra     $a1, $a1,  8               
/* 002B8 808B79C8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 002BC 808B79CC E608000C */  swc1    $f8, 0x000C($s0)           ## 0000000C
/* 002C0 808B79D0 C60A000C */  lwc1    $f10, 0x000C($s0)          ## 0000000C
/* 002C4 808B79D4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 002C8 808B79D8 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 002CC 808B79DC 10400005 */  beq     $v0, $zero, .L808B79F4     
/* 002D0 808B79E0 00000000 */  nop
/* 002D4 808B79E4 0C22DEEC */  jal     func_808B7BB0              
/* 002D8 808B79E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002DC 808B79EC 10000029 */  beq     $zero, $zero, .L808B7A94   
/* 002E0 808B79F0 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808B79F4:
/* 002E4 808B79F4 0C22DEBB */  jal     func_808B7AEC              
/* 002E8 808B79F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002EC 808B79FC C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 002F0 808B7A00 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 002F4 808B7A04 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 002F8 808B7A08 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 002FC 808B7A0C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 00300 808B7A10 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00304 808B7A14 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00308 808B7A18 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 0030C 808B7A1C C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 00310 808B7A20 240701C3 */  addiu   $a3, $zero, 0x01C3         ## $a3 = 000001C3
/* 00314 808B7A24 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 00318 808B7A28 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 0031C 808B7A2C AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00320 808B7A30 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00324 808B7A34 25F81555 */  addiu   $t8, $t7, 0x1555           ## $t8 = 00001555
/* 00328 808B7A38 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 0032C 808B7A3C 861900B8 */  lh      $t9, 0x00B8($s0)           ## 000000B8
/* 00330 808B7A40 AFA80028 */  sw      $t0, 0x0028($sp)           
/* 00334 808B7A44 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00338 808B7A48 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 0033C 808B7A4C 8E09011C */  lw      $t1, 0x011C($s0)           ## 0000011C
/* 00340 808B7A50 3C04808C */  lui     $a0, %hi(D_808B85F0)       ## $a0 = 808C0000
/* 00344 808B7A54 5520000F */  bnel    $t1, $zero, .L808B7A94     
/* 00348 808B7A58 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0034C 808B7A5C 0C00084C */  jal     osSyncPrintf
              
/* 00350 808B7A60 248485F0 */  addiu   $a0, $a0, %lo(D_808B85F0)  ## $a0 = 808B85F0
/* 00354 808B7A64 3C04808C */  lui     $a0, %hi(D_808B85F8)       ## $a0 = 808C0000
/* 00358 808B7A68 3C05808C */  lui     $a1, %hi(D_808B8620)       ## $a1 = 808C0000
/* 0035C 808B7A6C 24A58620 */  addiu   $a1, $a1, %lo(D_808B8620)  ## $a1 = 808B8620
/* 00360 808B7A70 248485F8 */  addiu   $a0, $a0, %lo(D_808B85F8)  ## $a0 = 808B85F8
/* 00364 808B7A74 0C00084C */  jal     osSyncPrintf
              
/* 00368 808B7A78 2406015F */  addiu   $a2, $zero, 0x015F         ## $a2 = 0000015F
/* 0036C 808B7A7C 3C04808C */  lui     $a0, %hi(D_808B8638)       ## $a0 = 808C0000
/* 00370 808B7A80 0C00084C */  jal     osSyncPrintf
              
/* 00374 808B7A84 24848638 */  addiu   $a0, $a0, %lo(D_808B8638)  ## $a0 = 808B8638
/* 00378 808B7A88 0C00B55C */  jal     Actor_Kill
              
/* 0037C 808B7A8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00380 808B7A90 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808B7A94:
/* 00384 808B7A94 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00388 808B7A98 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 0038C 808B7A9C 03E00008 */  jr      $ra                        
/* 00390 808B7AA0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
