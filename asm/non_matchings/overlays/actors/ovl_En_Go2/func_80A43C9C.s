glabel func_80A43C9C
/* 00F6C 80A43C9C 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00F70 80A43CA0 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00F74 80A43CA4 3C028012 */  lui     $v0, %hi(gBitFlags+4)
/* 00F78 80A43CA8 8C427124 */  lw      $v0, %lo(gBitFlags+4)($v0)
/* 00F7C 80A43CAC 8C6E00A4 */  lw      $t6, 0x00A4($v1)           ## 8015E704
/* 00F80 80A43CB0 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00F84 80A43CB4 3C088012 */  lui     $t0, %hi(gEquipShifts+2)
/* 00F88 80A43CB8 004E7824 */  and     $t7, $v0, $t6              
/* 00F8C 80A43CBC 11E0000B */  beq     $t7, $zero, .L80A43CEC     
/* 00F90 80A43CC0 00000000 */  nop
/* 00F94 80A43CC4 94780F18 */  lhu     $t8, 0x0F18($v1)           ## 8015F578
/* 00F98 80A43CC8 24033041 */  addiu   $v1, $zero, 0x3041         ## $v1 = 00003041
/* 00F9C 80A43CCC 33198000 */  andi    $t9, $t8, 0x8000           ## $t9 = 00000000
/* 00FA0 80A43CD0 13200004 */  beq     $t9, $zero, .L80A43CE4     
/* 00FA4 80A43CD4 00000000 */  nop
/* 00FA8 80A43CD8 24033042 */  addiu   $v1, $zero, 0x3042         ## $v1 = 00003042
/* 00FAC 80A43CDC 03E00008 */  jr      $ra                        
/* 00FB0 80A43CE0 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003042
.L80A43CE4:
/* 00FB4 80A43CE4 03E00008 */  jr      $ra                        
/* 00FB8 80A43CE8 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003042
.L80A43CEC:
/* 00FBC 80A43CEC 910871F2 */  lbu     $t0, %lo(gEquipShifts+2)($t0)
/* 00FC0 80A43CF0 946A009C */  lhu     $t2, 0x009C($v1)           ## 000030DE
/* 00FC4 80A43CF4 01024804 */  sllv    $t1, $v0, $t0              
/* 00FC8 80A43CF8 012A5824 */  and     $t3, $t1, $t2              
/* 00FCC 80A43CFC 5160000C */  beql    $t3, $zero, .L80A43D30     
/* 00FD0 80A43D00 946E0F18 */  lhu     $t6, 0x0F18($v1)           ## 00003F5A
/* 00FD4 80A43D04 946C0F18 */  lhu     $t4, 0x0F18($v1)           ## 00003F5A
/* 00FD8 80A43D08 24033037 */  addiu   $v1, $zero, 0x3037         ## $v1 = 00003037
/* 00FDC 80A43D0C 318D4000 */  andi    $t5, $t4, 0x4000           ## $t5 = 00000000
/* 00FE0 80A43D10 11A00004 */  beq     $t5, $zero, .L80A43D24     
/* 00FE4 80A43D14 00000000 */  nop
/* 00FE8 80A43D18 24033038 */  addiu   $v1, $zero, 0x3038         ## $v1 = 00003038
/* 00FEC 80A43D1C 03E00008 */  jr      $ra                        
/* 00FF0 80A43D20 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003038
.L80A43D24:
/* 00FF4 80A43D24 03E00008 */  jr      $ra                        
/* 00FF8 80A43D28 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003038
.L80A43D2C:
/* 00FFC 80A43D2C 946E0F18 */  lhu     $t6, 0x0F18($v1)           ## 00003F50
.L80A43D30:
/* 01000 80A43D30 24023030 */  addiu   $v0, $zero, 0x3030         ## $v0 = 00003030
/* 01004 80A43D34 31CF1000 */  andi    $t7, $t6, 0x1000           ## $t7 = 00000000
/* 01008 80A43D38 11E0000D */  beq     $t7, $zero, .L80A43D70     
/* 0100C 80A43D3C 00000000 */  nop
/* 01010 80A43D40 A0A0020C */  sb      $zero, 0x020C($a1)         ## 0000020C
/* 01014 80A43D44 A0A0020D */  sb      $zero, 0x020D($a1)         ## 0000020D
/* 01018 80A43D48 94780F18 */  lhu     $t8, 0x0F18($v1)           ## 00003F50
/* 0101C 80A43D4C 24033032 */  addiu   $v1, $zero, 0x3032         ## $v1 = 00003032
/* 01020 80A43D50 33190400 */  andi    $t9, $t8, 0x0400           ## $t9 = 00000000
/* 01024 80A43D54 13200004 */  beq     $t9, $zero, .L80A43D68     
/* 01028 80A43D58 00000000 */  nop
/* 0102C 80A43D5C 24033033 */  addiu   $v1, $zero, 0x3033         ## $v1 = 00003033
/* 01030 80A43D60 03E00008 */  jr      $ra                        
/* 01034 80A43D64 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003033
.L80A43D68:
/* 01038 80A43D68 03E00008 */  jr      $ra                        
/* 0103C 80A43D6C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003033
.L80A43D70:
/* 01040 80A43D70 03E00008 */  jr      $ra                        
/* 01044 80A43D74 00000000 */  nop
