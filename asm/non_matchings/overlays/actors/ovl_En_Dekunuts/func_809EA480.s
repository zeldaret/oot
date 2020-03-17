glabel func_809EA480
/* 00F20 809EA480 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F24 809EA484 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00F28 809EA488 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F2C 809EA48C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00F30 809EA490 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F34 809EA494 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 00F38 809EA498 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F3C 809EA49C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00F40 809EA4A0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00F44 809EA4A4 0C0295B2 */  jal     func_800A56C8              
/* 00F48 809EA4A8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00F4C 809EA4AC 10400005 */  beq     $v0, $zero, .L809EA4C4     
/* 00F50 809EA4B0 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00F54 809EA4B4 84C20196 */  lh      $v0, 0x0196($a2)           ## 00000196
/* 00F58 809EA4B8 10400002 */  beq     $v0, $zero, .L809EA4C4     
/* 00F5C 809EA4BC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00F60 809EA4C0 A4CE0196 */  sh      $t6, 0x0196($a2)           ## 00000196
.L809EA4C4:
/* 00F64 809EA4C4 84CF0196 */  lh      $t7, 0x0196($a2)           ## 00000196
/* 00F68 809EA4C8 55E00004 */  bnel    $t7, $zero, .L809EA4DC     
/* 00F6C 809EA4CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F70 809EA4D0 0C27A648 */  jal     func_809E9920              
/* 00F74 809EA4D4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00F78 809EA4D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809EA4DC:
/* 00F7C 809EA4DC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F80 809EA4E0 03E00008 */  jr      $ra                        
/* 00F84 809EA4E4 00000000 */  nop


