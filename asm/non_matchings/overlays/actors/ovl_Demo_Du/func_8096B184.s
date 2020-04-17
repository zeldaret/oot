glabel func_8096B184
/* 016B4 8096B184 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 016B8 8096B188 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 016BC 8096B18C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 016C0 8096B190 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 016C4 8096B194 0C25A716 */  jal     func_80969C58              
/* 016C8 8096B198 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 016CC 8096B19C 0C25A70E */  jal     func_80969C38              
/* 016D0 8096B1A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016D4 8096B1A4 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 016D8 8096B1A8 0C25A917 */  jal     func_8096A45C              
/* 016DC 8096B1AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016E0 8096B1B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016E4 8096B1B4 0C25A94A */  jal     func_8096A528              
/* 016E8 8096B1B8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 016EC 8096B1BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016F0 8096B1C0 0C25AB24 */  jal     func_8096AC90              
/* 016F4 8096B1C4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 016F8 8096B1C8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 016FC 8096B1CC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01700 8096B1D0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01704 8096B1D4 03E00008 */  jr      $ra                        
/* 01708 8096B1D8 00000000 */  nop
