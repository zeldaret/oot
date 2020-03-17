glabel func_80AB3D34
/* 02FA4 80AB3D34 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02FA8 80AB3D38 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02FAC 80AB3D3C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02FB0 80AB3D40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02FB4 80AB3D44 0C2ACD67 */  jal     func_80AB359C              
/* 02FB8 80AB3D48 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02FBC 80AB3D4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02FC0 80AB3D50 0C2AC4A1 */  jal     func_80AB1284              
/* 02FC4 80AB3D54 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02FC8 80AB3D58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02FCC 80AB3D5C 0C2AC3D4 */  jal     func_80AB0F50              
/* 02FD0 80AB3D60 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02FD4 80AB3D64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02FD8 80AB3D68 0C2ACDB7 */  jal     func_80AB36DC              
/* 02FDC 80AB3D6C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02FE0 80AB3D70 0C2AC431 */  jal     func_80AB10C4              
/* 02FE4 80AB3D74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02FE8 80AB3D78 0C2AC4B3 */  jal     func_80AB12CC              
/* 02FEC 80AB3D7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02FF0 80AB3D80 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 02FF4 80AB3D84 0C2AC459 */  jal     func_80AB1164              
/* 02FF8 80AB3D88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02FFC 80AB3D8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03000 80AB3D90 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03004 80AB3D94 0C2ACE9F */  jal     func_80AB3A7C              
/* 03008 80AB3D98 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 0300C 80AB3D9C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03010 80AB3DA0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03014 80AB3DA4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03018 80AB3DA8 03E00008 */  jr      $ra                        
/* 0301C 80AB3DAC 00000000 */  nop


