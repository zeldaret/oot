glabel func_8097EE44
/* 017D4 8097EE44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 017D8 8097EE48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 017DC 8097EE4C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 017E0 8097EE50 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 017E4 8097EE54 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 017E8 8097EE58 0C25FB65 */  jal     func_8097ED94              
/* 017EC 8097EE5C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 017F0 8097EE60 1040000A */  beq     $v0, $zero, .L8097EE8C     
/* 017F4 8097EE64 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 017F8 8097EE68 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 017FC 8097EE6C AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 01800 8097EE70 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 01804 8097EE74 AC8F0168 */  sw      $t7, 0x0168($a0)           ## 00000168
/* 01808 8097EE78 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 0180C 8097EE7C 0C25FB76 */  jal     func_8097EDD8              
/* 01810 8097EE80 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01814 8097EE84 10000004 */  beq     $zero, $zero, .L8097EE98   
/* 01818 8097EE88 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8097EE8C:
/* 0181C 8097EE8C 0C00B55C */  jal     Actor_Kill
              
/* 01820 8097EE90 00000000 */  nop
/* 01824 8097EE94 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8097EE98:
/* 01828 8097EE98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0182C 8097EE9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01830 8097EEA0 03E00008 */  jr      $ra                        
/* 01834 8097EEA4 00000000 */  nop
