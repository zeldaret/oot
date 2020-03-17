glabel func_8084E368
/* 1C158 8084E368 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1C15C 8084E36C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1C160 8084E370 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1C164 8084E374 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1C168 8084E378 0C212C00 */  jal     func_8084B000              
/* 1C16C 8084E37C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 1C170 8084E380 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 1C174 8084E384 0C028EF0 */  jal     func_800A3BC0              
/* 1C178 8084E388 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1C17C 8084E38C 10400003 */  beq     $v0, $zero, .L8084E39C     
/* 1C180 8084E390 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 1C184 8084E394 0C210EBA */  jal     func_80843AE8              
/* 1C188 8084E398 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
.L8084E39C:
/* 1C18C 8084E39C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1C190 8084E3A0 26050838 */  addiu   $a1, $s0, 0x0838           ## $a1 = 00000838
/* 1C194 8084E3A4 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 1C198 8084E3A8 0C212BBB */  jal     func_8084AEEC              
/* 1C19C 8084E3AC 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 1C1A0 8084E3B0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1C1A4 8084E3B4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1C1A8 8084E3B8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1C1AC 8084E3BC 03E00008 */  jr      $ra                        
/* 1C1B0 8084E3C0 00000000 */  nop


