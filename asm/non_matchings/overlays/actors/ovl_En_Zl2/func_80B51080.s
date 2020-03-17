glabel func_80B51080
/* 026F0 80B51080 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 026F4 80B51084 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 026F8 80B51088 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 026FC 80B5108C 0C2D3F33 */  jal     func_80B4FCCC              
/* 02700 80B51090 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02704 80B51094 0C2D3F84 */  jal     func_80B4FE10              
/* 02708 80B51098 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0270C 80B5109C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02710 80B510A0 0C2D3B4B */  jal     func_80B4ED2C              
/* 02714 80B510A4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02718 80B510A8 0C2D3B5D */  jal     func_80B4ED74              
/* 0271C 80B510AC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02720 80B510B0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02724 80B510B4 0C2D41FA */  jal     func_80B507E8              
/* 02728 80B510B8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 0272C 80B510BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02730 80B510C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02734 80B510C4 03E00008 */  jr      $ra                        
/* 02738 80B510C8 00000000 */  nop


