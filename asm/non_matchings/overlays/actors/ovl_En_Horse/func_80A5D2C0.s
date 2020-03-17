glabel func_80A5D2C0
/* 01FD0 80A5D2C0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01FD4 80A5D2C4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01FD8 80A5D2C8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01FDC 80A5D2CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01FE0 80A5D2D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01FE4 80A5D2D4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01FE8 80A5D2D8 A7A00022 */  sh      $zero, 0x0022($sp)         
/* 01FEC 80A5D2DC 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFFC
/* 01FF0 80A5D2E0 24840264 */  addiu   $a0, $a0, 0x0264           ## $a0 = 00000264
/* 01FF4 80A5D2E4 27A60022 */  addiu   $a2, $sp, 0x0022           ## $a2 = FFFFFFFA
/* 01FF8 80A5D2E8 0C298C52 */  jal     func_80A63148              
/* 01FFC 80A5D2EC E484FE04 */  swc1    $f4, -0x01FC($a0)          ## 00000068
/* 02000 80A5D2F0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02004 80A5D2F4 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 02008 80A5D2F8 C7A80024 */  lwc1    $f8, 0x0024($sp)           
/* 0200C 80A5D2FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02010 80A5D300 4608303C */  c.lt.s  $f6, $f8                   
/* 02014 80A5D304 00000000 */  nop
/* 02018 80A5D308 45000022 */  bc1f    .L80A5D394                 
/* 0201C 80A5D30C 00000000 */  nop
/* 02020 80A5D310 0C296FFE */  jal     func_80A5BFF8              
/* 02024 80A5D314 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02028 80A5D318 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0202C 80A5D31C 1441001D */  bne     $v0, $at, .L80A5D394       
/* 02030 80A5D320 00000000 */  nop
/* 02034 80A5D324 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02038 80A5D328 87A40022 */  lh      $a0, 0x0022($sp)           
/* 0203C 80A5D32C 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 02040 80A5D330 44815000 */  mtc1    $at, $f10                  ## $f10 = -0.50
/* 02044 80A5D334 00000000 */  nop
/* 02048 80A5D338 460A003E */  c.le.s  $f0, $f10                  
/* 0204C 80A5D33C 00000000 */  nop
/* 02050 80A5D340 45000005 */  bc1f    .L80A5D358                 
/* 02054 80A5D344 00000000 */  nop
/* 02058 80A5D348 0C297962 */  jal     func_80A5E588              
/* 0205C 80A5D34C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02060 80A5D350 10000010 */  beq     $zero, $zero, .L80A5D394   
/* 02064 80A5D354 00000000 */  nop
.L80A5D358:
/* 02068 80A5D358 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0206C 80A5D35C 87A40022 */  lh      $a0, 0x0022($sp)           
/* 02070 80A5D360 3C0180A6 */  lui     $at, %hi(D_80A668A0)       ## $at = 80A60000
/* 02074 80A5D364 D43068A0 */  ldc1    $f16, %lo(D_80A668A0)($at) 
/* 02078 80A5D368 460004A1 */  cvt.d.s $f18, $f0                  
/* 0207C 80A5D36C 4630903E */  c.le.d  $f18, $f16                 
/* 02080 80A5D370 00000000 */  nop
/* 02084 80A5D374 45000005 */  bc1f    .L80A5D38C                 
/* 02088 80A5D378 00000000 */  nop
/* 0208C 80A5D37C 0C2974F0 */  jal     func_80A5D3C0              
/* 02090 80A5D380 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02094 80A5D384 10000003 */  beq     $zero, $zero, .L80A5D394   
/* 02098 80A5D388 00000000 */  nop
.L80A5D38C:
/* 0209C 80A5D38C 0C29758A */  jal     func_80A5D628              
/* 020A0 80A5D390 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A5D394:
/* 020A4 80A5D394 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 020A8 80A5D398 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 020AC 80A5D39C 50400004 */  beql    $v0, $zero, .L80A5D3B0     
/* 020B0 80A5D3A0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 020B4 80A5D3A4 0C2973CA */  jal     func_80A5CF28              
/* 020B8 80A5D3A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020BC 80A5D3AC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A5D3B0:
/* 020C0 80A5D3B0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 020C4 80A5D3B4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 020C8 80A5D3B8 03E00008 */  jr      $ra                        
/* 020CC 80A5D3BC 00000000 */  nop


