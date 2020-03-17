glabel EnBdfire_Update
/* 0085C 809BC88C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00860 809BC890 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00864 809BC894 848E0156 */  lh      $t6, 0x0156($a0)           ## 00000156
/* 00868 809BC898 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0086C 809BC89C A48F0156 */  sh      $t7, 0x0156($a0)           ## 00000156
/* 00870 809BC8A0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00874 809BC8A4 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00878 809BC8A8 0320F809 */  jalr    $ra, $t9                   
/* 0087C 809BC8AC 00000000 */  nop
/* 00880 809BC8B0 0C00B638 */  jal     Actor_MoveForward
              
/* 00884 809BC8B4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00888 809BC8B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0088C 809BC8BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00890 809BC8C0 03E00008 */  jr      $ra                        
/* 00894 809BC8C4 00000000 */  nop


