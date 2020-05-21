glabel func_809CDBCC
/* 00B5C 809CDBCC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B60 809CDBD0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B64 809CDBD4 908E0256 */  lbu     $t6, 0x0256($a0)           ## 00000256
/* 00B68 809CDBD8 3C18809D */  lui     $t8, %hi(D_809CE380)       ## $t8 = 809D0000
/* 00B6C 809CDBDC 2718E380 */  addiu   $t8, $t8, %lo(D_809CE380)  ## $t8 = 809CE380
/* 00B70 809CDBE0 000E7880 */  sll     $t7, $t6,  2               
/* 00B74 809CDBE4 01EE7821 */  addu    $t7, $t7, $t6              
/* 00B78 809CDBE8 000F7880 */  sll     $t7, $t7,  2               
/* 00B7C 809CDBEC 01F82821 */  addu    $a1, $t7, $t8              
/* 00B80 809CDBF0 0C27341C */  jal     func_809CD070              
/* 00B84 809CDBF4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B88 809CDBF8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B8C 809CDBFC 3C19809D */  lui     $t9, %hi(func_809CDC18)    ## $t9 = 809D0000
/* 00B90 809CDC00 2739DC18 */  addiu   $t9, $t9, %lo(func_809CDC18) ## $t9 = 809CDC18
/* 00B94 809CDC04 AC990250 */  sw      $t9, 0x0250($a0)           ## 00000250
/* 00B98 809CDC08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B9C 809CDC0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BA0 809CDC10 03E00008 */  jr      $ra                        
/* 00BA4 809CDC14 00000000 */  nop
