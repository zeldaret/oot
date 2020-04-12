glabel func_80B976A8
/* 00B08 80B976A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B0C 80B976AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B10 80B976B0 848E01BC */  lh      $t6, 0x01BC($a0)           ## 000001BC
/* 00B14 80B976B4 25CFFF38 */  addiu   $t7, $t6, 0xFF38           ## $t7 = FFFFFF38
/* 00B18 80B976B8 A48F01BC */  sh      $t7, 0x01BC($a0)           ## 000001BC
/* 00B1C 80B976BC 0C2E5B60 */  jal     func_80B96D80              
/* 00B20 80B976C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B24 80B976C4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B28 80B976C8 849801BC */  lh      $t8, 0x01BC($a0)           ## 000001BC
/* 00B2C 80B976CC 07030004 */  bgezl   $t8, .L80B976E0            
/* 00B30 80B976D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B34 80B976D4 0C00B55C */  jal     Actor_Kill
              
/* 00B38 80B976D8 00000000 */  nop
/* 00B3C 80B976DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B976E0:
/* 00B40 80B976E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B44 80B976E4 03E00008 */  jr      $ra                        
/* 00B48 80B976E8 00000000 */  nop
