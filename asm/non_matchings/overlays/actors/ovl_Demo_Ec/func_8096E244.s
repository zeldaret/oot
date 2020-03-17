glabel func_8096E244
/* 00D94 8096E244 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D98 8096E248 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00D9C 8096E24C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00DA0 8096E250 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DA4 8096E254 0C25B743 */  jal     func_8096DD0C              
/* 00DA8 8096E258 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00DAC 8096E25C 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00DB0 8096E260 24C600F0 */  addiu   $a2, $a2, 0x00F0           ## $a2 = 060000F0
/* 00DB4 8096E264 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DB8 8096E268 0C25B5CA */  jal     func_8096D728              
/* 00DBC 8096E26C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00DC0 8096E270 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DC4 8096E274 0C25B76F */  jal     func_8096DDBC              
/* 00DC8 8096E278 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00DCC 8096E27C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00DD0 8096E280 24A5513C */  addiu   $a1, $a1, 0x513C           ## $a1 = 0600513C
/* 00DD4 8096E284 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD8 8096E288 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00DDC 8096E28C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00DE0 8096E290 0C25B5E7 */  jal     func_8096D79C              
/* 00DE4 8096E294 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00DE8 8096E298 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DEC 8096E29C 0C25B575 */  jal     func_8096D5D4              
/* 00DF0 8096E2A0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00DF4 8096E2A4 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00DF8 8096E2A8 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00DFC 8096E2AC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00E00 8096E2B0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00E04 8096E2B4 0C00AC78 */  jal     ActorShape_Init
              
/* 00E08 8096E2B8 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00E0C 8096E2BC 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 00E10 8096E2C0 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00E14 8096E2C4 AE0E0194 */  sw      $t6, 0x0194($s0)           ## 00000194
/* 00E18 8096E2C8 AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 00E1C 8096E2CC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00E20 8096E2D0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00E24 8096E2D4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E28 8096E2D8 03E00008 */  jr      $ra                        
/* 00E2C 8096E2DC 00000000 */  nop


