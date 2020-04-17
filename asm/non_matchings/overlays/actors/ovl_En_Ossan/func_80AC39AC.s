glabel func_80AC39AC
/* 00D0C 80AC39AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D10 80AC39B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D14 80AC39B4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D18 80AC39B8 84AF001C */  lh      $t7, 0x001C($a1)           ## 0000001C
/* 00D1C 80AC39BC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00D20 80AC39C0 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00D24 80AC39C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D28 80AC39C8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00D2C 80AC39CC 15E10017 */  bne     $t7, $at, .L80AC3A2C       
/* 00D30 80AC39D0 A4AE01FC */  sh      $t6, 0x01FC($a1)           ## 000001FC
/* 00D34 80AC39D4 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00D38 80AC39D8 9442F556 */  lhu     $v0, -0x0AAA($v0)          ## 8015F556
/* 00D3C 80AC39DC 240570A2 */  addiu   $a1, $zero, 0x70A2         ## $a1 = 000070A2
/* 00D40 80AC39E0 30580100 */  andi    $t8, $v0, 0x0100           ## $t8 = 00000000
/* 00D44 80AC39E4 1300000C */  beq     $t8, $zero, .L80AC3A18     
/* 00D48 80AC39E8 30590200 */  andi    $t9, $v0, 0x0200           ## $t9 = 00000000
/* 00D4C 80AC39EC 1320000A */  beq     $t9, $zero, .L80AC3A18     
/* 00D50 80AC39F0 30480400 */  andi    $t0, $v0, 0x0400           ## $t0 = 00000000
/* 00D54 80AC39F4 11000008 */  beq     $t0, $zero, .L80AC3A18     
/* 00D58 80AC39F8 30490800 */  andi    $t1, $v0, 0x0800           ## $t1 = 00000000
/* 00D5C 80AC39FC 51200007 */  beql    $t1, $zero, .L80AC3A1C     
/* 00D60 80AC3A00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D64 80AC3A04 240570AD */  addiu   $a1, $zero, 0x70AD         ## $a1 = 000070AD
/* 00D68 80AC3A08 0C042DC8 */  jal     func_8010B720              
/* 00D6C 80AC3A0C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00D70 80AC3A10 1000000B */  beq     $zero, $zero, .L80AC3A40   
/* 00D74 80AC3A14 8FA70024 */  lw      $a3, 0x0024($sp)           
.L80AC3A18:
/* 00D78 80AC3A18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AC3A1C:
/* 00D7C 80AC3A1C 0C042DC8 */  jal     func_8010B720              
/* 00D80 80AC3A20 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00D84 80AC3A24 10000006 */  beq     $zero, $zero, .L80AC3A40   
/* 00D88 80AC3A28 8FA70024 */  lw      $a3, 0x0024($sp)           
.L80AC3A2C:
/* 00D8C 80AC3A2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D90 80AC3A30 24050083 */  addiu   $a1, $zero, 0x0083         ## $a1 = 00000083
/* 00D94 80AC3A34 0C042DC8 */  jal     func_8010B720              
/* 00D98 80AC3A38 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00D9C 80AC3A3C 8FA70024 */  lw      $a3, 0x0024($sp)           
.L80AC3A40:
/* 00DA0 80AC3A40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DA4 80AC3A44 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 00DA8 80AC3A48 0C021BC0 */  jal     Interface_SetDoAction              
/* 00DAC 80AC3A4C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00DB0 80AC3A50 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00DB4 80AC3A54 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00DB8 80AC3A58 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00DBC 80AC3A5C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00DC0 80AC3A60 AC8202C0 */  sw      $v0, 0x02C0($a0)           ## 000002C0
/* 00DC4 80AC3A64 0C2B0CD4 */  jal     func_80AC3350              
/* 00DC8 80AC3A68 AC820288 */  sw      $v0, 0x0288($a0)           ## 00000288
/* 00DCC 80AC3A6C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DD0 80AC3A70 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DD4 80AC3A74 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00DD8 80AC3A78 03E00008 */  jr      $ra                        
/* 00DDC 80AC3A7C 00000000 */  nop
