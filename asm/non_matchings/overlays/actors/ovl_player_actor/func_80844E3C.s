glabel func_80844E3C
/* 12C2C 80844E3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 12C30 80844E40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 12C34 80844E44 3C063CA3 */  lui     $a2, 0x3CA3                ## $a2 = 3CA30000
/* 12C38 80844E48 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3CA3D70A
/* 12C3C 80844E4C 24840858 */  addiu   $a0, $a0, 0x0858           ## $a0 = 00000858
/* 12C40 80844E50 0C01DE80 */  jal     Math_ApproxF
              
/* 12C44 80844E54 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 12C48 80844E58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 12C4C 80844E5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 12C50 80844E60 03E00008 */  jr      $ra                        
/* 12C54 80844E64 00000000 */  nop


