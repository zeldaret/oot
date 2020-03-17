glabel func_809CDFC4
/* 00F54 809CDFC4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F58 809CDFC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F5C 809CDFCC 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 00F60 809CDFD0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00F64 809CDFD4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00F68 809CDFD8 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 00F6C 809CDFDC 35F80010 */  ori     $t8, $t7, 0x0010           ## $t8 = 00000010
/* 00F70 809CDFE0 A48E0254 */  sh      $t6, 0x0254($a0)           ## 00000254
/* 00F74 809CDFE4 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 00F78 809CDFE8 E48401C8 */  swc1    $f4, 0x01C8($a0)           ## 000001C8
/* 00F7C 809CDFEC 0C27343E */  jal     func_809CD0F8              
/* 00F80 809CDFF0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00F84 809CDFF4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00F88 809CDFF8 3C19809D */  lui     $t9, %hi(func_809CE014)    ## $t9 = 809D0000
/* 00F8C 809CDFFC 2739E014 */  addiu   $t9, $t9, %lo(func_809CE014) ## $t9 = 809CE014
/* 00F90 809CE000 AC990250 */  sw      $t9, 0x0250($a0)           ## 00000250
/* 00F94 809CE004 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F98 809CE008 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F9C 809CE00C 03E00008 */  jr      $ra                        
/* 00FA0 809CE010 00000000 */  nop


