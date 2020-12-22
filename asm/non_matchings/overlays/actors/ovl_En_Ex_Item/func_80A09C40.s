.rdata
glabel D_80A0A048
    .asciz "../z_en_ex_item.c"
    .balign 4

glabel D_80A0A05C
    .asciz "../z_en_ex_item.c"
    .balign 4

glabel D_80A0A070
    .asciz "../z_en_ex_item.c"
    .balign 4

.text
glabel func_80A09C40
/* 00DA0 80A09C40 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00DA4 80A09C44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DA8 80A09C48 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00DAC 80A09C4C AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00DB0 80A09C50 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00DB4 80A09C54 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 00DB8 80A09C58 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00DBC 80A09C5C 3C0680A1 */  lui     $a2, %hi(D_80A0A048)       ## $a2 = 80A10000
/* 00DC0 80A09C60 24C6A048 */  addiu   $a2, $a2, %lo(D_80A0A048)  ## $a2 = 80A0A048
/* 00DC4 80A09C64 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFEC
/* 00DC8 80A09C68 24070370 */  addiu   $a3, $zero, 0x0370         ## $a3 = 00000370
/* 00DCC 80A09C6C 0C031AB1 */  jal     Graph_OpenDisps              
/* 00DD0 80A09C70 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00DD4 80A09C74 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 00DD8 80A09C78 0C025183 */  jal     func_8009460C              
/* 00DDC 80A09C7C 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00DE0 80A09C80 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00DE4 80A09C84 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00DE8 80A09C88 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 00DEC 80A09C8C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00DF0 80A09C90 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00DF4 80A09C94 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00DF8 80A09C98 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 00DFC 80A09C9C 3C0580A1 */  lui     $a1, %hi(D_80A0A05C)       ## $a1 = 80A10000
/* 00E00 80A09CA0 24A5A05C */  addiu   $a1, $a1, %lo(D_80A0A05C)  ## $a1 = 80A0A05C
/* 00E04 80A09CA4 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 00E08 80A09CA8 24060377 */  addiu   $a2, $zero, 0x0377         ## $a2 = 00000377
/* 00E0C 80A09CAC 0C0346A2 */  jal     Matrix_NewMtx              
/* 00E10 80A09CB0 AFA20030 */  sw      $v0, 0x0030($sp)           
/* 00E14 80A09CB4 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 00E18 80A09CB8 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00E1C 80A09CBC 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 00E20 80A09CC0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00E24 80A09CC4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00E28 80A09CC8 3C0480A1 */  lui     $a0, %hi(D_80A09E08)       ## $a0 = 80A10000
/* 00E2C 80A09CCC 3C198016 */  lui     $t9, %hi(gSegments)
/* 00E30 80A09CD0 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00E34 80A09CD4 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 00E38 80A09CD8 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00E3C 80A09CDC 8FAB0050 */  lw      $t3, 0x0050($sp)           
/* 00E40 80A09CE0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00E44 80A09CE4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00E48 80A09CE8 000B6080 */  sll     $t4, $t3,  2               
/* 00E4C 80A09CEC 008C2021 */  addu    $a0, $a0, $t4              
/* 00E50 80A09CF0 8C849E08 */  lw      $a0, %lo(D_80A09E08)($a0)  
/* 00E54 80A09CF4 3C0C0404 */  lui     $t4, %hi(D_0403F070)                ## $t4 = 04040000
/* 00E58 80A09CF8 258CF070 */  addiu   $t4, $t4, %lo(D_0403F070)           ## $t4 = 0403F070
/* 00E5C 80A09CFC 00047100 */  sll     $t6, $a0,  4               
/* 00E60 80A09D00 000E7F02 */  srl     $t7, $t6, 28               
/* 00E64 80A09D04 000FC080 */  sll     $t8, $t7,  2               
/* 00E68 80A09D08 0338C821 */  addu    $t9, $t9, $t8              
/* 00E6C 80A09D0C 8F396FA8 */  lw      $t9, %lo(gSegments)($t9)
/* 00E70 80A09D10 00816824 */  and     $t5, $a0, $at              
/* 00E74 80A09D14 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00E78 80A09D18 01B94021 */  addu    $t0, $t5, $t9              
/* 00E7C 80A09D1C 01014821 */  addu    $t1, $t0, $at              
/* 00E80 80A09D20 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00E84 80A09D24 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00E88 80A09D28 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 00E8C 80A09D2C 3C0680A1 */  lui     $a2, %hi(D_80A0A070)       ## $a2 = 80A10000
/* 00E90 80A09D30 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00E94 80A09D34 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 00E98 80A09D38 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00E9C 80A09D3C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00EA0 80A09D40 8FAE004C */  lw      $t6, 0x004C($sp)           
/* 00EA4 80A09D44 24C6A070 */  addiu   $a2, $a2, %lo(D_80A0A070)  ## $a2 = 80A0A070
/* 00EA8 80A09D48 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFEC
/* 00EAC 80A09D4C 2407037D */  addiu   $a3, $zero, 0x037D         ## $a3 = 0000037D
/* 00EB0 80A09D50 0C031AD5 */  jal     Graph_CloseDisps              
/* 00EB4 80A09D54 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 00EB8 80A09D58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EBC 80A09D5C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00EC0 80A09D60 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00EC4 80A09D64 03E00008 */  jr      $ra                        
/* 00EC8 80A09D68 00000000 */  nop
