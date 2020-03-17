glabel func_809896E8
/* 00868 809896E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0086C 809896EC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00870 809896F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00874 809896F4 3C058099 */  lui     $a1, %hi(func_809896DC)    ## $a1 = 80990000
/* 00878 809896F8 0C2623A0 */  jal     func_80988E80              
/* 0087C 809896FC 24A596DC */  addiu   $a1, $a1, %lo(func_809896DC) ## $a1 = 809896DC
/* 00880 80989700 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00884 80989704 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00888 80989708 03E00008 */  jr      $ra                        
/* 0088C 8098970C 00000000 */  nop


