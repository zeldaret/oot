glabel func_80A87BEC
/* 003EC 80A87BEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003F0 80A87BF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003F4 80A87BF4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003F8 80A87BF8 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 003FC 80A87BFC 44813000 */  mtc1    $at, $f6                   ## $f6 = 300.00
/* 00400 80A87C00 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00404 80A87C04 3C0580A8 */  lui     $a1, %hi(func_80A87B9C)    ## $a1 = 80A80000
/* 00408 80A87C08 4606203C */  c.lt.s  $f4, $f6                   
/* 0040C 80A87C0C 00000000 */  nop
/* 00410 80A87C10 45020004 */  bc1fl   .L80A87C24                 
/* 00414 80A87C14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00418 80A87C18 0C2A1E00 */  jal     func_80A87800              
/* 0041C 80A87C1C 24A57B9C */  addiu   $a1, $a1, %lo(func_80A87B9C) ## $a1 = 80A87B9C
/* 00420 80A87C20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A87C24:
/* 00424 80A87C24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00428 80A87C28 03E00008 */  jr      $ra                        
/* 0042C 80A87C2C 00000000 */  nop
