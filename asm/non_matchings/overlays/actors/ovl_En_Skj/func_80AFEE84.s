glabel func_80AFEE84
/* 00BD4 80AFEE84 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00BD8 80AFEE88 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 00BDC 80AFEE8C 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 00BE0 80AFEE90 44813000 */  mtc1    $at, $f6                   ## $f6 = -8.00
/* 00BE4 80AFEE94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BE8 80AFEE98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BEC 80AFEE9C E4840060 */  swc1    $f4, 0x0060($a0)           ## 00000060
/* 00BF0 80AFEEA0 E4860068 */  swc1    $f6, 0x0068($a0)           ## 00000068
/* 00BF4 80AFEEA4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00BF8 80AFEEA8 0C2BF8AC */  jal     func_80AFE2B0              
/* 00BFC 80AFEEAC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00C00 80AFEEB0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C04 80AFEEB4 0C2BF8CE */  jal     func_80AFE338              
/* 00C08 80AFEEB8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00C0C 80AFEEBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C10 80AFEEC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C14 80AFEEC4 03E00008 */  jr      $ra                        
/* 00C18 80AFEEC8 00000000 */  nop
