glabel func_80ACB6EC
/* 017CC 80ACB6EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 017D0 80ACB6F0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 017D4 80ACB6F4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 017D8 80ACB6F8 0C2B28EE */  jal     func_80ACA3B8              
/* 017DC 80ACB6FC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 017E0 80ACB700 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 017E4 80ACB704 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 017E8 80ACB708 240610C4 */  addiu   $a2, $zero, 0x10C4         ## $a2 = 000010C4
/* 017EC 80ACB70C 3C0743B4 */  lui     $a3, 0x43B4                ## $a3 = 43B40000
/* 017F0 80ACB710 0C2B28FD */  jal     func_80ACA3F4              
/* 017F4 80ACB714 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 017F8 80ACB718 50400008 */  beql    $v0, $zero, .L80ACB73C     
/* 017FC 80ACB71C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01800 80ACB720 0C03D719 */  jal     func_800F5C64              
/* 01804 80ACB724 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 01808 80ACB728 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 0180C 80ACB72C 3C0E80AD */  lui     $t6, %hi(func_80ACB680)    ## $t6 = 80AD0000
/* 01810 80ACB730 25CEB680 */  addiu   $t6, $t6, %lo(func_80ACB680) ## $t6 = 80ACB680
/* 01814 80ACB734 ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
/* 01818 80ACB738 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACB73C:
/* 0181C 80ACB73C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01820 80ACB740 03E00008 */  jr      $ra                        
/* 01824 80ACB744 00000000 */  nop


