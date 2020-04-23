glabel func_80AC3098
/* 003F8 80AC3098 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003FC 80AC309C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00400 80AC30A0 0C042DC8 */  jal     func_8010B720              
/* 00404 80AC30A4 2405009E */  addiu   $a1, $zero, 0x009E         ## $a1 = 0000009E
/* 00408 80AC30A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0040C 80AC30AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00410 80AC30B0 03E00008 */  jr      $ra                        
/* 00414 80AC30B4 00000000 */  nop
