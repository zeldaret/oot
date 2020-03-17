glabel EnHs2_Update
/* 00250 80A6F1F0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00254 80A6F1F4 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00258 80A6F1F8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0025C 80A6F1FC AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00260 80A6F200 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00264 80A6F204 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00268 80A6F208 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 0026C 80A6F20C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 00270 80A6F210 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00274 80A6F214 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 00278 80A6F218 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0027C 80A6F21C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00280 80A6F220 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 00284 80A6F224 02212821 */  addu    $a1, $s1, $at              
/* 00288 80A6F228 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 0028C 80A6F22C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00290 80A6F230 0C00B638 */  jal     Actor_MoveForward
              
/* 00294 80A6F234 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00298 80A6F238 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0029C 80A6F23C 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 002A0 80A6F240 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 002A4 80A6F244 44060000 */  mfc1    $a2, $f0                   
/* 002A8 80A6F248 44070000 */  mfc1    $a3, $f0                   
/* 002AC 80A6F24C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002B0 80A6F250 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 002B4 80A6F254 0C00B92D */  jal     func_8002E4B4              
/* 002B8 80A6F258 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 002BC 80A6F25C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 002C0 80A6F260 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 002C4 80A6F264 50400005 */  beql    $v0, $zero, .L80A6F27C     
/* 002C8 80A6F268 8E1902AC */  lw      $t9, 0x02AC($s0)           ## 000002AC
/* 002CC 80A6F26C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 002D0 80A6F270 00000000 */  nop
/* 002D4 80A6F274 E60401B0 */  swc1    $f4, 0x01B0($s0)           ## 000001B0
/* 002D8 80A6F278 8E1902AC */  lw      $t9, 0x02AC($s0)           ## 000002AC
.L80A6F27C:
/* 002DC 80A6F27C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002E0 80A6F280 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 002E4 80A6F284 0320F809 */  jalr    $ra, $t9                   
/* 002E8 80A6F288 00000000 */  nop
/* 002EC 80A6F28C 960F02A8 */  lhu     $t7, 0x02A8($s0)           ## 000002A8
/* 002F0 80A6F290 2604029C */  addiu   $a0, $s0, 0x029C           ## $a0 = 0000029C
/* 002F4 80A6F294 24053200 */  addiu   $a1, $zero, 0x3200         ## $a1 = 00003200
/* 002F8 80A6F298 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 002FC 80A6F29C 13000010 */  beq     $t8, $zero, .L80A6F2E0     
/* 00300 80A6F2A0 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00304 80A6F2A4 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
/* 00308 80A6F2A8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0030C 80A6F2AC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00310 80A6F2B0 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00314 80A6F2B4 8E08003C */  lw      $t0, 0x003C($s0)           ## 0000003C
/* 00318 80A6F2B8 2606029C */  addiu   $a2, $s0, 0x029C           ## $a2 = 0000029C
/* 0031C 80A6F2BC 260702A2 */  addiu   $a3, $s0, 0x02A2           ## $a3 = 000002A2
/* 00320 80A6F2C0 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00324 80A6F2C4 8E090040 */  lw      $t1, 0x0040($s0)           ## 00000040
/* 00328 80A6F2C8 0C00E0A4 */  jal     func_80038290              
/* 0032C 80A6F2CC AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00330 80A6F2D0 960A02A8 */  lhu     $t2, 0x02A8($s0)           ## 000002A8
/* 00334 80A6F2D4 314BFFFE */  andi    $t3, $t2, 0xFFFE           ## $t3 = 00000000
/* 00338 80A6F2D8 1000001A */  beq     $zero, $zero, .L80A6F344   
/* 0033C 80A6F2DC A60B02A8 */  sh      $t3, 0x02A8($s0)           ## 000002A8
.L80A6F2E0:
/* 00340 80A6F2E0 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 00344 80A6F2E4 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00348 80A6F2E8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0034C 80A6F2EC 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00350 80A6F2F0 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 00354 80A6F2F4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00358 80A6F2F8 2604029E */  addiu   $a0, $s0, 0x029E           ## $a0 = 0000029E
/* 0035C 80A6F2FC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00360 80A6F300 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00364 80A6F304 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00368 80A6F308 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 0036C 80A6F30C 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00370 80A6F310 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00374 80A6F314 260402A2 */  addiu   $a0, $s0, 0x02A2           ## $a0 = 000002A2
/* 00378 80A6F318 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0037C 80A6F31C 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00380 80A6F320 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00384 80A6F324 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00388 80A6F328 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 0038C 80A6F32C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00390 80A6F330 260402A4 */  addiu   $a0, $s0, 0x02A4           ## $a0 = 000002A4
/* 00394 80A6F334 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00398 80A6F338 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 0039C 80A6F33C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 003A0 80A6F340 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
.L80A6F344:
/* 003A4 80A6F344 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 003A8 80A6F348 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 003AC 80A6F34C 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 003B0 80A6F350 03E00008 */  jr      $ra                        
/* 003B4 80A6F354 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000


