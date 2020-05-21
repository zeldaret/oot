glabel func_80AA8F50
/* 02F00 80AA8F50 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02F04 80AA8F54 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02F08 80AA8F58 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02F0C 80AA8F5C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02F10 80AA8F60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02F14 80AA8F64 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02F18 80AA8F68 44050000 */  mfc1    $a1, $f0                   
/* 02F1C 80AA8F6C 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 02F20 80AA8F70 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02F24 80AA8F74 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 02F28 80AA8F78 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 02F2C 80AA8F7C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 02F30 80AA8F80 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02F34 80AA8F84 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 02F38 80AA8F88 5040000B */  beql    $v0, $zero, .L80AA8FB8     
/* 02F3C 80AA8F8C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02F40 80AA8F90 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 02F44 80AA8F94 05C10005 */  bgez    $t6, .L80AA8FAC            
/* 02F48 80AA8F98 00000000 */  nop
/* 02F4C 80AA8F9C 0C2A9A0C */  jal     func_80AA6830              
/* 02F50 80AA8FA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F54 80AA8FA4 10000004 */  beq     $zero, $zero, .L80AA8FB8   
/* 02F58 80AA8FA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AA8FAC:
/* 02F5C 80AA8FAC 0C2A9AE0 */  jal     func_80AA6B80              
/* 02F60 80AA8FB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F64 80AA8FB4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AA8FB8:
/* 02F68 80AA8FB8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02F6C 80AA8FBC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02F70 80AA8FC0 03E00008 */  jr      $ra                        
/* 02F74 80AA8FC4 00000000 */  nop
