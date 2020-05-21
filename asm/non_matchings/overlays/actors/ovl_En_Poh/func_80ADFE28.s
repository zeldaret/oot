glabel func_80ADFE28
/* 020D8 80ADFE28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 020DC 80ADFE2C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 020E0 80ADFE30 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 020E4 80ADFE34 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 020E8 80ADFE38 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 020EC 80ADFE3C C484000C */  lwc1    $f4, 0x000C($a0)           ## 0000000C
/* 020F0 80ADFE40 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 020F4 80ADFE44 46062200 */  add.s   $f8, $f4, $f6              
/* 020F8 80ADFE48 E488000C */  swc1    $f8, 0x000C($a0)           ## 0000000C
/* 020FC 80ADFE4C 0C2B7EA4 */  jal     func_80ADFA90              
/* 02100 80ADFE50 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02104 80ADFE54 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02108 80ADFE58 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 0210C 80ADFE5C 908E029D */  lbu     $t6, 0x029D($a0)           ## 0000029D
/* 02110 80ADFE60 55C10004 */  bnel    $t6, $at, .L80ADFE74       
/* 02114 80ADFE64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02118 80ADFE68 0C2B79F0 */  jal     func_80ADE7C0              
/* 0211C 80ADFE6C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02120 80ADFE70 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADFE74:
/* 02124 80ADFE74 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02128 80ADFE78 03E00008 */  jr      $ra                        
/* 0212C 80ADFE7C 00000000 */  nop
