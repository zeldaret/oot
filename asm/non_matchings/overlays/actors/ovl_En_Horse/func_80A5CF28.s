glabel func_80A5CF28
/* 01C38 80A5CF28 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01C3C 80A5CF2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C40 80A5CF30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C44 80A5CF34 E48401C4 */  swc1    $f4, 0x01C4($a0)           ## 000001C4
/* 01C48 80A5CF38 0C2973D9 */  jal     func_80A5CF64              
/* 01C4C 80A5CF3C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01C50 80A5CF40 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01C54 80A5CF44 2401EFFF */  addiu   $at, $zero, 0xEFFF         ## $at = FFFFEFFF
/* 01C58 80A5CF48 8C8E01F0 */  lw      $t6, 0x01F0($a0)           ## 000001F0
/* 01C5C 80A5CF4C 01C17824 */  and     $t7, $t6, $at              
/* 01C60 80A5CF50 AC8F01F0 */  sw      $t7, 0x01F0($a0)           ## 000001F0
/* 01C64 80A5CF54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01C68 80A5CF58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C6C 80A5CF5C 03E00008 */  jr      $ra                        
/* 01C70 80A5CF60 00000000 */  nop


