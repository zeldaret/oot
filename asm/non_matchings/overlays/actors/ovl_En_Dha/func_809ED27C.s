glabel func_809ED27C
/* 009FC 809ED27C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A00 809ED280 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A04 809ED284 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00A08 809ED288 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00A0C 809ED28C 908E01C0 */  lbu     $t6, 0x01C0($a0)           ## 000001C0
/* 00A10 809ED290 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A14 809ED294 29C10008 */  slti    $at, $t6, 0x0008           
/* 00A18 809ED298 50200027 */  beql    $at, $zero, .L809ED338     
/* 00A1C 809ED29C 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 00A20 809ED2A0 90820211 */  lbu     $v0, 0x0211($a0)           ## 00000211
/* 00A24 809ED2A4 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 00A28 809ED2A8 51E00023 */  beql    $t7, $zero, .L809ED338     
/* 00A2C 809ED2AC 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 00A30 809ED2B0 908300B1 */  lbu     $v1, 0x00B1($a0)           ## 000000B1
/* 00A34 809ED2B4 3058FFFD */  andi    $t8, $v0, 0xFFFD           ## $t8 = 00000000
/* 00A38 809ED2B8 A0980211 */  sb      $t8, 0x0211($a0)           ## 00000211
/* 00A3C 809ED2BC 10600026 */  beq     $v1, $zero, .L809ED358     
/* 00A40 809ED2C0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00A44 809ED2C4 10610024 */  beq     $v1, $at, .L809ED358       
/* 00A48 809ED2C8 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00A4C 809ED2CC 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 00A50 809ED2D0 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00A54 809ED2D4 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00A58 809ED2D8 0C00D09B */  jal     func_8003426C              
/* 00A5C 809ED2DC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00A60 809ED2E0 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00A64 809ED2E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A68 809ED2E8 1440000C */  bne     $v0, $zero, .L809ED31C     
/* 00A6C 809ED2EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A70 809ED2F0 0C27B415 */  jal     func_809ED054              
/* 00A74 809ED2F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A78 809ED2F8 24080008 */  addiu   $t0, $zero, 0x0008         ## $t0 = 00000008
/* 00A7C 809ED2FC A20800AF */  sb      $t0, 0x00AF($s0)           ## 000000AF
/* 00A80 809ED300 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00A84 809ED304 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A88 809ED308 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00A8C 809ED30C 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00A90 809ED310 240700E0 */  addiu   $a3, $zero, 0x00E0         ## $a3 = 000000E0
/* 00A94 809ED314 10000008 */  beq     $zero, $zero, .L809ED338   
/* 00A98 809ED318 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
.L809ED31C:
/* 00A9C 809ED31C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00AA0 809ED320 240539A9 */  addiu   $a1, $zero, 0x39A9         ## $a1 = 000039A9
/* 00AA4 809ED324 24090009 */  addiu   $t1, $zero, 0x0009         ## $t1 = 00000009
/* 00AA8 809ED328 A20901C0 */  sb      $t1, 0x01C0($s0)           ## 000001C0
/* 00AAC 809ED32C 0C27B3D8 */  jal     func_809ECF60              
/* 00AB0 809ED330 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB4 809ED334 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
.L809ED338:
/* 00AB8 809ED338 50400008 */  beql    $v0, $zero, .L809ED35C     
/* 00ABC 809ED33C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00AC0 809ED340 844A001C */  lh      $t2, 0x001C($v0)           ## 0000001C
/* 00AC4 809ED344 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00AC8 809ED348 55410004 */  bnel    $t2, $at, .L809ED35C       
/* 00ACC 809ED34C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00AD0 809ED350 0C27B415 */  jal     func_809ED054              
/* 00AD4 809ED354 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809ED358:
/* 00AD8 809ED358 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809ED35C:
/* 00ADC 809ED35C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00AE0 809ED360 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AE4 809ED364 03E00008 */  jr      $ra                        
/* 00AE8 809ED368 00000000 */  nop
