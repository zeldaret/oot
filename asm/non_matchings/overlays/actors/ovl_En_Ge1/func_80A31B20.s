glabel func_80A31B20
/* 011B0 80A31B20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 011B4 80A31B24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 011B8 80A31B28 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 011BC 80A31B2C 0C00BC65 */  jal     func_8002F194              
/* 011C0 80A31B30 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 011C4 80A31B34 1040000A */  beq     $v0, $zero, .L80A31B60     
/* 011C8 80A31B38 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 011CC 80A31B3C 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 011D0 80A31B40 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 011D4 80A31B44 3C0E80A3 */  lui     $t6, %hi(func_80A31A5C)    ## $t6 = 80A30000
/* 011D8 80A31B48 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 011DC 80A31B4C 25CE1A5C */  addiu   $t6, $t6, %lo(func_80A31A5C) ## $t6 = 80A31A5C
/* 011E0 80A31B50 01E1C024 */  and     $t8, $t7, $at              
/* 011E4 80A31B54 AC8E02B4 */  sw      $t6, 0x02B4($a0)           ## 000002B4
/* 011E8 80A31B58 10000004 */  beq     $zero, $zero, .L80A31B6C   
/* 011EC 80A31B5C AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
.L80A31B60:
/* 011F0 80A31B60 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 011F4 80A31B64 0C00BCB3 */  jal     func_8002F2CC              
/* 011F8 80A31B68 3C064348 */  lui     $a2, 0x4348                ## $a2 = 43480000
.L80A31B6C:
/* 011FC 80A31B6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01200 80A31B70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01204 80A31B74 03E00008 */  jr      $ra                        
/* 01208 80A31B78 00000000 */  nop
