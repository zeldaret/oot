glabel func_80AEC070
/* 01460 80AEC070 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01464 80AEC074 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01468 80AEC078 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0146C 80AEC07C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01470 80AEC080 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01474 80AEC084 0C2BAD16 */  jal     func_80AEB458              
/* 01478 80AEC088 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 0147C 80AEC08C 10400005 */  beq     $v0, $zero, .L80AEC0A4     
/* 01480 80AEC090 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 01484 80AEC094 51C00004 */  beql    $t6, $zero, .L80AEC0A8     
/* 01488 80AEC098 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0148C 80AEC09C 0C00B55C */  jal     Actor_Kill
              
/* 01490 80AEC0A0 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80AEC0A4:
/* 01494 80AEC0A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEC0A8:
/* 01498 80AEC0A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0149C 80AEC0AC 03E00008 */  jr      $ra                        
/* 014A0 80AEC0B0 00000000 */  nop
