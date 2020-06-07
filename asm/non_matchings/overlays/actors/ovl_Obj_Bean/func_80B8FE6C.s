glabel func_80B8FE6C
/* 013EC 80B8FE6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 013F0 80B8FE70 3C0E80B9 */  lui     $t6, %hi(func_80B8FEAC)    ## $t6 = 80B90000
/* 013F4 80B8FE74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 013F8 80B8FE78 25CEFEAC */  addiu   $t6, $t6, %lo(func_80B8FEAC) ## $t6 = 80B8FEAC
/* 013FC 80B8FE7C AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 01400 80B8FE80 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01404 80B8FE84 0C2E3BCA */  jal     func_80B8EF28              
/* 01408 80B8FE88 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 0140C 80B8FE8C 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 01410 80B8FE90 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01414 80B8FE94 0C00B58B */  jal     Actor_SetScale
              
/* 01418 80B8FE98 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 0141C 80B8FE9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01420 80B8FEA0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01424 80B8FEA4 03E00008 */  jr      $ra                        
/* 01428 80B8FEA8 00000000 */  nop
