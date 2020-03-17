glabel func_8097A890
/* 01F60 8097A890 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01F64 8097A894 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01F68 8097A898 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01F6C 8097A89C 0C25E606 */  jal     func_80979818              
/* 01F70 8097A8A0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01F74 8097A8A4 10400009 */  beq     $v0, $zero, .L8097A8CC     
/* 01F78 8097A8A8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01F7C 8097A8AC 0C25E618 */  jal     func_80979860              
/* 01F80 8097A8B0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01F84 8097A8B4 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01F88 8097A8B8 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 01F8C 8097A8BC 2418000D */  addiu   $t8, $zero, 0x000D         ## $t8 = 0000000D
/* 01F90 8097A8C0 ADEE0164 */  sw      $t6, 0x0164($t7)           ## 00000164
/* 01F94 8097A8C4 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 01F98 8097A8C8 AF380168 */  sw      $t8, 0x0168($t9)           ## 00000168
.L8097A8CC:
/* 01F9C 8097A8CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01FA0 8097A8D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01FA4 8097A8D4 03E00008 */  jr      $ra                        
/* 01FA8 8097A8D8 00000000 */  nop


