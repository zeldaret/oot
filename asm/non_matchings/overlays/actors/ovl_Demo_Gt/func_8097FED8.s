glabel func_8097FED8
/* 02868 8097FED8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0286C 8097FEDC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02870 8097FEE0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02874 8097FEE4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02878 8097FEE8 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 0287C 8097FEEC 0C25F9C1 */  jal     func_8097E704              
/* 02880 8097FEF0 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02884 8097FEF4 10400003 */  beq     $v0, $zero, .L8097FF04     
/* 02888 8097FEF8 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 0288C 8097FEFC 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 02890 8097FF00 ADEE0164 */  sw      $t6, 0x0164($t7)           ## 00000164
.L8097FF04:
/* 02894 8097FF04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02898 8097FF08 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0289C 8097FF0C 03E00008 */  jr      $ra                        
/* 028A0 8097FF10 00000000 */  nop


