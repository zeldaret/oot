glabel func_80B5146C
/* 02ADC 80B5146C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02AE0 80B51470 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02AE4 80B51474 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02AE8 80B51478 0C2D3A90 */  jal     func_80B4EA40              
/* 02AEC 80B5147C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02AF0 80B51480 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02AF4 80B51484 0C2D3B46 */  jal     func_80B4ED18              
/* 02AF8 80B51488 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02AFC 80B5148C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02B00 80B51490 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02B04 80B51494 03E00008 */  jr      $ra                        
/* 02B08 80B51498 00000000 */  nop


