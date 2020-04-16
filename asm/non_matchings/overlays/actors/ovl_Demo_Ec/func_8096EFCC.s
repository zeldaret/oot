glabel func_8096EFCC
/* 01B1C 8096EFCC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01B20 8096EFD0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01B24 8096EFD4 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 01B28 8096EFD8 3C068097 */  lui     $a2, %hi(D_80970430)       ## $a2 = 80970000
/* 01B2C 8096EFDC 3C0F8097 */  lui     $t7, %hi(func_8096EF4C)    ## $t7 = 80970000
/* 01B30 8096EFE0 00027080 */  sll     $t6, $v0,  2               
/* 01B34 8096EFE4 00CE3021 */  addu    $a2, $a2, $t6              
/* 01B38 8096EFE8 25EFEF4C */  addiu   $t7, $t7, %lo(func_8096EF4C) ## $t7 = 8096EF4C
/* 01B3C 8096EFEC 8CC60430 */  lw      $a2, %lo(D_80970430)($a2)  
/* 01B40 8096EFF0 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01B44 8096EFF4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01B48 8096EFF8 0C25B631 */  jal     func_8096D8C4              
/* 01B4C 8096EFFC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01B50 8096F000 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01B54 8096F004 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01B58 8096F008 03E00008 */  jr      $ra                        
/* 01B5C 8096F00C 00000000 */  nop
