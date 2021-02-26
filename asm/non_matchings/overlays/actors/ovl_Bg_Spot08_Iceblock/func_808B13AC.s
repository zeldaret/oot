glabel func_808B13AC
/* 00A4C 808B13AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A50 808B13B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A54 808B13B4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A58 808B13B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A5C 808B13BC 0C22C2A1 */  jal     func_808B0A84              
/* 00A60 808B13C0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A64 808B13C4 0C22C2B8 */  jal     func_808B0AE0              
/* 00A68 808B13C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A6C 808B13CC 0C22C2E3 */  jal     func_808B0B8C              
/* 00A70 808B13D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A74 808B13D4 860E0016 */  lh      $t6, 0x0016($s0)           ## 00000016
/* 00A78 808B13D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A7C 808B13DC A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
/* 00A80 808B13E0 0C22C338 */  jal     func_808B0CE0              
/* 00A84 808B13E4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A88 808B13E8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A8C 808B13EC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A90 808B13F0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A94 808B13F4 03E00008 */  jr      $ra                        
/* 00A98 808B13F8 00000000 */  nop
