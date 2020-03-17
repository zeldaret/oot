glabel func_80B1DD70
/* 003F0 80B1DD70 84C2008A */  lh      $v0, 0x008A($a2)           ## 0000008A
/* 003F4 80B1DD74 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 003F8 80B1DD78 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 003FC 80B1DD7C 00417021 */  addu    $t6, $v0, $at              
/* 00400 80B1DD80 3C0180B2 */  lui     $at, %hi(D_80B1F9F4)       ## $at = 80B20000
/* 00404 80B1DD84 A4C200B6 */  sh      $v0, 0x00B6($a2)           ## 000000B6
/* 00408 80B1DD88 A4C20032 */  sh      $v0, 0x0032($a2)           ## 00000032
/* 0040C 80B1DD8C A42EF9F4 */  sh      $t6, %lo(D_80B1F9F4)($at)  
/* 00410 80B1DD90 3C0142FE */  lui     $at, 0x42FE                ## $at = 42FE0000
/* 00414 80B1DD94 44812000 */  mtc1    $at, $f4                   ## $f4 = 127.00
/* 00418 80B1DD98 3C0180B2 */  lui     $at, %hi(D_80B1F9F0)       ## $at = 80B20000
/* 0041C 80B1DD9C 34188000 */  ori     $t8, $zero, 0x8000         ## $t8 = 00008000
/* 00420 80B1DDA0 E424F9F0 */  swc1    $f4, %lo(D_80B1F9F0)($at)  
/* 00424 80B1DDA4 3C0180B2 */  lui     $at, %hi(D_80B1FA00)       ## $at = 80B20000
/* 00428 80B1DDA8 A02FFA00 */  sb      $t7, %lo(D_80B1FA00)($at)  
/* 0042C 80B1DDAC A4B80000 */  sh      $t8, 0x0000($a1)           ## 00000000
/* 00430 80B1DDB0 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 00434 80B1DDB4 A0990A78 */  sb      $t9, 0x0A78($a0)           ## 00000A78
/* 00438 80B1DDB8 3C0180B2 */  lui     $at, %hi(D_80B20160)       ## $at = 80B20000
/* 0043C 80B1DDBC 03E00008 */  jr      $ra                        
/* 00440 80B1DDC0 A0200160 */  sb      $zero, %lo(D_80B20160)($at) 


