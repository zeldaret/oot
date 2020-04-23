glabel func_80B06B88
/* 022F8 80B06B88 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 022FC 80B06B8C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02300 80B06B90 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02304 80B06B94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02308 80B06B98 0C2C183F */  jal     func_80B060FC              
/* 0230C 80B06B9C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02310 80B06BA0 1440000B */  bne     $v0, $zero, .L80B06BD0     
/* 02314 80B06BA4 240E003C */  addiu   $t6, $zero, 0x003C         ## $t6 = 0000003C
/* 02318 80B06BA8 3C0580B0 */  lui     $a1, %hi(func_80B064B0)    ## $a1 = 80B00000
/* 0231C 80B06BAC A60E03C8 */  sh      $t6, 0x03C8($s0)           ## 000003C8
/* 02320 80B06BB0 24A564B0 */  addiu   $a1, $a1, %lo(func_80B064B0) ## $a1 = 80B064B0
/* 02324 80B06BB4 0C2C1224 */  jal     func_80B04890              
/* 02328 80B06BB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0232C 80B06BBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02330 80B06BC0 0C2C192C */  jal     func_80B064B0              
/* 02334 80B06BC4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02338 80B06BC8 1000000B */  beq     $zero, $zero, .L80B06BF8   
/* 0233C 80B06BCC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B06BD0:
/* 02340 80B06BD0 0C2C13F7 */  jal     func_80B04FDC              
/* 02344 80B06BD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02348 80B06BD8 3C0580B0 */  lui     $a1, %hi(func_80B065FC)    ## $a1 = 80B00000
/* 0234C 80B06BDC 24A565FC */  addiu   $a1, $a1, %lo(func_80B065FC) ## $a1 = 80B065FC
/* 02350 80B06BE0 0C2C1224 */  jal     func_80B04890              
/* 02354 80B06BE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02358 80B06BE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0235C 80B06BEC 0C2C197F */  jal     func_80B065FC              
/* 02360 80B06BF0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02364 80B06BF4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B06BF8:
/* 02368 80B06BF8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0236C 80B06BFC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02370 80B06C00 03E00008 */  jr      $ra                        
/* 02374 80B06C04 00000000 */  nop
