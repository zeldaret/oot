glabel BgPoSyokudai_Update
/* 0030C 808A83BC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00310 808A83C0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00314 808A83C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00318 808A83C8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0031C 808A83CC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00320 808A83D0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00324 808A83D4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00328 808A83D8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0032C 808A83DC 00A12821 */  addu    $a1, $a1, $at              
/* 00330 808A83E0 26060164 */  addiu   $a2, $s0, 0x0164           ## $a2 = 00000164
/* 00334 808A83E4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00338 808A83E8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0033C 808A83EC 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00340 808A83F0 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 00344 808A83F4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00348 808A83F8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0034C 808A83FC 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00350 808A8400 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00354 808A8404 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00358 808A8408 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0035C 808A840C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00360 808A8410 10400003 */  beq     $v0, $zero, .L808A8420     
/* 00364 808A8414 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00368 808A8418 0C00BE5D */  jal     func_8002F974              
/* 0036C 808A841C 24052031 */  addiu   $a1, $zero, 0x2031         ## $a1 = 00002031
.L808A8420:
/* 00370 808A8420 860E014E */  lh      $t6, 0x014E($s0)           ## 0000014E
/* 00374 808A8424 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00378 808A8428 A60F014E */  sh      $t7, 0x014E($s0)           ## 0000014E
/* 0037C 808A842C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00380 808A8430 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00384 808A8434 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00388 808A8438 03E00008 */  jr      $ra                        
/* 0038C 808A843C 00000000 */  nop


