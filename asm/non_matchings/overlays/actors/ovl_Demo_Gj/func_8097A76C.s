glabel func_8097A76C
/* 01E3C 8097A76C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E40 8097A770 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E44 8097A774 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01E48 8097A778 0C25E991 */  jal     func_8097A644              
/* 01E4C 8097A77C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01E50 8097A780 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01E54 8097A784 0C25E9C3 */  jal     func_8097A70C              
/* 01E58 8097A788 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01E5C 8097A78C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E60 8097A790 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E64 8097A794 03E00008 */  jr      $ra                        
/* 01E68 8097A798 00000000 */  nop
