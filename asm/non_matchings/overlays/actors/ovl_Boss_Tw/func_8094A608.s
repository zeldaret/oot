glabel func_8094A608
/* 11938 8094A608 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1193C 8094A60C AFA5001C */  sw      $a1, 0x001C($sp)
/* 11940 8094A610 3C0E8095 */  lui     $t6, %hi(func_8094A660)    ## $t6 = 80950000
/* 11944 8094A614 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 11948 8094A618 25CEA660 */  addiu   $t6, $t6, %lo(func_8094A660) ## $t6 = 8094A660
/* 1194C 8094A61C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 11950 8094A620 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 11954 8094A624 3C050603 */  lui     $a1, 0x0603                ## $a1 = 06030000
/* 11958 8094A628 24A52BF8 */  addiu   $a1, $a1, 0x2BF8           ## $a1 = 06032BF8
/* 1195C 8094A62C AFA70018 */  sw      $a3, 0x0018($sp)
/* 11960 8094A630 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 11964 8094A634 0C0294D3 */  jal     Animation_MorphToLoop
/* 11968 8094A638 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 1196C 8094A63C 8FA70018 */  lw      $a3, 0x0018($sp)
/* 11970 8094A640 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 11974 8094A644 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 11978 8094A648 A4EF0178 */  sh      $t7, 0x0178($a3)           ## 00000178
/* 1197C 8094A64C E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 11980 8094A650 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 11984 8094A654 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 11988 8094A658 03E00008 */  jr      $ra
/* 1198C 8094A65C 00000000 */  nop
