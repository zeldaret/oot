glabel func_80AEB220
/* 00610 80AEB220 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00614 80AEB224 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00618 80AEB228 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0061C 80AEB22C 0C2BABCE */  jal     func_80AEAF38              
/* 00620 80AEB230 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00624 80AEB234 10400007 */  beq     $v0, $zero, .L80AEB254     
/* 00628 80AEB238 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0062C 80AEB23C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00630 80AEB240 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00634 80AEB244 55C10004 */  bnel    $t6, $at, .L80AEB258       
/* 00638 80AEB248 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0063C 80AEB24C 0C2BAC76 */  jal     func_80AEB1D8              
/* 00640 80AEB250 00000000 */  nop
.L80AEB254:
/* 00644 80AEB254 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEB258:
/* 00648 80AEB258 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0064C 80AEB25C 03E00008 */  jr      $ra                        
/* 00650 80AEB260 00000000 */  nop
