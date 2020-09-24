glabel func_8081F2FC
/* 0BADC 8081F2FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0BAE0 8081F300 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0BAE4 8081F304 0C03FD2B */  jal     Sleep_Msec              
/* 0BAE8 8081F308 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 0BAEC 8081F30C 3C048083 */  lui     $a0, %hi(D_808321B0)       ## $a0 = 80830000
/* 0BAF0 8081F310 0C030DDC */  jal     PreRender_Calc              
/* 0BAF4 8081F314 248421B0 */  addiu   $a0, $a0, %lo(D_808321B0)  ## $a0 = 808321B0
/* 0BAF8 8081F318 3C048083 */  lui     $a0, %hi(D_808321B0)       ## $a0 = 80830000
/* 0BAFC 8081F31C 0C0303C2 */  jal     PreRender_Destroy              
/* 0BB00 8081F320 248421B0 */  addiu   $a0, $a0, %lo(D_808321B0)  ## $a0 = 808321B0
/* 0BB04 8081F324 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0BB08 8081F328 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0BB0C 8081F32C 03E00008 */  jr      $ra                        
/* 0BB10 8081F330 00000000 */  nop
