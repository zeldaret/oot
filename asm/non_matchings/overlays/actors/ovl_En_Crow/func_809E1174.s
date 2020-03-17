glabel func_809E1174
/* 00F34 809E1174 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F38 809E1178 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F3C 809E117C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F40 809E1180 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F44 809E1184 90820249 */  lbu     $v0, 0x0249($a0)           ## 00000249
/* 00F48 809E1188 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F4C 809E118C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00F50 809E1190 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 00F54 809E1194 11C0001D */  beq     $t6, $zero, .L809E120C     
/* 00F58 809E1198 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 00F5C 809E119C A08F0249 */  sb      $t7, 0x0249($a0)           ## 00000249
/* 00F60 809E11A0 0C00D594 */  jal     func_80035650              
/* 00F64 809E11A4 8E050254 */  lw      $a1, 0x0254($s0)           ## 00000254
/* 00F68 809E11A8 920200B1 */  lbu     $v0, 0x00B1($s0)           ## 000000B1
/* 00F6C 809E11AC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F70 809E11B0 14400004 */  bne     $v0, $zero, .L809E11C4     
/* 00F74 809E11B4 00000000 */  nop
/* 00F78 809E11B8 921800B0 */  lbu     $t8, 0x00B0($s0)           ## 000000B0
/* 00F7C 809E11BC 53000014 */  beql    $t8, $zero, .L809E1210     
/* 00F80 809E11C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809E11C4:
/* 00F84 809E11C4 14410005 */  bne     $v0, $at, .L809E11DC       
/* 00F88 809E11C8 00000000 */  nop
/* 00F8C 809E11CC 0C2781BA */  jal     func_809E06E8              
/* 00F90 809E11D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F94 809E11D4 1000000E */  beq     $zero, $zero, .L809E1210   
/* 00F98 809E11D8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809E11DC:
/* 00F9C 809E11DC 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00FA0 809E11E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FA4 809E11E4 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 00FA8 809E11E8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00FAC 809E11EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00FB0 809E11F0 03214024 */  and     $t0, $t9, $at              
/* 00FB4 809E11F4 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 00FB8 809E11F8 0C00CB1F */  jal     func_80032C7C              
/* 00FBC 809E11FC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00FC0 809E1200 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FC4 809E1204 0C2780ED */  jal     func_809E03B4              
/* 00FC8 809E1208 8FA50024 */  lw      $a1, 0x0024($sp)           
.L809E120C:
/* 00FCC 809E120C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809E1210:
/* 00FD0 809E1210 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00FD4 809E1214 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00FD8 809E1218 03E00008 */  jr      $ra                        
/* 00FDC 809E121C 00000000 */  nop


