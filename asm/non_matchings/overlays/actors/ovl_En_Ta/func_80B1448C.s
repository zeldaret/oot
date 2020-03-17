glabel func_80B1448C
/* 009EC 80B1448C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 009F0 80B14490 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009F4 80B14494 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 009F8 80B14498 0C00BCCD */  jal     func_8002F334              
/* 009FC 80B1449C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A00 80B144A0 10400003 */  beq     $v0, $zero, .L80B144B0     
/* 00A04 80B144A4 00000000 */  nop
/* 00A08 80B144A8 0C2C5104 */  jal     func_80B14410              
/* 00A0C 80B144AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B144B0:
/* 00A10 80B144B0 0C2C5092 */  jal     func_80B14248              
/* 00A14 80B144B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A18 80B144B8 960E02E0 */  lhu     $t6, 0x02E0($s0)           ## 000002E0
/* 00A1C 80B144BC 35CF0004 */  ori     $t7, $t6, 0x0004           ## $t7 = 00000004
/* 00A20 80B144C0 A60F02E0 */  sh      $t7, 0x02E0($s0)           ## 000002E0
/* 00A24 80B144C4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A28 80B144C8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A2C 80B144CC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A30 80B144D0 03E00008 */  jr      $ra                        
/* 00A34 80B144D4 00000000 */  nop


