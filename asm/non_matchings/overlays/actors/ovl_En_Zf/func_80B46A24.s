glabel func_80B46A24
/* 029D4 80B46A24 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 029D8 80B46A28 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 029DC 80B46A2C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 029E0 80B46A30 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 029E4 80B46A34 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 029E8 80B46A38 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 029EC 80B46A3C 2484A3D4 */  addiu   $a0, $a0, 0xA3D4           ## $a0 = 0600A3D4
/* 029F0 80B46A40 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 029F4 80B46A44 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 029F8 80B46A48 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 029FC 80B46A4C 468021A0 */  cvt.s.w $f6, $f4                   
/* 02A00 80B46A50 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02A04 80B46A54 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 02A08 80B46A58 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 02A0C 80B46A5C 24A5A3D4 */  addiu   $a1, $a1, 0xA3D4           ## $a1 = 0600A3D4
/* 02A10 80B46A60 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02A14 80B46A64 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 02A18 80B46A68 3C063FA0 */  lui     $a2, 0x3FA0                ## $a2 = 3FA00000
/* 02A1C 80B46A6C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02A20 80B46A70 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 02A24 80B46A74 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 02A28 80B46A78 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 02A2C 80B46A7C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02A30 80B46A80 24080009 */  addiu   $t0, $zero, 0x0009         ## $t0 = 00000009
/* 02A34 80B46A84 15E10005 */  bne     $t7, $at, .L80B46A9C       
/* 02A38 80B46A88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A3C 80B46A8C 3C013FE0 */  lui     $at, 0x3FE0                ## $at = 3FE00000
/* 02A40 80B46A90 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.75
/* 02A44 80B46A94 00000000 */  nop
/* 02A48 80B46A98 E60A0168 */  swc1    $f10, 0x0168($s0)          ## 00000168
.L80B46A9C:
/* 02A4C 80B46A9C 92180474 */  lbu     $t8, 0x0474($s0)           ## 00000474
/* 02A50 80B46AA0 AE0803DC */  sw      $t0, 0x03DC($s0)           ## 000003DC
/* 02A54 80B46AA4 24053829 */  addiu   $a1, $zero, 0x3829         ## $a1 = 00003829
/* 02A58 80B46AA8 3319FFFB */  andi    $t9, $t8, 0xFFFB           ## $t9 = 00000000
/* 02A5C 80B46AAC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02A60 80B46AB0 A2190474 */  sb      $t9, 0x0474($s0)           ## 00000474
/* 02A64 80B46AB4 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 02A68 80B46AB8 3C0580B4 */  lui     $a1, %hi(func_80B46AE0)    ## $a1 = 80B40000
/* 02A6C 80B46ABC 24A56AE0 */  addiu   $a1, $a1, %lo(func_80B46AE0) ## $a1 = 80B46AE0
/* 02A70 80B46AC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A74 80B46AC4 0C2D1014 */  jal     func_80B44050              
/* 02A78 80B46AC8 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 02A7C 80B46ACC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 02A80 80B46AD0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 02A84 80B46AD4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02A88 80B46AD8 03E00008 */  jr      $ra                        
/* 02A8C 80B46ADC 00000000 */  nop


