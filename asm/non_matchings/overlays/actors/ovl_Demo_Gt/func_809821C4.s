glabel func_809821C4
/* 04B54 809821C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04B58 809821C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04B5C 809821CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04B60 809821D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04B64 809821D4 0C25FA09 */  jal     func_8097E824              
/* 04B68 809821D8 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 04B6C 809821DC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04B70 809821E0 0C26082B */  jal     func_809820AC              
/* 04B74 809821E4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04B78 809821E8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04B7C 809821EC 0C260862 */  jal     func_80982188              
/* 04B80 809821F0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04B84 809821F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04B88 809821F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04B8C 809821FC 03E00008 */  jr      $ra                        
/* 04B90 80982200 00000000 */  nop


