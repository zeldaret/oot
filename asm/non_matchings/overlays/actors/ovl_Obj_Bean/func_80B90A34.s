glabel func_80B90A34
/* 01FB4 80B90A34 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01FB8 80B90A38 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01FBC 80B90A3C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01FC0 80B90A40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01FC4 80B90A44 0C2E3CA6 */  jal     func_80B8F298              
/* 01FC8 80B90A48 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01FCC 80B90A4C AFA20024 */  sw      $v0, 0x0024($sp)           
/* 01FD0 80B90A50 0C2E3B89 */  jal     func_80B8EE24              
/* 01FD4 80B90A54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FD8 80B90A58 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 01FDC 80B90A5C 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 01FE0 80B90A60 11C00007 */  beq     $t6, $zero, .L80B90A80     
/* 01FE4 80B90A64 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01FE8 80B90A68 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01FEC 80B90A6C 24E50810 */  addiu   $a1, $a3, 0x0810           ## $a1 = 00000810
/* 01FF0 80B90A70 0C00FB14 */  jal     func_8003EC50              
/* 01FF4 80B90A74 8E06014C */  lw      $a2, 0x014C($s0)           ## 0000014C
/* 01FF8 80B90A78 10000005 */  beq     $zero, $zero, .L80B90A90   
/* 01FFC 80B90A7C 860F01B4 */  lh      $t7, 0x01B4($s0)           ## 000001B4
.L80B90A80:
/* 02000 80B90A80 24E50810 */  addiu   $a1, $a3, 0x0810           ## $a1 = 00000810
/* 02004 80B90A84 0C00FB14 */  jal     func_8003EC50              
/* 02008 80B90A88 8E06014C */  lw      $a2, 0x014C($s0)           ## 0000014C
/* 0200C 80B90A8C 860F01B4 */  lh      $t7, 0x01B4($s0)           ## 000001B4
.L80B90A90:
/* 02010 80B90A90 8FB80024 */  lw      $t8, 0x0024($sp)           
/* 02014 80B90A94 5DE00008 */  bgtzl   $t7, .L80B90AB8            
/* 02018 80B90A98 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0201C 80B90A9C 57000006 */  bnel    $t8, $zero, .L80B90AB8     
/* 02020 80B90AA0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02024 80B90AA4 0C2E3AF2 */  jal     func_80B8EBC8              
/* 02028 80B90AA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0202C 80B90AAC 0C2E419E */  jal     func_80B90678              
/* 02030 80B90AB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02034 80B90AB4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B90AB8:
/* 02038 80B90AB8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0203C 80B90ABC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02040 80B90AC0 03E00008 */  jr      $ra                        
/* 02044 80B90AC4 00000000 */  nop


