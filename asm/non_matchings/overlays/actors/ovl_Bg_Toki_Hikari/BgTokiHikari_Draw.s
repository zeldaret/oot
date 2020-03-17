glabel BgTokiHikari_Draw
/* 000C8 808B9FC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000CC 808B9FCC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000D0 808B9FD0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 000D4 808B9FD4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 000D8 808B9FD8 10400005 */  beq     $v0, $zero, .L808B9FF0     
/* 000DC 808B9FDC 00000000 */  nop
/* 000E0 808B9FE0 10410007 */  beq     $v0, $at, .L808BA000       
/* 000E4 808B9FE4 00000000 */  nop
/* 000E8 808B9FE8 10000008 */  beq     $zero, $zero, .L808BA00C   
/* 000EC 808B9FEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808B9FF0:
/* 000F0 808B9FF0 0C22E806 */  jal     func_808BA018              
/* 000F4 808B9FF4 00000000 */  nop
/* 000F8 808B9FF8 10000004 */  beq     $zero, $zero, .L808BA00C   
/* 000FC 808B9FFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BA000:
/* 00100 808BA000 0C22E8B3 */  jal     func_808BA2CC              
/* 00104 808BA004 00000000 */  nop
/* 00108 808BA008 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BA00C:
/* 0010C 808BA00C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00110 808BA010 03E00008 */  jr      $ra                        
/* 00114 808BA014 00000000 */  nop


