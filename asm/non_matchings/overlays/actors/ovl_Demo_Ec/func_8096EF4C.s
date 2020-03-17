glabel func_8096EF4C
/* 01A9C 8096EF4C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01AA0 8096EF50 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 01AA4 8096EF54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01AA8 8096EF58 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01AAC 8096EF5C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01AB0 8096EF60 14A10016 */  bne     $a1, $at, .L8096EFBC       
/* 01AB4 8096EF64 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 01AB8 8096EF68 0C25BBB7 */  jal     func_8096EEDC              
/* 01ABC 8096EF6C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01AC0 8096EF70 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01AC4 8096EF74 0002C100 */  sll     $t8, $v0,  4               
/* 01AC8 8096EF78 0018CF02 */  srl     $t9, $t8, 28               
/* 01ACC 8096EF7C 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 01AD0 8096EF80 00194080 */  sll     $t0, $t9,  2               
/* 01AD4 8096EF84 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 01AD8 8096EF88 248E0008 */  addiu   $t6, $a0, 0x0008           ## $t6 = 00000008
/* 01ADC 8096EF8C 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 01AE0 8096EF90 ACAE0000 */  sw      $t6, 0x0000($a1)           ## 00000000
/* 01AE4 8096EF94 01284821 */  addu    $t1, $t1, $t0              
/* 01AE8 8096EF98 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01AEC 8096EF9C AC8F0000 */  sw      $t7, 0x0000($a0)           ## 00000000
/* 01AF0 8096EFA0 8D296FA8 */  lw      $t1, 0x6FA8($t1)           ## 80166FA8
/* 01AF4 8096EFA4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01AF8 8096EFA8 00415024 */  and     $t2, $v0, $at              
/* 01AFC 8096EFAC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01B00 8096EFB0 012A5821 */  addu    $t3, $t1, $t2              
/* 01B04 8096EFB4 01616021 */  addu    $t4, $t3, $at              
/* 01B08 8096EFB8 AC8C0004 */  sw      $t4, 0x0004($a0)           ## 00000004
.L8096EFBC:
/* 01B0C 8096EFBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B10 8096EFC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01B14 8096EFC4 03E00008 */  jr      $ra                        
/* 01B18 8096EFC8 00000000 */  nop


