glabel func_80AB1CBC
/* 00F2C 80AB1CBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F30 80AB1CC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F34 80AB1CC4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F38 80AB1CC8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00F3C 80AB1CCC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00F40 80AB1CD0 0C2AC4F6 */  jal     func_80AB13D8              
/* 00F44 80AB1CD4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00F48 80AB1CD8 1040001A */  beq     $v0, $zero, .L80AB1D44     
/* 00F4C 80AB1CDC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00F50 80AB1CE0 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 00F54 80AB1CE4 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00F58 80AB1CE8 AC8E0278 */  sw      $t6, 0x0278($a0)           ## 00000278
/* 00F5C 80AB1CEC AC8F027C */  sw      $t7, 0x027C($a0)           ## 0000027C
/* 00F60 80AB1CF0 3C188016 */  lui     $t8, %hi(gGameInfo)
/* 00F64 80AB1CF4 8F18FA90 */  lw      $t8, %lo(gGameInfo)($t8)
/* 00F68 80AB1CF8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00F6C 80AB1CFC 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00F70 80AB1D00 8719145E */  lh      $t9, 0x145E($t8)           ## 8016145E
/* 00F74 80AB1D04 8C890288 */  lw      $t1, 0x0288($a0)           ## 00000288
/* 00F78 80AB1D08 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00F7C 80AB1D0C 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 00F80 80AB1D10 AC880284 */  sw      $t0, 0x0284($a0)           ## 00000284
/* 00F84 80AB1D14 468021A0 */  cvt.s.w $f6, $f4                   
/* 00F88 80AB1D18 46083280 */  add.s   $f10, $f6, $f8             
/* 00F8C 80AB1D1C 15200007 */  bne     $t1, $zero, .L80AB1D3C     
/* 00F90 80AB1D20 E48A0280 */  swc1    $f10, 0x0280($a0)          ## 00000280
/* 00F94 80AB1D24 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00F98 80AB1D28 0C2AC6A5 */  jal     func_80AB1A94              
/* 00F9C 80AB1D2C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00FA0 80AB1D30 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00FA4 80AB1D34 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00FA8 80AB1D38 AC8A0288 */  sw      $t2, 0x0288($a0)           ## 00000288
.L80AB1D3C:
/* 00FAC 80AB1D3C 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 00FB0 80AB1D40 A08B00C8 */  sb      $t3, 0x00C8($a0)           ## 000000C8
.L80AB1D44:
/* 00FB4 80AB1D44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FB8 80AB1D48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FBC 80AB1D4C 03E00008 */  jr      $ra                        
/* 00FC0 80AB1D50 00000000 */  nop
