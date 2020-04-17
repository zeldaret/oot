glabel func_80AB3E10
/* 03080 80AB3E10 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03084 80AB3E14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03088 80AB3E18 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0308C 80AB3E1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03090 80AB3E20 0C2AC4A1 */  jal     func_80AB1284              
/* 03094 80AB3E24 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03098 80AB3E28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0309C 80AB3E2C 0C2AC3D4 */  jal     func_80AB0F50              
/* 030A0 80AB3E30 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 030A4 80AB3E34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 030A8 80AB3E38 0C2AC410 */  jal     func_80AB1040              
/* 030AC 80AB3E3C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 030B0 80AB3E40 0C2AC4B3 */  jal     func_80AB12CC              
/* 030B4 80AB3E44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 030B8 80AB3E48 0C2AC459 */  jal     func_80AB1164              
/* 030BC 80AB3E4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 030C0 80AB3E50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 030C4 80AB3E54 0C2ACEDF */  jal     func_80AB3B7C              
/* 030C8 80AB3E58 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 030CC 80AB3E5C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 030D0 80AB3E60 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 030D4 80AB3E64 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 030D8 80AB3E68 03E00008 */  jr      $ra                        
/* 030DC 80AB3E6C 00000000 */  nop
