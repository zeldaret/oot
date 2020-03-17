glabel func_80B4015C
/* 03F7C 80B4015C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03F80 80B40160 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03F84 80B40164 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03F88 80B40168 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03F8C 80B4016C 0C2CF12C */  jal     func_80B3C4B0              
/* 03F90 80B40170 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03F94 80B40174 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 03F98 80B40178 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03F9C 80B4017C 0C2CF11A */  jal     func_80B3C468              
/* 03FA0 80B40180 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03FA4 80B40184 0C2CF0C7 */  jal     func_80B3C31C              
/* 03FA8 80B40188 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03FAC 80B4018C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03FB0 80B40190 0C2CFEC9 */  jal     func_80B3FB24              
/* 03FB4 80B40194 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03FB8 80B40198 0C2CFEB8 */  jal     func_80B3FAE0              
/* 03FBC 80B4019C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03FC0 80B401A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03FC4 80B401A4 0C2D0010 */  jal     func_80B40040              
/* 03FC8 80B401A8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03FCC 80B401AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03FD0 80B401B0 0C2CF222 */  jal     func_80B3C888              
/* 03FD4 80B401B4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03FD8 80B401B8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03FDC 80B401BC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03FE0 80B401C0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03FE4 80B401C4 03E00008 */  jr      $ra                        
/* 03FE8 80B401C8 00000000 */  nop


