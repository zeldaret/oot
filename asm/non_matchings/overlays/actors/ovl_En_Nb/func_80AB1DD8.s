glabel func_80AB1DD8
/* 01048 80AB1DD8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0104C 80AB1DDC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01050 80AB1DE0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01054 80AB1DE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01058 80AB1DE8 0C2AC4A1 */  jal     func_80AB1284              
/* 0105C 80AB1DEC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01060 80AB1DF0 0C2AC4B3 */  jal     func_80AB12CC              
/* 01064 80AB1DF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01068 80AB1DF8 0C2AC459 */  jal     func_80AB1164              
/* 0106C 80AB1DFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01070 80AB1E00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01074 80AB1E04 0C2AC72F */  jal     func_80AB1CBC              
/* 01078 80AB1E08 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0107C 80AB1E0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01080 80AB1E10 0C2AC484 */  jal     func_80AB1210              
/* 01084 80AB1E14 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01088 80AB1E18 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0108C 80AB1E1C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01090 80AB1E20 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01094 80AB1E24 03E00008 */  jr      $ra                        
/* 01098 80AB1E28 00000000 */  nop
