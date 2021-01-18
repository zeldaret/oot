glabel func_809F2344
/* 00864 809F2344 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00868 809F2348 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0086C 809F234C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00870 809F2350 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00874 809F2354 0C02927F */  jal     SkelAnime_Update
              
/* 00878 809F2358 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0087C 809F235C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00880 809F2360 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00884 809F2364 03E00008 */  jr      $ra                        
/* 00888 809F2368 00000000 */  nop
