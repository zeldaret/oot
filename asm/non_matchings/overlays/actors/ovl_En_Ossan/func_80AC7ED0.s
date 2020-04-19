.rdata
glabel D_80AC941C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC942C
    .asciz "../z_en_oB1.c"
    .balign 4

.text
glabel func_80AC7ED0
/* 05230 80AC7ED0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 05234 80AC7ED4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05238 80AC7ED8 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 0523C 80AC7EDC AFA50044 */  sw      $a1, 0x0044($sp)           
/* 05240 80AC7EE0 AFA60048 */  sw      $a2, 0x0048($sp)           
/* 05244 80AC7EE4 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 05248 80AC7EE8 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 0524C 80AC7EEC 3C0680AD */  lui     $a2, %hi(D_80AC941C)       ## $a2 = 80AD0000
/* 05250 80AC7EF0 24C6941C */  addiu   $a2, $a2, %lo(D_80AC941C)  ## $a2 = 80AC941C
/* 05254 80AC7EF4 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFE4
/* 05258 80AC7EF8 24071102 */  addiu   $a3, $zero, 0x1102         ## $a3 = 00001102
/* 0525C 80AC7EFC 0C031AB1 */  jal     Graph_OpenDisps              
/* 05260 80AC7F00 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 05264 80AC7F04 8FAF0044 */  lw      $t7, 0x0044($sp)           
/* 05268 80AC7F08 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 0526C 80AC7F0C 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 05270 80AC7F10 15E10037 */  bne     $t7, $at, .L80AC7FF0       
/* 05274 80AC7F14 8FA90040 */  lw      $t1, 0x0040($sp)           
/* 05278 80AC7F18 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 0527C 80AC7F1C 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 05280 80AC7F20 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 05284 80AC7F24 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 05288 80AC7F28 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 0528C 80AC7F2C 37390018 */  ori     $t9, $t9, 0x0018           ## $t9 = DB060018
/* 05290 80AC7F30 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 05294 80AC7F34 80AA01E9 */  lb      $t2, 0x01E9($a1)           ## 000001E9
/* 05298 80AC7F38 24040044 */  addiu   $a0, $zero, 0x0044         ## $a0 = 00000044
/* 0529C 80AC7F3C 3C060001 */  lui     $a2, 0x0001                ## $a2 = 00010000
/* 052A0 80AC7F40 01440019 */  multu   $t2, $a0                   
/* 052A4 80AC7F44 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 052A8 80AC7F48 00005812 */  mflo    $t3                        
/* 052AC 80AC7F4C 012B6021 */  addu    $t4, $t1, $t3              
/* 052B0 80AC7F50 01866821 */  addu    $t5, $t4, $a2              
/* 052B4 80AC7F54 8DAE17B4 */  lw      $t6, 0x17B4($t5)           ## 000017B4
/* 052B8 80AC7F58 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 052BC 80AC7F5C 25AD2820 */  addiu   $t5, $t5, 0x2820           ## $t5 = 06002820
/* 052C0 80AC7F60 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 052C4 80AC7F64 80AF01E9 */  lb      $t7, 0x01E9($a1)           ## 000001E9
/* 052C8 80AC7F68 8FAE0048 */  lw      $t6, 0x0048($sp)           
/* 052CC 80AC7F6C 01E40019 */  multu   $t7, $a0                   
/* 052D0 80AC7F70 3C0480AD */  lui     $a0, %hi(D_80AC8EAC)       ## $a0 = 80AD0000
/* 052D4 80AC7F74 0000C012 */  mflo    $t8                        
/* 052D8 80AC7F78 0138C821 */  addu    $t9, $t1, $t8              
/* 052DC 80AC7F7C 03265021 */  addu    $t2, $t9, $a2              
/* 052E0 80AC7F80 8D4B17B4 */  lw      $t3, 0x17B4($t2)           ## 000017B4
/* 052E4 80AC7F84 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 052E8 80AC7F88 37180028 */  ori     $t8, $t8, 0x0028           ## $t8 = DB060028
/* 052EC 80AC7F8C 01616021 */  addu    $t4, $t3, $at              
/* 052F0 80AC7F90 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 052F4 80AC7F94 AC2C6FC0 */  sw      $t4, %lo(gSegments+0x18)($at)
/* 052F8 80AC7F98 ADCD0000 */  sw      $t5, 0x0000($t6)           ## 00000000
/* 052FC 80AC7F9C 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 05300 80AC7FA0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 05304 80AC7FA4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 05308 80AC7FA8 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 0530C 80AC7FAC AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 05310 80AC7FB0 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 05314 80AC7FB4 84B901F2 */  lh      $t9, 0x01F2($a1)           ## 000001F2
/* 05318 80AC7FB8 3C0F8016 */  lui     $t7, %hi(gSegments)
/* 0531C 80AC7FBC 00195080 */  sll     $t2, $t9,  2               
/* 05320 80AC7FC0 008A2021 */  addu    $a0, $a0, $t2              
/* 05324 80AC7FC4 8C848EAC */  lw      $a0, %lo(D_80AC8EAC)($a0)  
/* 05328 80AC7FC8 00046100 */  sll     $t4, $a0,  4               
/* 0532C 80AC7FCC 000C6F02 */  srl     $t5, $t4, 28               
/* 05330 80AC7FD0 000D7080 */  sll     $t6, $t5,  2               
/* 05334 80AC7FD4 01EE7821 */  addu    $t7, $t7, $t6              
/* 05338 80AC7FD8 8DEF6FA8 */  lw      $t7, %lo(gSegments)($t7)
/* 0533C 80AC7FDC 00815824 */  and     $t3, $a0, $at              
/* 05340 80AC7FE0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05344 80AC7FE4 016FC021 */  addu    $t8, $t3, $t7              
/* 05348 80AC7FE8 0301C821 */  addu    $t9, $t8, $at              
/* 0534C 80AC7FEC AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
.L80AC7FF0:
/* 05350 80AC7FF0 3C0680AD */  lui     $a2, %hi(D_80AC942C)       ## $a2 = 80AD0000
/* 05354 80AC7FF4 24C6942C */  addiu   $a2, $a2, %lo(D_80AC942C)  ## $a2 = 80AC942C
/* 05358 80AC7FF8 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFE4
/* 0535C 80AC7FFC 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 05360 80AC8000 0C031AD5 */  jal     Graph_CloseDisps              
/* 05364 80AC8004 24071116 */  addiu   $a3, $zero, 0x1116         ## $a3 = 00001116
/* 05368 80AC8008 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0536C 80AC800C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 05370 80AC8010 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 05374 80AC8014 03E00008 */  jr      $ra                        
/* 05378 80AC8018 00000000 */  nop
