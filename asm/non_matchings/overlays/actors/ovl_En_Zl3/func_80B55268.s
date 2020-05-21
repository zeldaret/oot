glabel func_80B55268
/* 01EB8 80B55268 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01EBC 80B5526C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01EC0 80B55270 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01EC4 80B55274 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01EC8 80B55278 24A591D8 */  addiu   $a1, $a1, 0x91D8           ## $a1 = 060091D8
/* 01ECC 80B5527C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01ED0 80B55280 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01ED4 80B55284 0C2D5385 */  jal     func_80B54E14              
/* 01ED8 80B55288 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01EDC 80B5528C 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01EE0 80B55290 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 01EE4 80B55294 ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 01EE8 80B55298 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01EEC 80B5529C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01EF0 80B552A0 03E00008 */  jr      $ra                        
/* 01EF4 80B552A4 00000000 */  nop
