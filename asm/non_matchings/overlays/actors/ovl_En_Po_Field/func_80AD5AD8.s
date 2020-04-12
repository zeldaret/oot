glabel func_80AD5AD8
/* 01FD8 80AD5AD8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01FDC 80AD5ADC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01FE0 80AD5AE0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01FE4 80AD5AE4 2405FFF3 */  addiu   $a1, $zero, 0xFFF3         ## $a1 = FFFFFFF3
/* 01FE8 80AD5AE8 0C2B5535 */  jal     func_80AD54D4              
/* 01FEC 80AD5AEC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01FF0 80AD5AF0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01FF4 80AD5AF4 908E0217 */  lbu     $t6, 0x0217($a0)           ## 00000217
/* 01FF8 80AD5AF8 55C00004 */  bnel    $t6, $zero, .L80AD5B0C     
/* 01FFC 80AD5AFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02000 80AD5B00 0C2B4F5A */  jal     func_80AD3D68              
/* 02004 80AD5B04 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02008 80AD5B08 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AD5B0C:
/* 0200C 80AD5B0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02010 80AD5B10 03E00008 */  jr      $ra                        
/* 02014 80AD5B14 00000000 */  nop
