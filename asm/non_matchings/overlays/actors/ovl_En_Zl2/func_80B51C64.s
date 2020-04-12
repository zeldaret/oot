glabel func_80B51C64
/* 032D4 80B51C64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 032D8 80B51C68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 032DC 80B51C6C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 032E0 80B51C70 0C2D3F33 */  jal     func_80B4FCCC              
/* 032E4 80B51C74 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 032E8 80B51C78 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 032EC 80B51C7C 0C2D3B4B */  jal     func_80B4ED2C              
/* 032F0 80B51C80 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 032F4 80B51C84 0C2D3B5D */  jal     func_80B4ED74              
/* 032F8 80B51C88 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 032FC 80B51C8C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03300 80B51C90 0C2D4652 */  jal     func_80B51948              
/* 03304 80B51C94 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03308 80B51C98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0330C 80B51C9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03310 80B51CA0 03E00008 */  jr      $ra                        
/* 03314 80B51CA4 00000000 */  nop
