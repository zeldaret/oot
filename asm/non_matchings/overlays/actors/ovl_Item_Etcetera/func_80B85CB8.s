glabel func_80B85CB8
/* 006C8 80B85CB8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006CC 80B85CBC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006D0 80B85CC0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006D4 80B85CC4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 006D8 80B85CC8 0C00BAF3 */  jal     func_8002EBCC              
/* 006DC 80B85CCC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 006E0 80B85CD0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 006E4 80B85CD4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 006E8 80B85CD8 0C00BB60 */  jal     func_8002ED80              
/* 006EC 80B85CDC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 006F0 80B85CE0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 006F4 80B85CE4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 006F8 80B85CE8 0C01A528 */  jal     func_800694A0              
/* 006FC 80B85CEC 85C50150 */  lh      $a1, 0x0150($t6)           ## 00000150
/* 00700 80B85CF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00704 80B85CF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00708 80B85CF8 03E00008 */  jr      $ra                        
/* 0070C 80B85CFC 00000000 */  nop
