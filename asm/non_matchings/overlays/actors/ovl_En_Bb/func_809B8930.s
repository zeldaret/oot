glabel func_809B8930
/* 00650 809B8930 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00654 809B8934 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00658 809B8938 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0065C 809B893C 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 00660 809B8940 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00664 809B8944 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00668 809B8948 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0066C 809B894C 3C05809C */  lui     $a1, %hi(func_809B8984)    ## $a1 = 809C0000
/* 00670 809B8950 0301C824 */  and     $t9, $t8, $at              
/* 00674 809B8954 AC8E0250 */  sw      $t6, 0x0250($a0)           ## 00000250
/* 00678 809B8958 AC8F025C */  sw      $t7, 0x025C($a0)           ## 0000025C
/* 0067C 809B895C AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 00680 809B8960 24A58984 */  addiu   $a1, $a1, %lo(func_809B8984) ## $a1 = 809B8984
/* 00684 809B8964 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
/* 00688 809B8968 E480006C */  swc1    $f0, 0x006C($a0)           ## 0000006C
/* 0068C 809B896C 0C26E0B8 */  jal     func_809B82E0              
/* 00690 809B8970 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 00694 809B8974 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00698 809B8978 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0069C 809B897C 03E00008 */  jr      $ra                        
/* 006A0 809B8980 00000000 */  nop
