glabel func_80851E90
/* 1FC80 80851E90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FC84 80851E94 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1FC88 80851E98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FC8C 80851E9C 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1FC90 80851EA0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1FC94 80851EA4 24C62408 */  addiu   $a2, $a2, 0x2408           ## $a2 = 04002408
/* 1FC98 80851EA8 0C20CC0F */  jal     func_8083303C              
/* 1FC9C 80851EAC 2407009C */  addiu   $a3, $zero, 0x009C         ## $a3 = 0000009C
/* 1FCA0 80851EB0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1FCA4 80851EB4 0C20C9A6 */  jal     func_80832698              
/* 1FCA8 80851EB8 24056813 */  addiu   $a1, $zero, 0x6813         ## $a1 = 00006813
/* 1FCAC 80851EBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1FCB0 80851EC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FCB4 80851EC4 03E00008 */  jr      $ra                        
/* 1FCB8 80851EC8 00000000 */  nop
