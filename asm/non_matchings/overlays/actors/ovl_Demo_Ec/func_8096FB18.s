glabel func_8096FB18
/* 02668 8096FB18 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0266C 8096FB1C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02670 8096FB20 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 02674 8096FB24 24C635D8 */  addiu   $a2, $a2, 0x35D8           ## $a2 = 060035D8
/* 02678 8096FB28 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0267C 8096FB2C AFA00014 */  sw      $zero, 0x0014($sp)         
/* 02680 8096FB30 0C25B631 */  jal     func_8096D8C4              
/* 02684 8096FB34 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02688 8096FB38 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0268C 8096FB3C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02690 8096FB40 03E00008 */  jr      $ra                        
/* 02694 8096FB44 00000000 */  nop


