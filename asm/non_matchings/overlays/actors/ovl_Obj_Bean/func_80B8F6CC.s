glabel func_80B8F6CC
/* 00C4C 80B8F6CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C50 80B8F6D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C54 80B8F6D4 848E01C0 */  lh      $t6, 0x01C0($a0)           ## 000001C0
/* 00C58 80B8F6D8 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00C5C 80B8F6DC A48F01C0 */  sh      $t7, 0x01C0($a0)           ## 000001C0
/* 00C60 80B8F6E0 0C2E3D67 */  jal     func_80B8F59C              
/* 00C64 80B8F6E4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C68 80B8F6E8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C6C 80B8F6EC 849801C0 */  lh      $t8, 0x01C0($a0)           ## 000001C0
/* 00C70 80B8F6F0 07030004 */  bgezl   $t8, .L80B8F704            
/* 00C74 80B8F6F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C78 80B8F6F8 0C2E3DC4 */  jal     func_80B8F710              
/* 00C7C 80B8F6FC 00000000 */  nop
/* 00C80 80B8F700 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B8F704:
/* 00C84 80B8F704 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C88 80B8F708 03E00008 */  jr      $ra                        
/* 00C8C 80B8F70C 00000000 */  nop


