glabel func_8096E4B4
/* 01004 8096E4B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01008 8096E4B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0100C 8096E4BC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01010 8096E4C0 0C25B54B */  jal     func_8096D52C              
/* 01014 8096E4C4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01018 8096E4C8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0101C 8096E4CC 0C25B565 */  jal     func_8096D594              
/* 01020 8096E4D0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01024 8096E4D4 0C25B5A3 */  jal     func_8096D68C              
/* 01028 8096E4D8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0102C 8096E4DC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01030 8096E4E0 0C25B553 */  jal     func_8096D54C              
/* 01034 8096E4E4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01038 8096E4E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0103C 8096E4EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01040 8096E4F0 03E00008 */  jr      $ra                        
/* 01044 8096E4F4 00000000 */  nop
