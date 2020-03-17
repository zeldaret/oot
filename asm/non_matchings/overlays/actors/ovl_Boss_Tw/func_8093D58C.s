glabel func_8093D58C
/* 048BC 8093D58C AFA50004 */  sw      $a1, 0x0004($sp)           
/* 048C0 8093D590 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 048C4 8093D594 3C01C4FA */  lui     $at, 0xC4FA                ## $at = C4FA0000
/* 048C8 8093D598 44812000 */  mtc1    $at, $f4                   ## $f4 = -2000.00
/* 048CC 8093D59C 3C0E8094 */  lui     $t6, %hi(func_8093D5C0)    ## $t6 = 80940000
/* 048D0 8093D5A0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 048D4 8093D5A4 25CED5C0 */  addiu   $t6, $t6, %lo(func_8093D5C0) ## $t6 = 8093D5C0
/* 048D8 8093D5A8 01E1C024 */  and     $t8, $t7, $at              
/* 048DC 8093D5AC AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 048E0 8093D5B0 A0800564 */  sb      $zero, 0x0564($a0)         ## 00000564
/* 048E4 8093D5B4 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 048E8 8093D5B8 03E00008 */  jr      $ra                        
/* 048EC 8093D5BC E4840028 */  swc1    $f4, 0x0028($a0)           ## 00000028


