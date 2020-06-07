glabel func_8096B1DC
/* 0170C 8096B1DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01710 8096B1E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01714 8096B1E4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01718 8096B1E8 0C25A716 */  jal     func_80969C58              
/* 0171C 8096B1EC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01720 8096B1F0 0C25A70E */  jal     func_80969C38              
/* 01724 8096B1F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01728 8096B1F8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0172C 8096B1FC 0C25A94A */  jal     func_8096A528              
/* 01730 8096B200 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01734 8096B204 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01738 8096B208 0C25AB3F */  jal     func_8096ACFC              
/* 0173C 8096B20C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01740 8096B210 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01744 8096B214 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01748 8096B218 03E00008 */  jr      $ra                        
/* 0174C 8096B21C 00000000 */  nop
