glabel func_80A18F50
/* 01A40 80A18F50 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01A44 80A18F54 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01A48 80A18F58 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01A4C 80A18F5C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01A50 80A18F60 94830088 */  lhu     $v1, 0x0088($a0)           ## 00000088
/* 01A54 80A18F64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A58 80A18F68 306E0001 */  andi    $t6, $v1, 0x0001           ## $t6 = 00000000
/* 01A5C 80A18F6C 51C00011 */  beql    $t6, $zero, .L80A18FB4     
/* 01A60 80A18F70 30680002 */  andi    $t0, $v1, 0x0002           ## $t0 = 00000000
/* 01A64 80A18F74 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01A68 80A18F78 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01A6C 80A18F7C 10400007 */  beq     $v0, $zero, .L80A18F9C     
/* 01A70 80A18F80 24190032 */  addiu   $t9, $zero, 0x0032         ## $t9 = 00000032
/* 01A74 80A18F84 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 01A78 80A18F88 A619019A */  sh      $t9, 0x019A($s0)           ## 0000019A
/* 01A7C 80A18F8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A80 80A18F90 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 01A84 80A18F94 0C285DF2 */  jal     func_80A177C8              
/* 01A88 80A18F98 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
.L80A18F9C:
/* 01A8C 80A18F9C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01A90 80A18FA0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01A94 80A18FA4 0C01DE80 */  jal     Math_ApproxF
              
/* 01A98 80A18FA8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01A9C 80A18FAC 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
/* 01AA0 80A18FB0 30680002 */  andi    $t0, $v1, 0x0002           ## $t0 = 00000000
.L80A18FB4:
/* 01AA4 80A18FB4 11000003 */  beq     $t0, $zero, .L80A18FC4     
/* 01AA8 80A18FB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AAC 80A18FBC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01AB0 80A18FC0 24053937 */  addiu   $a1, $zero, 0x3937         ## $a1 = 00003937
.L80A18FC4:
/* 01AB4 80A18FC4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01AB8 80A18FC8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01ABC 80A18FCC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01AC0 80A18FD0 03E00008 */  jr      $ra                        
/* 01AC4 80A18FD4 00000000 */  nop
