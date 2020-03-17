glabel func_80B8FA20
/* 00FA0 80B8FA20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FA4 80B8FA24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FA8 80B8FA28 848E01C0 */  lh      $t6, 0x01C0($a0)           ## 000001C0
/* 00FAC 80B8FA2C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00FB0 80B8FA30 241907D0 */  addiu   $t9, $zero, 0x07D0         ## $t9 = 000007D0
/* 00FB4 80B8FA34 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00FB8 80B8FA38 A48F01C0 */  sh      $t7, 0x01C0($a0)           ## 000001C0
/* 00FBC 80B8FA3C 849801C0 */  lh      $t8, 0x01C0($a0)           ## 000001C0
/* 00FC0 80B8FA40 17010002 */  bne     $t8, $at, .L80B8FA4C       
/* 00FC4 80B8FA44 00000000 */  nop
/* 00FC8 80B8FA48 A49901CC */  sh      $t9, 0x01CC($a0)           ## 000001CC
.L80B8FA4C:
/* 00FCC 80B8FA4C 0C2E3D67 */  jal     func_80B8F59C              
/* 00FD0 80B8FA50 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00FD4 80B8FA54 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00FD8 80B8FA58 848801C2 */  lh      $t0, 0x01C2($a0)           ## 000001C2
/* 00FDC 80B8FA5C 5D000004 */  bgtzl   $t0, .L80B8FA70            
/* 00FE0 80B8FA60 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FE4 80B8FA64 0C2E3D97 */  jal     func_80B8F65C              
/* 00FE8 80B8FA68 00000000 */  nop
/* 00FEC 80B8FA6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B8FA70:
/* 00FF0 80B8FA70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FF4 80B8FA74 03E00008 */  jr      $ra                        
/* 00FF8 80B8FA78 00000000 */  nop


