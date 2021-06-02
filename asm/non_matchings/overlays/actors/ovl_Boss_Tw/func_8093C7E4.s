glabel func_8093C7E4
/* 03B14 8093C7E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03B18 8093C7E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03B1C 8093C7EC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03B20 8093C7F0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03B24 8093C7F4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 03B28 8093C7F8 248404D0 */  addiu   $a0, $a0, 0x04D0           ## $a0 = 000004D0
/* 03B2C 8093C7FC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03B30 8093C800 0C01E107 */  jal     Math_ApproachF
              
/* 03B34 8093C804 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 03B38 8093C808 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03B3C 8093C80C 0C02927F */  jal     SkelAnime_Update
              
/* 03B40 8093C810 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 03B44 8093C814 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03B48 8093C818 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03B4C 8093C81C 03E00008 */  jr      $ra                        
/* 03B50 8093C820 00000000 */  nop
