glabel func_80B3D118
/* 00F38 80B3D118 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x1360)
/* 00F3C 80B3D11C 8DCEF9C0 */  lw      $t6, %lo(gSaveContext+0x1360)($t6)
/* 00F40 80B3D120 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F44 80B3D124 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00F48 80B3D128 15C10005 */  bne     $t6, $at, .L80B3D140       
/* 00F4C 80B3D12C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F50 80B3D130 848200A4 */  lh      $v0, 0x00A4($a0)           ## 000000A4
/* 00F54 80B3D134 2401005C */  addiu   $at, $zero, 0x005C         ## $at = 0000005C
/* 00F58 80B3D138 50410004 */  beql    $v0, $at, .L80B3D14C       
/* 00F5C 80B3D13C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3D140:
/* 00F60 80B3D140 0C01E233 */  jal     func_800788CC              
/* 00F64 80B3D144 2404083D */  addiu   $a0, $zero, 0x083D         ## $a0 = 0000083D
/* 00F68 80B3D148 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3D14C:
/* 00F6C 80B3D14C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F70 80B3D150 03E00008 */  jr      $ra                        
/* 00F74 80B3D154 00000000 */  nop
