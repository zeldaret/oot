glabel func_8096E2E0
/* 00E30 8096E2E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E34 8096E2E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E38 8096E2E8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E3C 8096E2EC 0C25B54B */  jal     func_8096D52C              
/* 00E40 8096E2F0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E44 8096E2F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00E48 8096E2F8 0C25B565 */  jal     func_8096D594              
/* 00E4C 8096E2FC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00E50 8096E300 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00E54 8096E304 0C25B553 */  jal     func_8096D54C              
/* 00E58 8096E308 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00E5C 8096E30C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E60 8096E310 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E64 8096E314 03E00008 */  jr      $ra                        
/* 00E68 8096E318 00000000 */  nop


