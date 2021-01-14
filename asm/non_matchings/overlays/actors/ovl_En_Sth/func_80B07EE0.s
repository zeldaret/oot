glabel func_80B07EE0
/* 009A0 80B07EE0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 009A4 80B07EE4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 009A8 80B07EE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009AC 80B07EEC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 009B0 80B07EF0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 009B4 80B07EF4 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 009B8 80B07EF8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 009BC 80B07EFC 0C0189B7 */  jal     Collider_UpdateCylinder
              
/* 009C0 80B07F00 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 009C4 80B07F04 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 009C8 80B07F08 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 009CC 80B07F0C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 009D0 80B07F10 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 009D4 80B07F14 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 009D8 80B07F18 00812821 */  addu    $a1, $a0, $at              
/* 009DC 80B07F1C 0C00B638 */  jal     Actor_MoveForward
              
/* 009E0 80B07F20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009E4 80B07F24 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 009E8 80B07F28 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 009EC 80B07F2C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 009F0 80B07F30 44060000 */  mfc1    $a2, $f0                   
/* 009F4 80B07F34 44070000 */  mfc1    $a3, $f0                   
/* 009F8 80B07F38 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 009FC 80B07F3C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A00 80B07F40 0C00B92D */  jal     func_8002E4B4              
/* 00A04 80B07F44 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00A08 80B07F48 0C02927F */  jal     SkelAnime_Update
              
/* 00A0C 80B07F4C 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 00A10 80B07F50 50400005 */  beql    $v0, $zero, .L80B07F68     
/* 00A14 80B07F54 8E1902B8 */  lw      $t9, 0x02B8($s0)           ## 000002B8
/* 00A18 80B07F58 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00A1C 80B07F5C 00000000 */  nop
/* 00A20 80B07F60 E60401B0 */  swc1    $f4, 0x01B0($s0)           ## 000001B0
/* 00A24 80B07F64 8E1902B8 */  lw      $t9, 0x02B8($s0)           ## 000002B8
.L80B07F68:
/* 00A28 80B07F68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A2C 80B07F6C 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00A30 80B07F70 0320F809 */  jalr    $ra, $t9                   
/* 00A34 80B07F74 00000000 */  nop
/* 00A38 80B07F78 860302B6 */  lh      $v1, 0x02B6($s0)           ## 000002B6
/* 00A3C 80B07F7C 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 00A40 80B07F80 14600003 */  bne     $v1, $zero, .L80B07F90     
/* 00A44 80B07F84 246FFFFF */  addiu   $t7, $v1, 0xFFFF           ## $t7 = FFFFFFFF
/* 00A48 80B07F88 10000004 */  beq     $zero, $zero, .L80B07F9C   
/* 00A4C 80B07F8C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B07F90:
/* 00A50 80B07F90 A60F02B6 */  sh      $t7, 0x02B6($s0)           ## 000002B6
/* 00A54 80B07F94 860302B6 */  lh      $v1, 0x02B6($s0)           ## 000002B6
/* 00A58 80B07F98 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80B07F9C:
/* 00A5C 80B07F9C 54400006 */  bnel    $v0, $zero, .L80B07FB8     
/* 00A60 80B07FA0 A60302B4 */  sh      $v1, 0x02B4($s0)           ## 000002B4
/* 00A64 80B07FA4 0C01DF64 */  jal     Rand_S16Offset
              
/* 00A68 80B07FA8 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 00A6C 80B07FAC A60202B6 */  sh      $v0, 0x02B6($s0)           ## 000002B6
/* 00A70 80B07FB0 860302B6 */  lh      $v1, 0x02B6($s0)           ## 000002B6
/* 00A74 80B07FB4 A60302B4 */  sh      $v1, 0x02B4($s0)           ## 000002B4
.L80B07FB8:
/* 00A78 80B07FB8 861802B4 */  lh      $t8, 0x02B4($s0)           ## 000002B4
/* 00A7C 80B07FBC 2B010003 */  slti    $at, $t8, 0x0003           
/* 00A80 80B07FC0 54200003 */  bnel    $at, $zero, .L80B07FD0     
/* 00A84 80B07FC4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A88 80B07FC8 A60002B4 */  sh      $zero, 0x02B4($s0)         ## 000002B4
/* 00A8C 80B07FCC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B07FD0:
/* 00A90 80B07FD0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00A94 80B07FD4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00A98 80B07FD8 03E00008 */  jr      $ra                        
/* 00A9C 80B07FDC 00000000 */  nop
