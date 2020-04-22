glabel func_80ACB3E0
/* 014C0 80ACB3E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 014C4 80ACB3E4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 014C8 80ACB3E8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 014CC 80ACB3EC 0C2B28EE */  jal     func_80ACA3B8              
/* 014D0 80ACB3F0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 014D4 80ACB3F4 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 014D8 80ACB3F8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 014DC 80ACB3FC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 014E0 80ACB400 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 014E4 80ACB404 24066079 */  addiu   $a2, $zero, 0x6079         ## $a2 = 00006079
/* 014E8 80ACB408 0C2B28FD */  jal     func_80ACA3F4              
/* 014EC 80ACB40C 3C0743B4 */  lui     $a3, 0x43B4                ## $a3 = 43B40000
/* 014F0 80ACB410 50400008 */  beql    $v0, $zero, .L80ACB434     
/* 014F4 80ACB414 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 014F8 80ACB418 0C03D719 */  jal     func_800F5C64              
/* 014FC 80ACB41C 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 01500 80ACB420 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 01504 80ACB424 3C0F80AD */  lui     $t7, %hi(func_80ACB344)    ## $t7 = 80AD0000
/* 01508 80ACB428 25EFB344 */  addiu   $t7, $t7, %lo(func_80ACB344) ## $t7 = 80ACB344
/* 0150C 80ACB42C AF0F040C */  sw      $t7, 0x040C($t8)           ## 0000040C
/* 01510 80ACB430 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACB434:
/* 01514 80ACB434 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01518 80ACB438 03E00008 */  jr      $ra                        
/* 0151C 80ACB43C 00000000 */  nop
