glabel func_8096BA2C
/* 01F5C 8096BA2C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01F60 8096BA30 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01F64 8096BA34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01F68 8096BA38 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01F6C 8096BA3C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01F70 8096BA40 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01F74 8096BA44 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 01F78 8096BA48 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 01F7C 8096BA4C 24E767CC */  addiu   $a3, $a3, 0x67CC           ## $a3 = 060067CC
/* 01F80 8096BA50 24C61CA8 */  addiu   $a2, $a2, 0x1CA8           ## $a2 = 06011CA8
/* 01F84 8096BA54 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 01F88 8096BA58 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01F8C 8096BA5C AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01F90 8096BA60 0C0291BE */  jal     func_800A46F8              
/* 01F94 8096BA64 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01F98 8096BA68 240E0018 */  addiu   $t6, $zero, 0x0018         ## $t6 = 00000018
/* 01F9C 8096BA6C AE0E0198 */  sw      $t6, 0x0198($s0)           ## 00000198
/* 01FA0 8096BA70 AE00019C */  sw      $zero, 0x019C($s0)         ## 0000019C
/* 01FA4 8096BA74 A20000C8 */  sb      $zero, 0x00C8($s0)         ## 000000C8
/* 01FA8 8096BA78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FAC 8096BA7C 0C25A6E3 */  jal     func_80969B8C              
/* 01FB0 8096BA80 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01FB4 8096BA84 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01FB8 8096BA88 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01FBC 8096BA8C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01FC0 8096BA90 03E00008 */  jr      $ra                        
/* 01FC4 8096BA94 00000000 */  nop


