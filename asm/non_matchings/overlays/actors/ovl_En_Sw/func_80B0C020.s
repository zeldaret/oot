glabel func_80B0C020
/* 00270 80B0C020 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00274 80B0C024 8FA80050 */  lw      $t0, 0x0050($sp)           
/* 00278 80B0C028 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 0027C 80B0C02C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00280 80B0C030 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 00284 80B0C034 27AE003C */  addiu   $t6, $sp, 0x003C           ## $t6 = FFFFFFFC
/* 00288 80B0C038 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0028C 80B0C03C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00290 80B0C040 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00294 80B0C044 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 00298 80B0C048 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 0029C 80B0C04C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 002A0 80B0C050 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 002A4 80B0C054 AFA40034 */  sw      $a0, 0x0034($sp)           
/* 002A8 80B0C058 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 002AC 80B0C05C 0C00F7A1 */  jal     func_8003DE84              
/* 002B0 80B0C060 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 002B4 80B0C064 14400003 */  bne     $v0, $zero, .L80B0C074     
/* 002B8 80B0C068 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 002BC 80B0C06C 10000013 */  beq     $zero, $zero, .L80B0C0BC   
/* 002C0 80B0C070 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B0C074:
/* 002C4 80B0C074 8FA90050 */  lw      $t1, 0x0050($sp)           
/* 002C8 80B0C078 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 002CC 80B0C07C 0C01076E */  jal     func_80041DB8              
/* 002D0 80B0C080 8D260000 */  lw      $a2, 0x0000($t1)           ## 00000000
/* 002D4 80B0C084 304A0030 */  andi    $t2, $v0, 0x0030           ## $t2 = 00000000
/* 002D8 80B0C088 11400003 */  beq     $t2, $zero, .L80B0C098     
/* 002DC 80B0C08C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 002E0 80B0C090 1000000A */  beq     $zero, $zero, .L80B0C0BC   
/* 002E4 80B0C094 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B0C098:
/* 002E8 80B0C098 8FAB0050 */  lw      $t3, 0x0050($sp)           
/* 002EC 80B0C09C 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 002F0 80B0C0A0 0C010812 */  jal     func_80042048              
/* 002F4 80B0C0A4 8D660000 */  lw      $a2, 0x0000($t3)           ## 00000000
/* 002F8 80B0C0A8 50400004 */  beql    $v0, $zero, .L80B0C0BC     
/* 002FC 80B0C0AC 8FA2003C */  lw      $v0, 0x003C($sp)           
/* 00300 80B0C0B0 10000002 */  beq     $zero, $zero, .L80B0C0BC   
/* 00304 80B0C0B4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00308 80B0C0B8 8FA2003C */  lw      $v0, 0x003C($sp)           
.L80B0C0BC:
/* 0030C 80B0C0BC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00310 80B0C0C0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00314 80B0C0C4 03E00008 */  jr      $ra                        
/* 00318 80B0C0C8 00000000 */  nop


