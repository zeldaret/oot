glabel func_809F1E8C
/* 003AC 809F1E8C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003B0 809F1E90 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 003B4 809F1E94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003B8 809F1E98 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 003BC 809F1E9C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 003C0 809F1EA0 0C02927F */  jal     SkelAnime_Update
              
/* 003C4 809F1EA4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 003C8 809F1EA8 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 003CC 809F1EAC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 003D0 809F1EB0 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 003D4 809F1EB4 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 003D8 809F1EB8 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 003DC 809F1EBC 24071388 */  addiu   $a3, $zero, 0x1388         ## $a3 = 00001388
/* 003E0 809F1EC0 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 003E4 809F1EC4 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 003E8 809F1EC8 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 003EC 809F1ECC 3C0E809F */  lui     $t6, %hi(func_809F236C)    ## $t6 = 809F0000
/* 003F0 809F1ED0 25CE236C */  addiu   $t6, $t6, %lo(func_809F236C) ## $t6 = 809F236C
/* 003F4 809F1ED4 4606203C */  c.lt.s  $f4, $f6                   
/* 003F8 809F1ED8 00000000 */  nop
/* 003FC 809F1EDC 45020003 */  bc1fl   .L809F1EEC                 
/* 00400 809F1EE0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00404 809F1EE4 AE0E022C */  sw      $t6, 0x022C($s0)           ## 0000022C
/* 00408 809F1EE8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F1EEC:
/* 0040C 809F1EEC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00410 809F1EF0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00414 809F1EF4 03E00008 */  jr      $ra                        
/* 00418 809F1EF8 00000000 */  nop
