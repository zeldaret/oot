glabel func_809856AC
/* 00ACC 809856AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AD0 809856B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AD4 809856B4 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00AD8 809856B8 51C0000C */  beql    $t6, $zero, .L809856EC     
/* 00ADC 809856BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AE0 809856C0 8CA21DA4 */  lw      $v0, 0x1DA4($a1)           ## 00001DA4
/* 00AE4 809856C4 50400009 */  beql    $v0, $zero, .L809856EC     
/* 00AE8 809856C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AEC 809856CC 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 00AF0 809856D0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00AF4 809856D4 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 00AF8 809856D8 55E10004 */  bnel    $t7, $at, .L809856EC       
/* 00AFC 809856DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B00 809856E0 0C2614ED */  jal     func_809853B4              
/* 00B04 809856E4 AC980260 */  sw      $t8, 0x0260($a0)           ## 00000260
/* 00B08 809856E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809856EC:
/* 00B0C 809856EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B10 809856F0 03E00008 */  jr      $ra                        
/* 00B14 809856F4 00000000 */  nop
