glabel func_8096E97C
/* 014CC 8096E97C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014D0 8096E980 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 014D4 8096E984 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 014D8 8096E988 0C25B54B */  jal     func_8096D52C              
/* 014DC 8096E98C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 014E0 8096E990 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 014E4 8096E994 0C25B565 */  jal     func_8096D594              
/* 014E8 8096E998 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 014EC 8096E99C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 014F0 8096E9A0 0C25B553 */  jal     func_8096D54C              
/* 014F4 8096E9A4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 014F8 8096E9A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 014FC 8096E9AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01500 8096E9B0 03E00008 */  jr      $ra                        
/* 01504 8096E9B4 00000000 */  nop
