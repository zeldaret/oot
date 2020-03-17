glabel func_80AB6EB4
/* 01734 80AB6EB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01738 80AB6EB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0173C 80AB6EBC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01740 80AB6EC0 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 01744 80AB6EC4 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 01748 80AB6EC8 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 0174C 80AB6ECC 4606203C */  c.lt.s  $f4, $f6                   
/* 01750 80AB6ED0 00000000 */  nop
/* 01754 80AB6ED4 45020005 */  bc1fl   .L80AB6EEC                 
/* 01758 80AB6ED8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0175C 80AB6EDC 0C00B55C */  jal     Actor_Kill
              
/* 01760 80AB6EE0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01764 80AB6EE4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01768 80AB6EE8 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80AB6EEC:
/* 0176C 80AB6EEC 0C2AD6FE */  jal     func_80AB5BF8              
/* 01770 80AB6EF0 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01774 80AB6EF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01778 80AB6EF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0177C 80AB6EFC 03E00008 */  jr      $ra                        
/* 01780 80AB6F00 00000000 */  nop


