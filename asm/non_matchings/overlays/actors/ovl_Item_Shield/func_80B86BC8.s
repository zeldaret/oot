glabel func_80B86BC8
/* 002A8 80B86BC8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 002AC 80B86BCC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 002B0 80B86BD0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 002B4 80B86BD4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002B8 80B86BD8 0C00BD04 */  jal     func_8002F410              
/* 002BC 80B86BDC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 002C0 80B86BE0 10400005 */  beq     $v0, $zero, .L80B86BF8     
/* 002C4 80B86BE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002C8 80B86BE8 0C00B55C */  jal     Actor_Kill
              
/* 002CC 80B86BEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002D0 80B86BF0 10000029 */  beq     $zero, $zero, .L80B86C98   
/* 002D4 80B86BF4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B86BF8:
/* 002D8 80B86BF8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 002DC 80B86BFC 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 002E0 80B86C00 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 002E4 80B86C04 24060029 */  addiu   $a2, $zero, 0x0029         ## $a2 = 00000029
/* 002E8 80B86C08 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 002EC 80B86C0C 0C00BD0D */  jal     func_8002F434              
/* 002F0 80B86C10 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 002F4 80B86C14 920E015D */  lbu     $t6, 0x015D($s0)           ## 0000015D
/* 002F8 80B86C18 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 002FC 80B86C1C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 00300 80B86C20 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00304 80B86C24 11E00013 */  beq     $t7, $zero, .L80B86C74     
/* 00308 80B86C28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0030C 80B86C2C 3C0580B8 */  lui     $a1, %hi(func_80B86AC8)    ## $a1 = 80B80000
/* 00310 80B86C30 24A56AC8 */  addiu   $a1, $a1, %lo(func_80B86AC8) ## $a1 = 80B86AC8
/* 00314 80B86C34 0C2E1A48 */  jal     func_80B86920              
/* 00318 80B86C38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0031C 80B86C3C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00320 80B86C40 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 00324 80B86C44 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00328 80B86C48 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 0032C 80B86C4C 3C0180B8 */  lui     $at, %hi(D_80B872D4)       ## $at = 80B80000
/* 00330 80B86C50 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 00334 80B86C54 E6080070 */  swc1    $f8, 0x0070($s0)           ## 00000070
/* 00338 80B86C58 C42A72D4 */  lwc1    $f10, %lo(D_80B872D4)($at) 
/* 0033C 80B86C5C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00340 80B86C60 241800A0 */  addiu   $t8, $zero, 0x00A0         ## $t8 = 000000A0
/* 00344 80B86C64 A618019A */  sh      $t8, 0x019A($s0)           ## 0000019A
/* 00348 80B86C68 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 0034C 80B86C6C 10000009 */  beq     $zero, $zero, .L80B86C94   
/* 00350 80B86C70 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
.L80B86C74:
/* 00354 80B86C74 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00358 80B86C78 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 0035C 80B86C7C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00360 80B86C80 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00364 80B86C84 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00368 80B86C88 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0036C 80B86C8C 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00370 80B86C90 00812821 */  addu    $a1, $a0, $at              
.L80B86C94:
/* 00374 80B86C94 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B86C98:
/* 00378 80B86C98 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0037C 80B86C9C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00380 80B86CA0 03E00008 */  jr      $ra                        
/* 00384 80B86CA4 00000000 */  nop


