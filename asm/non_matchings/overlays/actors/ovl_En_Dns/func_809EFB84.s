glabel func_809EFB84
/* 00834 809EFB84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00838 809EFB88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0083C 809EFB8C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00840 809EFB90 C4860164 */  lwc1    $f6, 0x0164($a0)           ## 00000164
/* 00844 809EFB94 C484015C */  lwc1    $f4, 0x015C($a0)           ## 0000015C
/* 00848 809EFB98 3C0E809F */  lui     $t6, %hi(func_809EFBC8)    ## $t6 = 809F0000
/* 0084C 809EFB9C 25CEFBC8 */  addiu   $t6, $t6, %lo(func_809EFBC8) ## $t6 = 809EFBC8
/* 00850 809EFBA0 46062032 */  c.eq.s  $f4, $f6                   
/* 00854 809EFBA4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00858 809EFBA8 45020004 */  bc1fl   .L809EFBBC                 
/* 0085C 809EFBAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00860 809EFBB0 0C27BD47 */  jal     func_809EF51C              
/* 00864 809EFBB4 AC8E0268 */  sw      $t6, 0x0268($a0)           ## 00000268
/* 00868 809EFBB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809EFBBC:
/* 0086C 809EFBBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00870 809EFBC0 03E00008 */  jr      $ra                        
/* 00874 809EFBC4 00000000 */  nop
