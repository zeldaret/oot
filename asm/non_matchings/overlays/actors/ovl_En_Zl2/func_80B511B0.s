glabel func_80B511B0
/* 02820 80B511B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02824 80B511B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02828 80B511B8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0282C 80B511BC 0C2D3F33 */  jal     func_80B4FCCC              
/* 02830 80B511C0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02834 80B511C4 0C2D3F84 */  jal     func_80B4FE10              
/* 02838 80B511C8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0283C 80B511CC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02840 80B511D0 0C2D3B4B */  jal     func_80B4ED2C              
/* 02844 80B511D4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02848 80B511D8 0C2D3B5D */  jal     func_80B4ED74              
/* 0284C 80B511DC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02850 80B511E0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02854 80B511E4 0C2D424A */  jal     func_80B50928              
/* 02858 80B511E8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 0285C 80B511EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02860 80B511F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02864 80B511F4 03E00008 */  jr      $ra                        
/* 02868 80B511F8 00000000 */  nop


