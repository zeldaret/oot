glabel func_80832C2C
/* 00A1C 80832C2C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A20 80832C30 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A24 80832C34 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A28 80832C38 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00A2C 80832C3C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00A30 80832C40 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00A34 80832C44 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 00A38 80832C48 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00A3C 80832C4C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00A40 80832C50 E7A00014 */  swc1    $f0, 0x0014($sp)           
/* 00A44 80832C54 0C028FC2 */  jal     func_800A3F08              
/* 00A48 80832C58 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00A4C 80832C5C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A50 80832C60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A54 80832C64 03E00008 */  jr      $ra                        
/* 00A58 80832C68 00000000 */  nop


