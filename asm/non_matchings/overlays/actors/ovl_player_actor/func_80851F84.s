glabel func_80851F84
/* 1FD74 80851F84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FD78 80851F88 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1FD7C 80851F8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FD80 80851F90 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1FD84 80851F94 ACA000C0 */  sw      $zero, 0x00C0($a1)         ## 000000C0
/* 1FD88 80851F98 0C21444D */  jal     func_80851134              
/* 1FD8C 80851F9C 24C62420 */  addiu   $a2, $a2, 0x2420           ## $a2 = 04002420
/* 1FD90 80851FA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1FD94 80851FA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FD98 80851FA8 03E00008 */  jr      $ra                        
/* 1FD9C 80851FAC 00000000 */  nop
