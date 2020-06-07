glabel func_80AB2570
/* 017E0 80AB2570 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 017E4 80AB2574 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 017E8 80AB2578 908E014D */  lbu     $t6, 0x014D($a0)           ## 0000014D
/* 017EC 80AB257C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 017F0 80AB2580 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 017F4 80AB2584 15C10009 */  bne     $t6, $at, .L80AB25AC       
/* 017F8 80AB2588 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 017FC 80AB258C 3C054110 */  lui     $a1, 0x4110                ## $a1 = 41100000
/* 01800 80AB2590 0C0295B2 */  jal     func_800A56C8              
/* 01804 80AB2594 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01808 80AB2598 10400004 */  beq     $v0, $zero, .L80AB25AC     
/* 0180C 80AB259C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01810 80AB25A0 24C400E4 */  addiu   $a0, $a2, 0x00E4           ## $a0 = 000000E4
/* 01814 80AB25A4 0C01E245 */  jal     func_80078914              
/* 01818 80AB25A8 24050802 */  addiu   $a1, $zero, 0x0802         ## $a1 = 00000802
.L80AB25AC:
/* 0181C 80AB25AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01820 80AB25B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01824 80AB25B4 03E00008 */  jr      $ra                        
/* 01828 80AB25B8 00000000 */  nop
