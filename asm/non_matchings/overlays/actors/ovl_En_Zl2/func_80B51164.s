glabel func_80B51164
/* 027D4 80B51164 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 027D8 80B51168 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 027DC 80B5116C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 027E0 80B51170 0C2D3F33 */  jal     func_80B4FCCC              
/* 027E4 80B51174 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 027E8 80B51178 0C2D3F84 */  jal     func_80B4FE10              
/* 027EC 80B5117C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 027F0 80B51180 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 027F4 80B51184 0C2D3B4B */  jal     func_80B4ED2C              
/* 027F8 80B51188 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 027FC 80B5118C 0C2D3B5D */  jal     func_80B4ED74              
/* 02800 80B51190 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02804 80B51194 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02808 80B51198 0C2D4281 */  jal     func_80B50A04              
/* 0280C 80B5119C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02810 80B511A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02814 80B511A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02818 80B511A8 03E00008 */  jr      $ra                        
/* 0281C 80B511AC 00000000 */  nop
