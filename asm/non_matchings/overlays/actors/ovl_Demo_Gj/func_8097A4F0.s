glabel func_8097A4F0
/* 01BC0 8097A4F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01BC4 8097A4F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01BC8 8097A4F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01BCC 8097A4FC 0C25E606 */  jal     func_80979818              
/* 01BD0 8097A500 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01BD4 8097A504 10400009 */  beq     $v0, $zero, .L8097A52C     
/* 01BD8 8097A508 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01BDC 8097A50C 0C25E618 */  jal     func_80979860              
/* 01BE0 8097A510 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01BE4 8097A514 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01BE8 8097A518 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 01BEC 8097A51C 2418000B */  addiu   $t8, $zero, 0x000B         ## $t8 = 0000000B
/* 01BF0 8097A520 ADEE0164 */  sw      $t6, 0x0164($t7)           ## 00000164
/* 01BF4 8097A524 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 01BF8 8097A528 AF380168 */  sw      $t8, 0x0168($t9)           ## 00000168
.L8097A52C:
/* 01BFC 8097A52C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01C00 8097A530 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C04 8097A534 03E00008 */  jr      $ra                        
/* 01C08 8097A538 00000000 */  nop
