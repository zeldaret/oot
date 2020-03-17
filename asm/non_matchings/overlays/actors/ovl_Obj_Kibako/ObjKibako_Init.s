glabel ObjKibako_Init
/* 000EC 80B94D8C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 000F0 80B94D90 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 000F4 80B94D94 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 000F8 80B94D98 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 000FC 80B94D9C 3C0580B9 */  lui     $a1, %hi(D_80B95884)       ## $a1 = 80B90000
/* 00100 80B94DA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00104 80B94DA4 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00108 80B94DA8 24A55884 */  addiu   $a1, $a1, %lo(D_80B95884)  ## $a1 = 80B95884
/* 0010C 80B94DAC 3C0180B9 */  lui     $at, %hi(D_80B958C8)       ## $at = 80B90000
/* 00110 80B94DB0 C42458C8 */  lwc1    $f4, %lo(D_80B958C8)($at)  
/* 00114 80B94DB4 3C01C150 */  lui     $at, 0xC150                ## $at = C1500000
/* 00118 80B94DB8 44813000 */  mtc1    $at, $f6                   ## $f6 = -13.00
/* 0011C 80B94DBC E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00120 80B94DC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00124 80B94DC4 E6060070 */  swc1    $f6, 0x0070($s0)           ## 00000070
/* 00128 80B94DC8 0C2E534D */  jal     func_80B94D34              
/* 0012C 80B94DCC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00130 80B94DD0 3C0680B9 */  lui     $a2, %hi(D_80B9587C)       ## $a2 = 80B90000
/* 00134 80B94DD4 24C6587C */  addiu   $a2, $a2, %lo(D_80B9587C)  ## $a2 = 80B9587C
/* 00138 80B94DD8 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 0013C 80B94DDC 0C0187B5 */  jal     func_80061ED4              
/* 00140 80B94DE0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00144 80B94DE4 0C2E54CD */  jal     func_80B95334              
/* 00148 80B94DE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0014C 80B94DEC 3C0480B9 */  lui     $a0, %hi(D_80B958A0)       ## $a0 = 80B90000
/* 00150 80B94DF0 248458A0 */  addiu   $a0, $a0, %lo(D_80B958A0)  ## $a0 = 80B958A0
/* 00154 80B94DF4 0C00084C */  jal     osSyncPrintf
              
/* 00158 80B94DF8 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 0015C 80B94DFC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00160 80B94E00 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00164 80B94E04 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00168 80B94E08 03E00008 */  jr      $ra                        
/* 0016C 80B94E0C 00000000 */  nop


