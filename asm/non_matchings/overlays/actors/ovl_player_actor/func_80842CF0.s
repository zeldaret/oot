glabel func_80842CF0
/* 10AE0 80842CF0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 10AE4 80842CF4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 10AE8 80842CF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 10AEC 80842CFC 0C210AB1 */  jal     func_80842AC4              
/* 10AF0 80842D00 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 10AF4 80842D04 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 10AF8 80842D08 0C210ADF */  jal     func_80842B7C              
/* 10AFC 80842D0C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 10B00 80842D10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 10B04 80842D14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 10B08 80842D18 03E00008 */  jr      $ra                        
/* 10B0C 80842D1C 00000000 */  nop
