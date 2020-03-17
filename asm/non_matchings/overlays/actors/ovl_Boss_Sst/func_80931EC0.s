glabel func_80931EC0
/* 058F0 80931EC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 058F4 80931EC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 058F8 80931EC8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 058FC 80931ECC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 05900 80931ED0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 05904 80931ED4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 05908 80931ED8 50400004 */  beql    $v0, $zero, .L80931EEC     
/* 0590C 80931EDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05910 80931EE0 0C24C11D */  jal     func_80930474              
/* 05914 80931EE4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 05918 80931EE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80931EEC:
/* 0591C 80931EEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05920 80931EF0 03E00008 */  jr      $ra                        
/* 05924 80931EF4 00000000 */  nop


