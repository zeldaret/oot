glabel func_80A6E6B0
/* 00310 80A6E6B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00314 80A6E6B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00318 80A6E6B8 3C0780A7 */  lui     $a3, %hi(func_80A6E5EC)    ## $a3 = 80A70000
/* 0031C 80A6E6BC 24E7E5EC */  addiu   $a3, $a3, %lo(func_80A6E5EC) ## $a3 = 80A6E5EC
/* 00320 80A6E6C0 0C29B94F */  jal     func_80A6E53C              
/* 00324 80A6E6C4 240610B6 */  addiu   $a2, $zero, 0x10B6         ## $a2 = 000010B6
/* 00328 80A6E6C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0032C 80A6E6CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00330 80A6E6D0 03E00008 */  jr      $ra                        
/* 00334 80A6E6D4 00000000 */  nop


