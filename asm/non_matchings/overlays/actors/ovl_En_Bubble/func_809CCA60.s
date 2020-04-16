glabel func_809CCA60
/* 00E60 809CCA60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E64 809CCA64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E68 809CCA68 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E6C 809CCA6C 0C272F5E */  jal     func_809CBD78              
/* 00E70 809CCA70 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E74 809CCA74 04400008 */  bltz    $v0, .L809CCA98            
/* 00E78 809CCA78 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00E7C 809CCA7C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00E80 809CCA80 2406003C */  addiu   $a2, $zero, 0x003C         ## $a2 = 0000003C
/* 00E84 809CCA84 24073949 */  addiu   $a3, $zero, 0x3949         ## $a3 = 00003949
/* 00E88 809CCA88 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00E8C 809CCA8C 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 00E90 809CCA90 0C00B55C */  jal     Actor_Kill
              
/* 00E94 809CCA94 8FA40018 */  lw      $a0, 0x0018($sp)           
.L809CCA98:
/* 00E98 809CCA98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E9C 809CCA9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EA0 809CCAA0 03E00008 */  jr      $ra                        
/* 00EA4 809CCAA4 00000000 */  nop
