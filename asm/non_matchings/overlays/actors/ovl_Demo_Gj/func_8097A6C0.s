glabel func_8097A6C0
/* 01D90 8097A6C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D94 8097A6C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01D98 8097A6C8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01D9C 8097A6CC 0C25E606 */  jal     func_80979818              
/* 01DA0 8097A6D0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01DA4 8097A6D4 10400009 */  beq     $v0, $zero, .L8097A6FC     
/* 01DA8 8097A6D8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01DAC 8097A6DC 0C25E618 */  jal     func_80979860              
/* 01DB0 8097A6E0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01DB4 8097A6E4 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01DB8 8097A6E8 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 01DBC 8097A6EC 2418000C */  addiu   $t8, $zero, 0x000C         ## $t8 = 0000000C
/* 01DC0 8097A6F0 ADEE0164 */  sw      $t6, 0x0164($t7)           ## 00000164
/* 01DC4 8097A6F4 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 01DC8 8097A6F8 AF380168 */  sw      $t8, 0x0168($t9)           ## 00000168
.L8097A6FC:
/* 01DCC 8097A6FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01DD0 8097A700 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01DD4 8097A704 03E00008 */  jr      $ra                        
/* 01DD8 8097A708 00000000 */  nop
