glabel func_8097FF5C
/* 028EC 8097FF5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 028F0 8097FF60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 028F4 8097FF64 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 028F8 8097FF68 0C25FF77 */  jal     func_8097FDDC              
/* 028FC 8097FF6C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02900 8097FF70 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02904 8097FF74 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02908 8097FF78 0C25FB59 */  jal     func_8097ED64              
/* 0290C 8097FF7C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02910 8097FF80 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02914 8097FF84 0C25FF5C */  jal     func_8097FD70              
/* 02918 8097FF88 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0291C 8097FF8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02920 8097FF90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02924 8097FF94 03E00008 */  jr      $ra                        
/* 02928 8097FF98 00000000 */  nop
