glabel func_8096FDCC
/* 0291C 8096FDCC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02920 8096FDD0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02924 8096FDD4 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 02928 8096FDD8 3C068097 */  lui     $a2, %hi(D_8097048C)       ## $a2 = 80970000
/* 0292C 8096FDDC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 02930 8096FDE0 00027080 */  sll     $t6, $v0,  2               
/* 02934 8096FDE4 00CE3021 */  addu    $a2, $a2, $t6              
/* 02938 8096FDE8 8CC6048C */  lw      $a2, %lo(D_8097048C)($a2)  
/* 0293C 8096FDEC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02940 8096FDF0 0C25B631 */  jal     func_8096D8C4              
/* 02944 8096FDF4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02948 8096FDF8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0294C 8096FDFC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02950 8096FE00 03E00008 */  jr      $ra                        
/* 02954 8096FE04 00000000 */  nop
