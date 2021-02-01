glabel func_8097B0EC
/* 027BC 8097B0EC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 027C0 8097B0F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 027C4 8097B0F4 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 027C8 8097B0F8 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 00000000
/* 027CC 8097B0FC 27A6001C */  addiu   $a2, $sp, 0x001C           ## $a2 = FFFFFFF4
/* 027D0 8097B100 E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 027D4 8097B104 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 027D8 8097B108 E7A60020 */  swc1    $f6, 0x0020($sp)           
/* 027DC 8097B10C C488002C */  lwc1    $f8, 0x002C($a0)           ## 0000002C
/* 027E0 8097B110 0C25E308 */  jal     func_80978C20              
/* 027E4 8097B114 E7A80024 */  swc1    $f8, 0x0024($sp)           
/* 027E8 8097B118 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 027EC 8097B11C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 027F0 8097B120 03E00008 */  jr      $ra                        
/* 027F4 8097B124 00000000 */  nop
