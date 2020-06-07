glabel func_809CD79C
/* 0072C 809CD79C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00730 809CD7A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00734 809CD7A4 908E0256 */  lbu     $t6, 0x0256($a0)           ## 00000256
/* 00738 809CD7A8 3C18809D */  lui     $t8, %hi(D_809CE344)       ## $t8 = 809D0000
/* 0073C 809CD7AC 2718E344 */  addiu   $t8, $t8, %lo(D_809CE344)  ## $t8 = 809CE344
/* 00740 809CD7B0 000E7880 */  sll     $t7, $t6,  2               
/* 00744 809CD7B4 01EE7821 */  addu    $t7, $t7, $t6              
/* 00748 809CD7B8 000F7880 */  sll     $t7, $t7,  2               
/* 0074C 809CD7BC 01F82821 */  addu    $a1, $t7, $t8              
/* 00750 809CD7C0 0C27341C */  jal     func_809CD070              
/* 00754 809CD7C4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00758 809CD7C8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0075C 809CD7CC 3C19809D */  lui     $t9, %hi(func_809CD7E8)    ## $t9 = 809D0000
/* 00760 809CD7D0 2739D7E8 */  addiu   $t9, $t9, %lo(func_809CD7E8) ## $t9 = 809CD7E8
/* 00764 809CD7D4 AC990250 */  sw      $t9, 0x0250($a0)           ## 00000250
/* 00768 809CD7D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0076C 809CD7DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00770 809CD7E0 03E00008 */  jr      $ra                        
/* 00774 809CD7E4 00000000 */  nop
