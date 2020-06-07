glabel func_8096B27C
/* 017AC 8096B27C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 017B0 8096B280 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 017B4 8096B284 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 017B8 8096B288 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 017BC 8096B28C 0C25A716 */  jal     func_80969C58              
/* 017C0 8096B290 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 017C4 8096B294 0C25A70E */  jal     func_80969C38              
/* 017C8 8096B298 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017CC 8096B29C AFA20024 */  sw      $v0, 0x0024($sp)           
/* 017D0 8096B2A0 0C25A917 */  jal     func_8096A45C              
/* 017D4 8096B2A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017D8 8096B2A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017DC 8096B2AC 0C25A94A */  jal     func_8096A528              
/* 017E0 8096B2B0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 017E4 8096B2B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017E8 8096B2B8 0C25AB80 */  jal     func_8096AE00              
/* 017EC 8096B2BC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 017F0 8096B2C0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 017F4 8096B2C4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 017F8 8096B2C8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 017FC 8096B2CC 03E00008 */  jr      $ra                        
/* 01800 8096B2D0 00000000 */  nop
