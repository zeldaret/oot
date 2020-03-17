glabel func_8096F0F0
/* 01C40 8096F0F0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01C44 8096F0F4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01C48 8096F0F8 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 01C4C 8096F0FC 3C068097 */  lui     $a2, %hi(D_8097043C)       ## $a2 = 80970000
/* 01C50 8096F100 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01C54 8096F104 00027080 */  sll     $t6, $v0,  2               
/* 01C58 8096F108 00CE3021 */  addu    $a2, $a2, $t6              
/* 01C5C 8096F10C 8CC6043C */  lw      $a2, %lo(D_8097043C)($a2)  
/* 01C60 8096F110 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01C64 8096F114 0C25B631 */  jal     func_8096D8C4              
/* 01C68 8096F118 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01C6C 8096F11C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01C70 8096F120 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01C74 8096F124 03E00008 */  jr      $ra                        
/* 01C78 8096F128 00000000 */  nop


