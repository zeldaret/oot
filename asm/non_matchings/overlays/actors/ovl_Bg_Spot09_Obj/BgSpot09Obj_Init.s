glabel BgSpot09Obj_Init
/* 002A4 808B1D84 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002A8 808B1D88 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 002AC 808B1D8C 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 002B0 808B1D90 94C6F546 */  lhu     $a2, -0x0ABA($a2)          ## 8015F546
/* 002B4 808B1D94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002B8 808B1D98 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002BC 808B1D9C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 002C0 808B1DA0 3C04808B */  lui     $a0, %hi(D_808B1FE0)       ## $a0 = 808B0000
/* 002C4 808B1DA4 24841FE0 */  addiu   $a0, $a0, %lo(D_808B1FE0)  ## $a0 = 808B1FE0
/* 002C8 808B1DA8 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 002CC 808B1DAC 0C00084C */  jal     osSyncPrintf
              
/* 002D0 808B1DB0 30C6000F */  andi    $a2, $a2, 0x000F           ## $a2 = 00000000
/* 002D4 808B1DB4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 002D8 808B1DB8 3C04808B */  lui     $a0, %hi(D_808B2018)       ## $a0 = 808B0000
/* 002DC 808B1DBC 3C05808B */  lui     $a1, %hi(D_808B2064)       ## $a1 = 808B0000
/* 002E0 808B1DC0 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 002E4 808B1DC4 A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 002E8 808B1DC8 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 002EC 808B1DCC 24A52064 */  addiu   $a1, $a1, %lo(D_808B2064)  ## $a1 = 808B2064
/* 002F0 808B1DD0 24842018 */  addiu   $a0, $a0, %lo(D_808B2018)  ## $a0 = 808B2018
/* 002F4 808B1DD4 04E00003 */  bltz    $a3, .L808B1DE4            
/* 002F8 808B1DD8 28E10005 */  slti    $at, $a3, 0x0005           
/* 002FC 808B1DDC 54200004 */  bnel    $at, $zero, .L808B1DF0     
/* 00300 808B1DE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808B1DE4:
/* 00304 808B1DE4 0C00084C */  jal     osSyncPrintf
              
/* 00308 808B1DE8 24060142 */  addiu   $a2, $zero, 0x0142         ## $a2 = 00000142
/* 0030C 808B1DEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808B1DF0:
/* 00310 808B1DF0 0C22C71C */  jal     func_808B1C70              
/* 00314 808B1DF4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00318 808B1DF8 14400005 */  bne     $v0, $zero, .L808B1E10     
/* 0031C 808B1DFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00320 808B1E00 0C00B55C */  jal     Actor_Kill
              
/* 00324 808B1E04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00328 808B1E08 10000008 */  beq     $zero, $zero, .L808B1E2C   
/* 0032C 808B1E0C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B1E10:
/* 00330 808B1E10 0C22C751 */  jal     func_808B1D44              
/* 00334 808B1E14 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00338 808B1E18 54400004 */  bnel    $v0, $zero, .L808B1E2C     
/* 0033C 808B1E1C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00340 808B1E20 0C00B55C */  jal     Actor_Kill
              
/* 00344 808B1E24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00348 808B1E28 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B1E2C:
/* 0034C 808B1E2C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00350 808B1E30 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00354 808B1E34 03E00008 */  jr      $ra                        
/* 00358 808B1E38 00000000 */  nop


