glabel func_80B3F988
/* 037A8 80B3F988 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 037AC 80B3F98C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 037B0 80B3F990 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 037B4 80B3F994 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 037B8 80B3F998 0C2CF12C */  jal     func_80B3C4B0              
/* 037BC 80B3F99C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 037C0 80B3F9A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 037C4 80B3F9A4 0C2CF11A */  jal     func_80B3C468              
/* 037C8 80B3F9A8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 037CC 80B3F9AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 037D0 80B3F9B0 0C2CFD67 */  jal     func_80B3F59C              
/* 037D4 80B3F9B4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 037D8 80B3F9B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 037DC 80B3F9BC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 037E0 80B3F9C0 0C2CF188 */  jal     func_80B3C620              
/* 037E4 80B3F9C4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 037E8 80B3F9C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 037EC 80B3F9CC 0C2CFDEF */  jal     func_80B3F7BC              
/* 037F0 80B3F9D0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 037F4 80B3F9D4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 037F8 80B3F9D8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 037FC 80B3F9DC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03800 80B3F9E0 03E00008 */  jr      $ra                        
/* 03804 80B3F9E4 00000000 */  nop
