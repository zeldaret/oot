glabel func_80B50FE8
/* 02658 80B50FE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0265C 80B50FEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02660 80B50FF0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02664 80B50FF4 0C2D3F33 */  jal     func_80B4FCCC              
/* 02668 80B50FF8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0266C 80B50FFC 0C2D3F84 */  jal     func_80B4FE10              
/* 02670 80B51000 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02674 80B51004 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02678 80B51008 0C2D3B4B */  jal     func_80B4ED2C              
/* 0267C 80B5100C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02680 80B51010 0C2D3B5D */  jal     func_80B4ED74              
/* 02684 80B51014 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02688 80B51018 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0268C 80B5101C 0C2D41CF */  jal     func_80B5073C              
/* 02690 80B51020 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 02694 80B51024 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02698 80B51028 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0269C 80B5102C 03E00008 */  jr      $ra                        
/* 026A0 80B51030 00000000 */  nop


