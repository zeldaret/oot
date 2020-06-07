glabel func_80B14A54
/* 00FB4 80B14A54 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00FB8 80B14A58 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00FBC 80B14A5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FC0 80B14A60 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00FC4 80B14A64 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00FC8 80B14A68 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00FCC 80B14A6C 240E00FA */  addiu   $t6, $zero, 0x00FA         ## $t6 = 000000FA
/* 00FD0 80B14A70 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00FD4 80B14A74 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00FD8 80B14A78 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00FDC 80B14A7C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00FE0 80B14A80 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00FE4 80B14A84 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00FE8 80B14A88 3C064248 */  lui     $a2, 0x4248                ## $a2 = 42480000
/* 00FEC 80B14A8C 0C00CD20 */  jal     func_80033480              
/* 00FF0 80B14A90 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 00FF4 80B14A94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FF8 80B14A98 0C2C5206 */  jal     func_80B14818              
/* 00FFC 80B14A9C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01000 80B14AA0 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
/* 01004 80B14AA4 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 01008 80B14AA8 14410004 */  bne     $v0, $at, .L80B14ABC       
/* 0100C 80B14AAC 00000000 */  nop
/* 01010 80B14AB0 0C041B33 */  jal     func_80106CCC              
/* 01014 80B14AB4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01018 80B14AB8 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
.L80B14ABC:
/* 0101C 80B14ABC 14400008 */  bne     $v0, $zero, .L80B14AE0     
/* 01020 80B14AC0 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 01024 80B14AC4 3C0580B1 */  lui     $a1, %hi(func_80B149F4)    ## $a1 = 80B10000
/* 01028 80B14AC8 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 0102C 80B14ACC A61902CC */  sh      $t9, 0x02CC($s0)           ## 000002CC
/* 01030 80B14AD0 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 01034 80B14AD4 24A549F4 */  addiu   $a1, $a1, %lo(func_80B149F4) ## $a1 = 80B149F4
/* 01038 80B14AD8 0C2C4EA8 */  jal     func_80B13AA0              
/* 0103C 80B14ADC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B14AE0:
/* 01040 80B14AE0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01044 80B14AE4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01048 80B14AE8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0104C 80B14AEC 03E00008 */  jr      $ra                        
/* 01050 80B14AF0 00000000 */  nop
