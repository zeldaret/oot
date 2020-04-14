glabel func_80BA00CC
/* 0012C 80BA00CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00130 80BA00D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00134 80BA00D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00138 80BA00D8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0013C 80BA00DC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00140 80BA00E0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00144 80BA00E4 10400005 */  beq     $v0, $zero, .L80BA00FC     
/* 00148 80BA00E8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0014C 80BA00EC 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 00150 80BA00F0 00000000 */  nop
/* 00154 80BA00F4 10000004 */  beq     $zero, $zero, .L80BA0108   
/* 00158 80BA00F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80BA00FC:
/* 0015C 80BA00FC 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00160 80BA0100 00000000 */  nop
/* 00164 80BA0104 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80BA0108:
/* 00168 80BA0108 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0016C 80BA010C 03E00008 */  jr      $ra                        
/* 00170 80BA0110 00000000 */  nop
