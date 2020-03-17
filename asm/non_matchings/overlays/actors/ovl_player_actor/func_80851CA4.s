glabel func_80851CA4
/* 1FA94 80851CA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FA98 80851CA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FA9C 80851CAC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 1FAA0 80851CB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1FAA4 80851CB4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1FAA8 80851CB8 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 1FAAC 80851CBC 0C028EF0 */  jal     func_800A3BC0              
/* 1FAB0 80851CC0 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1FAB4 80851CC4 10400010 */  beq     $v0, $zero, .L80851D08     
/* 1FAB8 80851CC8 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 1FABC 80851CCC 84EE0850 */  lh      $t6, 0x0850($a3)           ## 00000850
/* 1FAC0 80851CD0 55C0000E */  bnel    $t6, $zero, .L80851D0C     
/* 1FAC4 80851CD4 84E80850 */  lh      $t0, 0x0850($a3)           ## 00000850
/* 1FAC8 80851CD8 94EF0088 */  lhu     $t7, 0x0088($a3)           ## 00000088
/* 1FACC 80851CDC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 1FAD0 80851CE0 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 1FAD4 80851CE4 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 1FAD8 80851CE8 13000007 */  beq     $t8, $zero, .L80851D08     
/* 1FADC 80851CEC 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1FAE0 80851CF0 24C62DB8 */  addiu   $a2, $a2, 0x2DB8           ## $a2 = 04002DB8
/* 1FAE4 80851CF4 0C20C899 */  jal     func_80832264              
/* 1FAE8 80851CF8 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 1FAEC 80851CFC 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 1FAF0 80851D00 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 1FAF4 80851D04 A4F90850 */  sh      $t9, 0x0850($a3)           ## 00000850
.L80851D08:
/* 1FAF8 80851D08 84E80850 */  lh      $t0, 0x0850($a3)           ## 00000850
.L80851D0C:
/* 1FAFC 80851D0C 51000004 */  beql    $t0, $zero, .L80851D20     
/* 1FB00 80851D10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1FB04 80851D14 0C20DC87 */  jal     func_8083721C              
/* 1FB08 80851D18 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 1FB0C 80851D1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80851D20:
/* 1FB10 80851D20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FB14 80851D24 03E00008 */  jr      $ra                        
/* 1FB18 80851D28 00000000 */  nop


