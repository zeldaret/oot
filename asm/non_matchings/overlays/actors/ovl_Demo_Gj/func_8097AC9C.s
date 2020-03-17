glabel func_8097AC9C
/* 0236C 8097AC9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02370 8097ACA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02374 8097ACA4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02378 8097ACA8 0C25E606 */  jal     func_80979818              
/* 0237C 8097ACAC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02380 8097ACB0 10400009 */  beq     $v0, $zero, .L8097ACD8     
/* 02384 8097ACB4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02388 8097ACB8 0C25E618 */  jal     func_80979860              
/* 0238C 8097ACBC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02390 8097ACC0 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 02394 8097ACC4 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 02398 8097ACC8 2418000F */  addiu   $t8, $zero, 0x000F         ## $t8 = 0000000F
/* 0239C 8097ACCC ADEE0164 */  sw      $t6, 0x0164($t7)           ## 00000164
/* 023A0 8097ACD0 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 023A4 8097ACD4 AF380168 */  sw      $t8, 0x0168($t9)           ## 00000168
.L8097ACD8:
/* 023A8 8097ACD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 023AC 8097ACDC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 023B0 8097ACE0 03E00008 */  jr      $ra                        
/* 023B4 8097ACE4 00000000 */  nop


