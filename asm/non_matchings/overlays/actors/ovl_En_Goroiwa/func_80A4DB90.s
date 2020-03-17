glabel func_80A4DB90
/* 01EF0 80A4DB90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01EF4 80A4DB94 3C0E80A5 */  lui     $t6, %hi(func_80A4DC00)    ## $t6 = 80A50000
/* 01EF8 80A4DB98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01EFC 80A4DB9C 25CEDC00 */  addiu   $t6, $t6, %lo(func_80A4DC00) ## $t6 = 80A4DC00
/* 01F00 80A4DBA0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 01F04 80A4DBA4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01F08 80A4DBA8 0C292F5C */  jal     func_80A4BD70              
/* 01F0C 80A4DBAC 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01F10 80A4DBB0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01F14 80A4DBB4 3C0180A5 */  lui     $at, %hi(D_80A4E0A4)       ## $at = 80A50000
/* 01F18 80A4DBB8 C424E0A4 */  lwc1    $f4, %lo(D_80A4E0A4)($at)  
/* 01F1C 80A4DBBC C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 01F20 80A4DBC0 3C0180A5 */  lui     $at, %hi(D_80A4E0A8)       ## $at = 80A50000
/* 01F24 80A4DBC4 A48001C6 */  sh      $zero, 0x01C6($a0)         ## 000001C6
/* 01F28 80A4DBC8 E48401C0 */  swc1    $f4, 0x01C0($a0)           ## 000001C0
/* 01F2C 80A4DBCC C426E0A8 */  lwc1    $f6, %lo(D_80A4E0A8)($at)  
/* 01F30 80A4DBD0 46000005 */  abs.s   $f0, $f0                   
/* 01F34 80A4DBD4 908F01D3 */  lbu     $t7, 0x01D3($a0)           ## 000001D3
/* 01F38 80A4DBD8 46060202 */  mul.s   $f8, $f0, $f6              
/* 01F3C 80A4DBDC 35F90008 */  ori     $t9, $t7, 0x0008           ## $t9 = 00000008
/* 01F40 80A4DBE0 3328FFEF */  andi    $t0, $t9, 0xFFEF           ## $t0 = 00000008
/* 01F44 80A4DBE4 A09901D3 */  sb      $t9, 0x01D3($a0)           ## 000001D3
/* 01F48 80A4DBE8 A08801D3 */  sb      $t0, 0x01D3($a0)           ## 000001D3
/* 01F4C 80A4DBEC E4880060 */  swc1    $f8, 0x0060($a0)           ## 00000060
/* 01F50 80A4DBF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F54 80A4DBF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01F58 80A4DBF8 03E00008 */  jr      $ra                        
/* 01F5C 80A4DBFC 00000000 */  nop


