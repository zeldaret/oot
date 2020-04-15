glabel func_80852080
/* 1FE70 80852080 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FE74 80852084 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1FE78 80852088 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FE7C 8085208C 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1FE80 80852090 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1FE84 80852094 24C62340 */  addiu   $a2, $a2, 0x2340           ## $a2 = 04002340
/* 1FE88 80852098 0C20CC19 */  jal     func_80833064              
/* 1FE8C 8085209C 2407009D */  addiu   $a3, $zero, 0x009D         ## $a3 = 0000009D
/* 1FE90 808520A0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1FE94 808520A4 0C20C9A6 */  jal     func_80832698              
/* 1FE98 808520A8 24056808 */  addiu   $a1, $zero, 0x6808         ## $a1 = 00006808
/* 1FE9C 808520AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1FEA0 808520B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FEA4 808520B4 03E00008 */  jr      $ra                        
/* 1FEA8 808520B8 00000000 */  nop
