glabel func_809EA534
/* 00FD4 809EA534 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00FD8 809EA538 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00FDC 809EA53C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FE0 809EA540 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00FE4 809EA544 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00FE8 809EA548 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 00FEC 809EA54C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00FF0 809EA550 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00FF4 809EA554 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00FF8 809EA558 0C0295B2 */  jal     func_800A56C8              
/* 00FFC 809EA55C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01000 809EA560 1040000F */  beq     $v0, $zero, .L809EA5A0     
/* 01004 809EA564 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 01008 809EA568 84C20196 */  lh      $v0, 0x0196($a2)           ## 00000196
/* 0100C 809EA56C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01010 809EA570 10400003 */  beq     $v0, $zero, .L809EA580     
/* 01014 809EA574 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01018 809EA578 A4CE0196 */  sh      $t6, 0x0196($a2)           ## 00000196
/* 0101C 809EA57C 84C20196 */  lh      $v0, 0x0196($a2)           ## 00000196
.L809EA580:
/* 01020 809EA580 14400005 */  bne     $v0, $zero, .L809EA598     
/* 01024 809EA584 00000000 */  nop
/* 01028 809EA588 0C27A648 */  jal     func_809E9920              
/* 0102C 809EA58C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01030 809EA590 10000004 */  beq     $zero, $zero, .L809EA5A4   
/* 01034 809EA594 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809EA598:
/* 01038 809EA598 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0103C 809EA59C 24053882 */  addiu   $a1, $zero, 0x3882         ## $a1 = 00003882
.L809EA5A0:
/* 01040 809EA5A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809EA5A4:
/* 01044 809EA5A4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01048 809EA5A8 03E00008 */  jr      $ra                        
/* 0104C 809EA5AC 00000000 */  nop
