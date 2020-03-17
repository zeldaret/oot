glabel func_80A34A20
/* 00400 80A34A20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00404 80A34A24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00408 80A34A28 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0040C 80A34A2C 0C00BCCD */  jal     func_8002F334              
/* 00410 80A34A30 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00414 80A34A34 1040000C */  beq     $v0, $zero, .L80A34A68     
/* 00418 80A34A38 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0041C 80A34A3C 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 00420 80A34A40 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00424 80A34A44 3C0E80A3 */  lui     $t6, %hi(func_80A34A80)    ## $t6 = 80A30000
/* 00428 80A34A48 3C0F80A3 */  lui     $t7, %hi(func_80A34D68)    ## $t7 = 80A30000
/* 0042C 80A34A4C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00430 80A34A50 25CE4A80 */  addiu   $t6, $t6, %lo(func_80A34A80) ## $t6 = 80A34A80
/* 00434 80A34A54 25EF4D68 */  addiu   $t7, $t7, %lo(func_80A34D68) ## $t7 = 80A34D68
/* 00438 80A34A58 0301C824 */  and     $t9, $t8, $at              
/* 0043C 80A34A5C AC8E0310 */  sw      $t6, 0x0310($a0)           ## 00000310
/* 00440 80A34A60 AC8F0130 */  sw      $t7, 0x0130($a0)           ## 00000130
/* 00444 80A34A64 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
.L80A34A68:
/* 00448 80A34A68 0C28D1FD */  jal     func_80A347F4              
/* 0044C 80A34A6C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00450 80A34A70 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00454 80A34A74 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00458 80A34A78 03E00008 */  jr      $ra                        
/* 0045C 80A34A7C 00000000 */  nop


