glabel func_80ABAD38
/* 010F8 80ABAD38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 010FC 80ABAD3C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01100 80ABAD40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01104 80ABAD44 3C0480AC */  lui     $a0, %hi(D_80ABB6E4)       ## $a0 = 80AC0000
/* 01108 80ABAD48 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0110C 80ABAD4C 0C00084C */  jal     osSyncPrintf
              
/* 01110 80ABAD50 2484B6E4 */  addiu   $a0, $a0, %lo(D_80ABB6E4)  ## $a0 = 80ABB6E4
/* 01114 80ABAD54 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 01118 80ABAD58 3C0F80AC */  lui     $t7, %hi(func_80ABAD7C)    ## $t7 = 80AC0000
/* 0111C 80ABAD5C 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 01120 80ABAD60 25EFAD7C */  addiu   $t7, $t7, %lo(func_80ABAD7C) ## $t7 = 80ABAD7C
/* 01124 80ABAD64 A44E0262 */  sh      $t6, 0x0262($v0)           ## 00000262
/* 01128 80ABAD68 AC4F0250 */  sw      $t7, 0x0250($v0)           ## 00000250
/* 0112C 80ABAD6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01130 80ABAD70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01134 80ABAD74 03E00008 */  jr      $ra                        
/* 01138 80ABAD78 00000000 */  nop


